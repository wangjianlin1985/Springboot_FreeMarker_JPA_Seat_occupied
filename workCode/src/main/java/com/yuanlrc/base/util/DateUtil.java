package com.yuanlrc.base.util;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateUtil {

    public static Date day(Date date) {
        LocalDate localDate=date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        return java.sql.Date.valueOf(localDate);
    }

    /**
     * 判断当前是否为上午 0为上午 1为下午
     * @return
     */
    public static int isPM() {
        GregorianCalendar ca = new GregorianCalendar();
        System.out.println(ca.get(GregorianCalendar.AM_PM));
        return ca.get(GregorianCalendar.AM_PM);
    }

    public static Date millisecondToDate(Long milliSecond) {
        Date date = new Date();
        date.setTime(milliSecond);
        return date;
    }

    public static String millisecondToFormatDate(Long milliSecond){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(milliSecond); //设置为日历的当前时间
        return format.format(calendar.getTime());
    }

}
