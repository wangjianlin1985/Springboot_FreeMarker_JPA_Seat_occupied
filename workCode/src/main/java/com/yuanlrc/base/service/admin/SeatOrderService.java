package com.yuanlrc.base.service.admin;

import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.dao.admin.SeatOrderDao;
import com.yuanlrc.base.entity.admin.SeatOrder;
import com.yuanlrc.base.entity.admin.Student;
import com.yuanlrc.base.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
public class SeatOrderService {
    @Autowired
    private SeatOrderDao seatOrderDao;

    @Autowired
    private StudentService studentService;

    @Autowired
    private SeatService seatService;

    /**
     * 选座
     * @param seatOrder
     * @return
     */
    public SeatOrder add(SeatOrder seatOrder) {
       return seatOrderDao.save(seatOrder);
    }

    /**
     * 通过学生id查选座订单
     * @param id
     * @return
     */
    public List<SeatOrder> findByStudentId(Long id) {
        return seatOrderDao.findByStudentId(id);
    }

    /**
     * 查询所有订单
     * @return
     */
    public List<SeatOrder> findAll() {
        return seatOrderDao.findAll();
    }

    public PageBean<SeatOrder> findList(SeatOrder seatOrder, PageBean<SeatOrder> pageBean){

        Student student = studentService.findByLoginUser();
        if (Objects.isNull(student) || Objects.isNull(student.getId())) {// 没拿到studentId 说明不是学生登录
            return pageBean;
        }

        List<SeatOrder> findList = seatOrderDao.findByStudentId(student.getId());

        long currentDay = DateUtil.day(new Date()).getTime();

        SeatOrder stuIsOrdered = seatService.stuIsOrdered(student.getId(), currentDay);

        if (Objects.nonNull(stuIsOrdered)) {
            findList = findList.stream().map(o -> {
                SeatOrder order = o;

                if (o.getId() == stuIsOrdered.getId()) {
                    o.setStatus(2);
                }
                return order;
            }).collect(Collectors.toList());
        }

        pageBean.setContent(findList);
        pageBean.setTotal(seatOrderDao.countByStudentId(student.getId()));
        pageBean.setTotalPage(Integer.valueOf(pageBean.getTotal() / pageBean.getPageSize()+""));
        long totalPage = pageBean.getTotal() % pageBean.getPageSize();
        if(totalPage != 0){
            pageBean.setTotalPage(pageBean.getTotalPage() + 1);
        }
        return pageBean;
    }

    public void delete(Long id) {
        seatOrderDao.deleteById(id);
    }
}
