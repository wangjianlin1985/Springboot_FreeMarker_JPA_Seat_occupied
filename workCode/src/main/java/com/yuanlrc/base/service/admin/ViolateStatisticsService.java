package com.yuanlrc.base.service.admin;


import com.yuanlrc.base.dao.admin.ViolateStatisticsDao;
import com.yuanlrc.base.entity.admin.Statistics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ViolateStatisticsService {




    @Autowired
    private ViolateStatisticsDao statisticsDao;





    /**
     * 按照月份统计违规人数
     * @return
     */
    public Statistics statisticsList(){
        List<Object>  list = statisticsDao.logIntegralCountByDate();

        Statistics statistics = new Statistics();

        List<String> months = new ArrayList<>();    //声明月份list判断根据索引传输值

        HashMap<Integer, String> dataMap = new HashMap<Integer, String>();  //用于存储y轴人数

        for (int i=0;i<=11;i++){    //循环添加12个月份
            String str = String.valueOf(i+1);
            months.add(i,str);
        }

        for (int i=0;i<=11;i++){    //循环添加12个月份
            dataMap.put(i, "0");
        }

        //遍历查询结果
        for(Object o  : list){
            //将一个索引下的元素放入数组便于赋值
            Object[] arr = (Object[]) o;

            //通过查询出来list保存在数据中的value找到所对应的索引
            int index = months.indexOf(arr[0].toString());

            //y轴 存储y轴数据 根据12个月份根据月份存储count数据
            dataMap.put(index, arr[1].toString());

           // dataMap.put(index,arr[2].toString());
        }

        //map转换list
        List<String> data = dataMap.values().stream().collect(Collectors.toList());
        //把数据传输到statistics实体的中便于在前后端交互
        statistics.setData(data);

        return statistics;
    }


}
