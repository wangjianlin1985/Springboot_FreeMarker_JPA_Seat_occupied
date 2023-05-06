package com.yuanlrc.base.dao.admin;

import com.yuanlrc.base.entity.admin.Seat;
import com.yuanlrc.base.entity.admin.SeatOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SeatOrderDao extends JpaRepository<SeatOrder,Long> {

    @Query("select s from SeatOrder s where id = :id")
    Seat find(@Param("id")Long id);


    int countSeatOrderBySeat_ReadingRoom_Id(Long id);


    List<SeatOrder> findByReadingRoomId(Long id);

    List<SeatOrder> findByStudentId(Long id);

    @Query(value="SELECT * from ylrc_seat_order s where student_id = :student_id order by s.subscribe_time desc limit :offset,:pageSize",nativeQuery=true)
    List<SeatOrder> findList(@Param("student_id") Long studentId,@Param("offset")Integer offset,@Param("pageSize")Integer pageSize);

    Long countByStudentId(Long studentId);

}
