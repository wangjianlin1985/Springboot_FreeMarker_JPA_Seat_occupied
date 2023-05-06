package com.yuanlrc.base.dao.admin;

import com.yuanlrc.base.entity.admin.Clazz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ClazzDao extends JpaRepository<Clazz, Long> {
    /**
     * 按照班级名查找班级信息
     * @param claname
     * @return
     */
    public Clazz findByClaname(String claname);

    /**
     * 根据班级id查询
     * @param id
     * @return
     */
    @Query("select c from Clazz c where id = :id")
    public Clazz find(@Param("id")Long id);

}
