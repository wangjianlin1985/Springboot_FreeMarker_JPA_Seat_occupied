package com.yuanlrc.base.dao.admin;

import com.yuanlrc.base.entity.admin.TeacherType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TeacherTypeDao extends JpaRepository<TeacherType ,Long> {
}
