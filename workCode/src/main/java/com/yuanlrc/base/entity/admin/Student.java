package com.yuanlrc.base.entity.admin;


import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * 学生表
 */
@Entity
@Table(name = "ylrc_student")
@Data
@ToString
@EntityListeners(AuditingEntityListener.class)
public class Student extends BaseEntity {
    public static final int STUDENT_CREDITS_ENABLE = 100;//学生默认积分是100
    public static final String STUDENT_BIRTHDAY_ENABLE = "S";//学生默认生成学号默认是S
    public static final Long STUDENT_ROLE_ENABLE = 9l;//学生默认角色是学生 9是学生
    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;//学生相对应的用户

    @Column(name = "student_sno")
    private String studentSno;//学号

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "student_birthday")
    private Date studentBirthday;//学生 生日

    @Column(name = "student_credits")
    private int studentCredits = STUDENT_CREDITS_ENABLE;//学生积分

    @ManyToOne
    @JoinColumn(name = "clazz_id")
    private Clazz clazz;  //班级


}
