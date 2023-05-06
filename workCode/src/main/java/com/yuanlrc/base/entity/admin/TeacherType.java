package com.yuanlrc.base.entity.admin;

import com.yuanlrc.base.annotion.ValidateEntity;
import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Table;

@Entity
@Table(name="ylrc_teacher_type")
@Data
@ToString
@EntityListeners(AuditingEntityListener.class)
public class TeacherType extends BaseEntity{

    @ValidateEntity(required=true)
    @Column(name="name",length=20)
    public String name;

    @ValidateEntity(required=true)
    @Column(name="type",length=2)
    public int type;

}
