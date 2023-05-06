package com.yuanlrc.base.entity.admin;

import com.yuanlrc.base.annotion.ValidateEntity;
import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;

@Entity
@Table(name="ylrc_log_integral")
@Data
@ToString
@EntityListeners(AuditingEntityListener.class)
public class LogIntegral extends BaseEntity {

    @ManyToOne
    @JoinColumn(name="student_id")
    private Student student;//学生

    @ValidateEntity(required = false)
    @Column(name="grade",nullable = false)
    private int grade; //扣除积分

    @ValidateEntity(required = false)
    @Column(name="bonus_points")
    private int bonusPoints;//奖励积分

    @ValidateEntity(required = false)
    @Column(name="cause")
    private String cause; //原因



}
