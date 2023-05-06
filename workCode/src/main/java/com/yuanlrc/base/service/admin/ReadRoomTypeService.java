package com.yuanlrc.base.service.admin;

import com.yuanlrc.base.bean.Result;
import com.yuanlrc.base.dao.admin.ReadRoomTypeDao;
import com.yuanlrc.base.entity.admin.ReadingType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/***
 * 阅读类型管理操作Service
 */
@Service
public class ReadRoomTypeService  {

    @Autowired
    private ReadRoomTypeDao readRoomTypeDao;

    /**
     * 阅读类型全查询
     * @return
     */
    public List<ReadingType> findAll(){
        return readRoomTypeDao.findAll();
    }

    /***
     * 根据ID删除阅读类型
     * @param id
     */
    public void  deleteReadType(Long id){
        readRoomTypeDao.deleteById(id);
    }

    /***
     * 添加
     * @param readingType
     * @return
     */
    public ReadingType saveReadingType(ReadingType readingType){
        return readRoomTypeDao.save(readingType);
    }

    /***
     * 判断阅览室是否存在
     * @param name
     * @return
     */
    public Boolean isExistName(String name){
        ReadingType readingType = readRoomTypeDao.findByName(name);
        if(readingType !=null){
                //表示阅览室已经存在
                return true;
        }
        return false;
    }
    /***
     * 判断阅览室是否编辑自身
     * @param name
     * @return
     */
    public Boolean isExistName(String name,Long id){
        ReadingType readingType = readRoomTypeDao.findByName(name);
        if(readingType !=null){
            if(readingType.getId().longValue() != id.longValue()){
            //表示阅览室已经存在
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
    public ReadingType findById(Long id) {
        return readRoomTypeDao.find(id);
    }
}
