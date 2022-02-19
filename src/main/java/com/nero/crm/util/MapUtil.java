package com.nero.crm.util;

import com.nero.crm.constant.StatusCode;
import org.springframework.util.StringUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
public class MapUtil {

    public static Map<String, Object> returnMapDefine(int code, Object obj, String ex){
        HashMap<String, Object> map = new HashMap<>();
        map.put("status", code);
        map.put("result", obj);
        map.put("timestamp", System.currentTimeMillis());
        if (code == StatusCode.RESPONSE_ERROR && StringUtils.hasLength(ex)){
            map.put("error", ex);
        }
        return map;
    }

    public static Map<String, Object> getSuccessMap(Object obj){
        return returnMapDefine(StatusCode.RESPONSE_OK, obj, "");
    }

    public static Map<String, Object> getFailureMap(String ex){
        return returnMapDefine(StatusCode.RESPONSE_ERROR, null, ex);
    }

}
