package com.nero.crm.aop;

import com.nero.crm.domain.Log;
import com.nero.crm.mapper.LogMapper;
import com.nero.crm.util.DateTimeUtil;
import lombok.Singular;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.logging.LogManager;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/3/15
 */
@Component
@Aspect
@Slf4j
public class LogAspect {

    @Autowired
    private LogMapper logMapper;

    @Pointcut("execution(* com.nero.crm.service.*.*(..))")
    public void servicePoint(){

    }

    @AfterReturning("servicePoint()")
    public void afterAdvice(JoinPoint joinPoint){
        log.info("method signature:[{}]", joinPoint.getSignature());
        Log log = new Log();
        log.setCreateTime(DateTimeUtil.getDate());
        log.setSignature(joinPoint.getSignature().toLongString());
        String kind = joinPoint.getKind();
        log.setType(kind);
        String args = Arrays.toString(joinPoint.getArgs());
        log.setArgs(args);
        logMapper.insert(log);
    }

}
