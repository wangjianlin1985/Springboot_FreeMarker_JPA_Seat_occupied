package com.yuanlrc.base.entity.admin;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;

/**
 * 教师表
 */
@Entity
@Table(name="ylrc_teacher")
@Data
@ToString
@EntityListeners(AuditingEntityListener.class)
public class Teacher extends BaseEntity {
    public static final String TEACHER_BIRTHDAY_ENABLE = "T";//学生默认生成学号默认是T
    public static final Long TEACHER_ROLE_ENABLE = 10l;//教师默认角色是教师 10默认是教师
    @OneToOne
    @JoinColumn(name="user_id")
    private User user;//学生相对应的用户

    @Column(name="teacher_sno")
    private String teacherSno;//工号

    @ManyToOne
    @JoinColumn(name="teacherType_id")
    private TeacherType teacherType;//教师相对应的用户

}
