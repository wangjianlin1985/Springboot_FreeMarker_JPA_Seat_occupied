package com.yuanlrc.base.dao.admin;

import com.yuanlrc.base.entity.admin.ReadingRoom;
import com.yuanlrc.base.entity.admin.SeatOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SeatStatisticsDao extends JpaRepository<SeatOrder,Long> {


    /**
     * 查询今年的阅览室相应的占座数据
     * @return
     */
    @Query(value = "SELECT\n" +
            " MONTH(subscribe_time) month,\n" +
            " count(id) count,\n" +
            " reading_room_id rrid\n" +
            "FROM\n" +
            " ylrc_seat_order \n" +
            " WHERE\n" +
            "  year(create_time) = YEAR(now())\n" +
            "GROUP BY\n" +
            " reading_room_id,MONTH(subscribe_time)"   ,nativeQuery = true)
    List<Object> seatOrderCountByDate();


}
