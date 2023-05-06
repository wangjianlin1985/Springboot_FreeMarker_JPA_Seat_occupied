package com.yuanlrc.base.service.admin;

import com.yuanlrc.base.dao.admin.ReadRoomDao;
import com.yuanlrc.base.dao.admin.SeatStatisticsDao;
import com.yuanlrc.base.entity.admin.ReadingRoom;
import com.yuanlrc.base.entity.admin.Statistics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class SeatStatisticsService {

    @Autowired
    private SeatStatisticsDao seatStatisticsDao;
    @Autowired
    private ReadRoomDao readRoomDao;


    /**
     * 按照月份统计占座人数数据排序
     * @return
     */
    public Map<String, List<Integer>> seatStatisticsList() {
        List<Object> list = seatStatisticsDao.seatOrderCountByDate();
        Map<Long, Statistics> resultMap = new HashMap<>();
        List<Statistics> tempList = new ArrayList<>();
        for (Object o : list) {
            //将一个索引下的元素放入数组便于赋值
            Object[] arr = (Object[]) o;
            Statistics ss = resultMap.get(Long.valueOf(arr[2].toString()));
            List<Map<String, Integer>> seatData = new ArrayList<>();
            if (ss == null || ss.getSeatData() == null) {
                //表示以前没有放置过数据
                ss = new Statistics();
                Object o1 = arr[2];
                long aLong = Long.valueOf(String.valueOf(o1));
                ReadingRoom byId = readRoomDao.find(aLong);
                ss.setName(byId.getName()+byId.getReadingType().getName());
                ss.setSeatData(seatData);
            } else {
                seatData = ss.getSeatData();
                resultMap.remove(Long.valueOf(arr[2].toString()));
            }
            Map<String, Integer> monthData = new HashMap<>();
            monthData.put(arr[0].toString(), Integer.valueOf(arr[1].toString()));
            seatData.add(monthData);
            resultMap.put(Long.valueOf(arr[2].toString()), ss);
            if (!tempList.contains(resultMap.get(Long.valueOf(arr[2].toString())))) {
                tempList.add(resultMap.get(Long.valueOf(arr[2].toString())));
            }
        }

        List<Integer> monthList = new ArrayList<>();
        for (int i = 1; i < 13; i++) {
            monthList.add(i);
        }


        Map<String, List<Integer>> tempMap = new HashMap<>();
        for (int s = 0; s < tempList.size(); s++) {
            Statistics statistics = tempList.get(s);
            List<Integer> countList = new ArrayList<>();
            List<Map<String, Integer>> seatData = statistics.getSeatData();
            for (int j = 0; j < monthList.size(); j++) {
                countList.add(0);
                Integer month = (Integer) monthList.get(j);
                for (Map map : seatData) {
                    if (map.containsKey(month.toString())) {
                        countList.set(month - 1, (Integer) map.get(month.toString()));
                    }
                }
            }
            tempMap.put(statistics.getName(), countList);
        }



        return tempMap;
    }

}

