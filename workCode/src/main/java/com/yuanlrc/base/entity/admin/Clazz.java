package com.yuanlrc.base.entity.admin;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "ylrc_clazz")
@Data
public class Clazz extends BaseEntity {

    @Column(name = "claname")
    private  String claname; //班级名称

    @Column(name = "college")
    private  String college; //学院

    @Column(name = "major")
    private  String major; //专业

    @ManyToOne
    @JoinColumn(name = "teacher_id")
    private  Teacher teacher; //教师id

}
