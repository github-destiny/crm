package com.nero.crm.config;

import com.nero.crm.interceptor.LoginInterceptor;
import com.nero.crm.listener.WebInitListener;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 * 定制拦截器规则
 */
@Configuration
public class WebConfig implements WebMvcConfigurer {

    /**
     * 除登录以及静态资源请求外，全部禁止
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/**")
                .excludePathPatterns("/", "/login", "/css/**", "/fonts/**", "images/**", "/js/**", "/test/**", "/error");
    }

    //@Bean
    //public ServletListenerRegistrationBean<WebInitListener> servletListenerRegistrationBean(){
    //    return new ServletListenerRegistrationBean<>(new WebInitListener());
    //}
}
