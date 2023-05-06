package com.yuanlrc.base.entity.admin;

import com.yuanlrc.base.annotion.ValidateEntity;
import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;

@Data
@Entity
@ToString
@Table(name = "ylrc_seat")
@EntityListeners(AuditingEntityListener.class)
public class Seat extends BaseEntity {

    private static final int SEAT_USABLE = 1;//可用

    private static final int SEAT_DISABLE = 2;//不可用


    // 阅览室ID
    @ManyToOne
    @JoinColumn(name = "reading_room_id")
    private ReadingRoom readingRoom;//阅览室Id

    @ValidateEntity(required = true)
    @Column(name = "x_axis", length = 128)
    private int xAxis;//x轴

    @ValidateEntity(required = true)
    @Column(name = "y_axis", length = 128)
    private int yAxis;//y轴

    @ValidateEntity(required = false)
    @Column(name = "status", length = 1)
    private int status = SEAT_USABLE; //可用状态

}
