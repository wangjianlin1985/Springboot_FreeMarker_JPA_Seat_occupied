package com.yuanlrc.base.dao.admin;

import com.yuanlrc.base.entity.admin.Student;
import com.yuanlrc.base.entity.admin.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentDao extends JpaRepository<Student, Long> {

    Student findByUser_Id(Long userId);

}
