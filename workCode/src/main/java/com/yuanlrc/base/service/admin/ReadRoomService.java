package com.yuanlrc.base.service.admin;

import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.dao.admin.ReadRoomDao;
import com.yuanlrc.base.dao.admin.ReadRoomTypeDao;
import com.yuanlrc.base.entity.admin.ReadingRoom;
import com.yuanlrc.base.entity.admin.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

/***
 * 阅览室操作Service
 */
@Service
public class ReadRoomService {

    @Autowired
    private ReadRoomDao readRoomDao;

    /***
     * 分页查询
     * @param readingRoom
     * @param pageBean
     * @return
     */
    public PageBean<ReadingRoom> findAll(ReadingRoom readingRoom,PageBean<ReadingRoom> pageBean){
        ExampleMatcher withMatcher = ExampleMatcher.matching().withMatcher("name", ExampleMatcher.GenericPropertyMatchers.contains());
        withMatcher = withMatcher.withIgnorePaths("row","lie");
        Example<ReadingRoom> example = Example.of(readingRoom, withMatcher);
        Pageable pageable = PageRequest.of(pageBean.getCurrentPage() - 1, pageBean.getPageSize());
        Page<ReadingRoom> findAll = readRoomDao.findAll(example,pageable);
        pageBean.setContent(findAll.getContent());
        pageBean.setTotal(findAll.getTotalElements());
        pageBean.setTotalPage(findAll.getTotalPages());
        return pageBean;

    }

    /***
     * 根据ID删除阅读室
     * @param id
     */
    public void  deleteId(Long id){
        readRoomDao.deleteById(id);
    }

    /***
     * 添加阅览室
     * @param readingRoom
     */
    public void save(ReadingRoom readingRoom) {
          readRoomDao.save(readingRoom);
    }

    /***
     * 根据名称判断是否存在
     * @param name
     * @return
     */
    public boolean isExistName(String name,Long readingType) {
        ReadingRoom readingRoom = readRoomDao.findByNameAndReading(name,readingType);
        if(readingRoom !=null){
            if(readingRoom.getName().equals(name)){return true;}
        }
        return false;
    }

    /***
     * 根据ID Name判断是否存在
     * @param id
     * @return
     */
    public boolean isExistName(Long id,String name,Long readingType) {
        ReadingRoom readingRoom = readRoomDao.findByNameAndReading(name,readingType);
        if(readingRoom !=null){
            if(readingRoom.getId().longValue()!=id.longValue()){
            //表示是否能编辑自身
                return true;
            }
        }
        return false;
    }

    /***
     * 根据ID查询阅览室
     * @param id
     * @return
     */
    public ReadingRoom findById(Long id) {
        return readRoomDao.find(id);
    }
}
