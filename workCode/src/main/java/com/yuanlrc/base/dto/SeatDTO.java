package com.yuanlrc.base.dto;

import com.yuanlrc.base.entity.admin.ReadingRoom;
import com.yuanlrc.base.entity.admin.Seat;
import lombok.Data;
import lombok.ToString;

import java.util.Date;

@Data
@ToString
public class SeatDTO {

    private ReadingRoom readingRoom;//阅览室Id

    private Date createTime;//创建时间

    private Seat seat;

}
