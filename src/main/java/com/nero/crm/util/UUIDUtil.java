package com.nero.crm.util;

import java.util.UUID;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
public class UUIDUtil {

    public static String getUUID(){
        return UUID.randomUUID().toString().substring(0, 6);
    }

}
