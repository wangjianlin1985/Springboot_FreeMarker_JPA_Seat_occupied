package com.yuanlrc.base.dao.admin;

import com.yuanlrc.base.entity.admin.ReadingRoom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/***
 * 阅览室操作Dao
 */
@Repository
public interface ReadRoomDao extends JpaRepository<ReadingRoom,Long> {
    /***
     * 根据Name查询阅览室
     * @param name
     * @return
     */
    ReadingRoom findByName(String name);

    /***
     * 根据ID查询阅览室
     * @param id
     * @return
     */
    @Query(value = "select * from ylrc_reading  where id= :id",nativeQuery = true)
    ReadingRoom find(@Param("id") Long id);

    /***
     * 根据阅览室类型和阅览室名称查询
     * @param name
     * @param readingType
     * @return
     */
    @Query(value = "SELECT * from  ylrc_reading r LEFT JOIN ylrc_reading_type t on r.readingtype_id=t.id WHERE r.name= :name AND r.readingtype_id= :readingType",nativeQuery = true)
    ReadingRoom findByNameAndReading(@Param("name") String name ,@Param("readingType")Long readingType);

}
