package com.yuanlrc.base.dao.admin;

import com.yuanlrc.base.entity.admin.ReadingType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/***
 * 阅读室类型管理操作Dao
 */
@Repository
public interface ReadRoomTypeDao extends JpaRepository<ReadingType,Long> {
    /***
     * 根据Name查询阅览室类型
     * @param name
     */
    ReadingType findByName(String name);

    /***
     * 根据阅览室类型ID查询
     * @param id
     * @return
     */
    @Query(value = "select * from ylrc_reading_type  where id= :id",nativeQuery = true)
    ReadingType find(@Param("id") Long id);

}
