package com.yuanlrc.base.service.admin;


import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.dao.admin.ClazzDao;
import com.yuanlrc.base.entity.admin.Clazz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClazzService {

    @Autowired
    private ClazzDao ClazzDao;

    /**
     * 根据班级id查询
     * @param id
     * @return
     */
    public Clazz find(Long id){
        return ClazzDao.find(id);
    }

    /**
     * 按照班级名查找用户
     * @param claName
     * @return
     */
    public Clazz findByclaname(String claName){
        return ClazzDao.findByClaname(claName);
    }

    public List<Clazz> findAll(){
        return ClazzDao.findAll();
    }
    /**
     * 班级添加/编辑操作
     * @param clazz
     * @return
     */
    public Clazz save(Clazz clazz){
        return ClazzDao.save(clazz);
    }

    /**
     * 分页查询班级列表
     * @param clazz
     * @param pageBean
     * @return
     */
    public PageBean<Clazz> findList(Clazz clazz, PageBean<Clazz> pageBean){
        ExampleMatcher withMatcher = ExampleMatcher.matching().withMatcher("claName", ExampleMatcher.GenericPropertyMatchers.contains());
        Example<Clazz> example = Example.of(clazz, withMatcher);
        Pageable pageable = PageRequest.of(pageBean.getCurrentPage()-1, pageBean.getPageSize());
        Page<Clazz> findAll = ClazzDao.findAll(example, pageable);
        pageBean.setContent(findAll.getContent());
        pageBean.setTotal(findAll.getTotalElements());
        pageBean.setTotalPage(findAll.getTotalPages());
        return pageBean;
    }

    /**
     * 判断班级名是否存在，添加和编辑均可判断
     * @param claname
     * @param id
     * @return
       */
    public boolean isExistClaName(String claname,Long id){
        Clazz name = ClazzDao.findByClaname(claname);
        if(name != null){
            //表示班级名存在，接下来判断是否是编辑班级的本身
            if(name.getId().longValue() != id.longValue()){
                return true;
            }
        }
        return false;
    }

    /**
     * 按照班级id删除
     * @param id
     */
    public void delete(Long id){
        ClazzDao.deleteById(id);
    }

    /**
     * 返回班级总数
     * @return
     */
    public long total(){
        return ClazzDao.count();
    }
}
