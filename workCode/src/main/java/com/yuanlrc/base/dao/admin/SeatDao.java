package com.yuanlrc.base.dao.admin;

import com.yuanlrc.base.entity.admin.Seat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SeatDao extends JpaRepository<Seat, Long> {

    @Query("select s from Seat s where id = :id")
    Seat find(@Param("id")Long id);

    List<Seat> findByReadingRoomId(Long id);

}
