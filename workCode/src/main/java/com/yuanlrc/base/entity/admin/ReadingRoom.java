package com.yuanlrc.base.entity.admin;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;

@Entity
@Table(name="ylrc_reading")
@Data
@ToString
@EntityListeners(AuditingEntityListener.class)
public class ReadingRoom extends BaseEntity{

    @Column(name="name",nullable=false,length=32)
    private String name;//名称

    @Column(name = "row",nullable = false,length = 6)
    private Integer row;//行数

    @Column(name = "lie",nullable = false,length = 6)
    private Integer lie;//列数

    @ManyToOne
    @JoinColumn(name = "readingtype_id",nullable = false)
    private ReadingType readingType; //阅览室类型
}
