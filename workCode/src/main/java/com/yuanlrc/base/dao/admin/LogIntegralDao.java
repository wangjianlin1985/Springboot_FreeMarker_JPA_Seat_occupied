package com.yuanlrc.base.dao.admin;

import com.yuanlrc.base.entity.admin.LogIntegral;
import com.yuanlrc.base.entity.admin.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LogIntegralDao  extends JpaRepository<LogIntegral, Long> {
    List<LogIntegral> findByStudent(Student student);

    List<LogIntegral> findByStudent_Id(Long id);
}
