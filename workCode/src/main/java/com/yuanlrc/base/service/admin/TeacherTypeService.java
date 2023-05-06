package com.yuanlrc.base.service.admin;

import com.yuanlrc.base.dao.admin.TeacherTypeDao;
import com.yuanlrc.base.entity.admin.TeacherType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherTypeService  {

    @Autowired
    private TeacherTypeDao teacherTypeDao;

    /**
     * 全查询查询
     * @param
     * @return
     */
    public List<TeacherType> findAll(){
        return teacherTypeDao.findAll();
    }
}
