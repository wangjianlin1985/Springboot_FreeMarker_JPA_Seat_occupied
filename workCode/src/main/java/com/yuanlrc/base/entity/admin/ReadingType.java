package com.yuanlrc.base.entity.admin;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Table;

@Entity
@Table(name="ylrc_readingType")
@Data
@ToString
@EntityListeners(AuditingEntityListener.class)
public class ReadingType extends BaseEntity {
    @Column(name="name",nullable=false,length=32)
    private String name;//名称

    @Column(name = "integral",nullable = false)
    private Integer integral; //限制积分
}
