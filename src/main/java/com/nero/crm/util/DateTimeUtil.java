package com.nero.crm.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
public class DateTimeUtil {

    public static String getDate(){
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }

}
