package com.yuanlrc.base.entity.admin;

import lombok.Data;
import lombok.ToString;

import java.util.List;
import java.util.Map;

@Data
@ToString
public class Statistics {
     private List<String> data;     //数据
//    private List<String> seatDataOne;  //座位数据1
//    private List<String> seatDataTwo;  //座位数据2
//    private List<String> seatDataThree;  //座位数据3

    private String name;//阅览室名称

    private List<Map<String,Integer>> seatData;

}
