package com.yuanlrc.base.service.admin;


import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.dao.admin.ReadRoomDao;
import com.yuanlrc.base.dao.admin.SeatDao;
import com.yuanlrc.base.dao.admin.SeatOrderDao;
import com.yuanlrc.base.dto.SeatDTO;
import com.yuanlrc.base.entity.admin.ReadingRoom;
import com.yuanlrc.base.entity.admin.Seat;
import com.yuanlrc.base.entity.admin.SeatOrder;
import com.yuanlrc.base.entity.admin.TimeEnum;
import com.yuanlrc.base.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class SeatService {

    @Autowired
    private SeatDao seatDao;

    @Autowired
    private ReadRoomDao readRoomDao;

    @Autowired
    private SeatOrderDao seatOrderDao;


    /**
     * 根据座位id查询
     * @param id
     * @return
     */
    public Seat find(Long id){
        return seatDao.find(id);
    }

    /**
     * 保存
     * @param seat
     * @return
     */
    public Seat save(Seat seat) {
        return seatDao.save(seat);
    }


    public PageBean<SeatDTO> findList(ReadingRoom readingRoom, PageBean<SeatDTO> pageBean){
        ExampleMatcher withMatcher = ExampleMatcher.matching().withMatcher("name", ExampleMatcher.GenericPropertyMatchers.contains());
        withMatcher = withMatcher.withIgnorePaths("row","lie");
        Example<ReadingRoom> example = Example.of(readingRoom, withMatcher);
        Pageable pageable = PageRequest.of(pageBean.getCurrentPage()-1, pageBean.getPageSize());
        Page<ReadingRoom> findAll = readRoomDao.findAll(example, pageable);

        List<SeatDTO> dtos = findAll.stream().map(o -> {

            List<Seat> seats = seatDao.findByReadingRoomId(o.getId());
            SeatDTO seatDTO = new SeatDTO();
            seatDTO.setReadingRoom(o);
            seatDTO.setCreateTime(!seats.isEmpty() ? seats.get(0).getCreateTime() : null);//前端要判断 若为空则显示座位还没创建
            return seatDTO;
        }).collect(Collectors.toList());


        pageBean.setContent(dtos);
        pageBean.setTotal(findAll.getTotalElements());
        pageBean.setTotalPage(findAll.getTotalPages());
        return pageBean;
    }

    public List<Seat> findByReadingRoomId(Long readRoomId) {
        return seatDao.findByReadingRoomId(readRoomId);
    }

    /**
     * list存储座位
     * @param seats
     * @return
     */
    public List<Seat> saveAll(List<Seat> seats) {
        return seatDao.saveAll(seats);
    }


    /**
     * 判断座位是否已生成
     * @param id
     * @return
     */
    public boolean isExistReadingRoomId(Long id){

        return seatDao.findByReadingRoomId(id).isEmpty() ? false : true;
    }



    /**
     * 通过时间和code找到在这个时间段内哪些座位是已预约的
     * @param readingRoomId
     * @param date
     * @param code
     * @return
     */
    public List<Long> findDisableSeat(Long readingRoomId, Date date, int code) {

        List<SeatOrder> disableSeat = seatOrderDao.findByReadingRoomId(readingRoomId);

        Date yuYueTime = DateUtil.day(date);

        List<Long> unusableSeat = new ArrayList<>();


        for (SeatOrder seatOrder : disableSeat) {

            long seatOrderTime = DateUtil.day(seatOrder.getSubscribeTime()).getTime();

//            if ( seatOrder.getSubscribeTime().getTime() < currentDay) { //订单表里的预约时间小于当前时间
//                continue;
//            }


            if (yuYueTime.getTime() != seatOrderTime) {
                continue;
            }

            if (code != seatOrder.getTimeCode()) {
                continue;
            }


            unusableSeat.add(seatOrder.getSeat().getId());
        }


        return unusableSeat;
    }

    public SeatOrder stuIsOrdered(Long stuId,Long currentDay) {//把往期记录过滤掉，选出正在预约中的座位

        int pm = DateUtil.isPM(); //判断当前时间是否为下午，0为上午 1为下午

        List<SeatOrder> seatOrders = seatOrderDao.findByStudentId(stuId);
        for (SeatOrder seatOrder : seatOrders) { //判断学生是否已预约 若已预约则提示 以当先时间为基准过滤掉以前的预约

            long stuTime = DateUtil.day(seatOrder.getSubscribeTime()).getTime();
            if (stuTime > currentDay) {// 订单时间大于当前时间 就说明已经有预约了
                return seatOrder;
            }
            if (stuTime == currentDay) { //订单时间等于当前时间
                if (TimeEnum.AM.getCode() == seatOrder.getTimeCode()) {//订单时间为上午
                    if (pm == 0) {//当前时间为上午
                        return seatOrder;
                    }
                }
                if (TimeEnum.PM.getCode() == seatOrder.getTimeCode()) {//订单时间为下午
                    if (pm == 1) {//当前时间为下午
                        return seatOrder;
                    }
                }
            }

        } //该判断已经通过之后，就说明订单表里已经都是小于当前时间的预约订单了 就是都是以前预约的记录（一个学生只能预约一次未来的时间座位）

        return null;
    }



}
