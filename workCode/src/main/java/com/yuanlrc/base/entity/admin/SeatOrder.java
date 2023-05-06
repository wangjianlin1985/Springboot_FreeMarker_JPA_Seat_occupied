package com.yuanlrc.base.entity.admin;

import com.yuanlrc.base.annotion.ValidateEntity;
import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@ToString
@Table(name = "ylrc_seat_order")
@EntityListeners(AuditingEntityListener.class)
public class SeatOrder extends BaseEntity{

    @ManyToOne
    @JoinColumn(name="seat_id")
    private Seat seat;//座位Id

    @ManyToOne
    @JoinColumn(name="student_id")
    private Student student;//学生id

    @ManyToOne
    @JoinColumn(name="reading_room_id")
    private ReadingRoom readingRoom;//阅览室Id

    @ValidateEntity(required=true)
    @Column(name="subscribe_time")
    private Date subscribeTime;//预约日期

    @ValidateEntity(required=true)
    @Column(name = "time_code")
    private int timeCode;//上下午

    @Transient
    private int status=1; //1不可取消 2可取消

    @Transient
    private int stringTime; //预约时间String格式


}
