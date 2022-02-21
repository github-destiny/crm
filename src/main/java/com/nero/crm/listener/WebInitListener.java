package com.nero.crm.listener;

import com.nero.crm.domain.DicType;
import com.nero.crm.domain.DicValue;
import com.nero.crm.service.DicService;
import com.nero.crm.service.UserService;
import com.nero.crm.vo.UserVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.*;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/20
 */
@Slf4j
@Component
public class WebInitListener implements ServletContextListener {

    @Autowired
    private DicService dicService;

    @Autowired
    private UserService userService;

    @Value("${possible.list}")
    private String possibleList;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        log.info("数据字典缓存开始...");
        ServletContext sc = sce.getServletContext();
        List<DicType> dicTypeList = dicService.getAllDicType();
        List<DicValue> dicValueList = dicService.getAllDicValue();
        // 设置数据字典类型缓存
        sc.setAttribute("dicType", dicTypeList);
        Map<String, List<DicValue>> map = new HashMap<>();
        for (DicType dicType : dicTypeList) {
            for (DicValue dicValue : dicValueList) {
                // 如果相同，说明是该类型的数据
                if (dicValue.getTypeCode().equals(dicType.getCode())){
                    List<DicValue> dicValues = map.get(dicType.getCode());
                    if (null == dicValues) {
                        dicValues = new ArrayList<>();
                        dicValues.add(dicValue);
                    } else {
                        dicValues.add(dicValue);
                    }
                    map.put(dicType.getCode(), dicValues);
                }
            }
        }
        // 设置dicValue缓存
        sc.setAttribute("dicValue", map);
        log.info("数据字典缓存成功");
        // 设置所有者列表缓存
        List<UserVO> ownerList = userService.getAllUserBaseInfo();
        sc.setAttribute("ownerList", ownerList);
        log.info("所有者列表缓存成功");
        // 处理交易可能性
        String[] possibles = possibleList.split(",");
        Map<String, Integer> possibleMap = new HashMap<>();
        for (String possible : possibles) {
            String[] split = possible.split("=");
            possibleMap.put(split[0], Integer.parseInt(split[1]));
        }
        sc.setAttribute("possibleMap", possibleMap);
        log.info("交易可能性列表缓存成功");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        log.info("销毁...");
    }

}
