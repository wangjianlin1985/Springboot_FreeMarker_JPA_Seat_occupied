package com.yuanlrc.base.dao.admin;

import com.yuanlrc.base.entity.admin.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TeacherDao extends JpaRepository<Teacher, Long> {
}
