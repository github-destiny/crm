package com.nero.crm.config;

import com.nero.crm.interceptor.LoginInterceptor;
import com.nero.crm.listener.WebInitListener;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
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

    @Bean
    public CorsFilter corsFilter(){
        final UrlBasedCorsConfigurationSource urlBasedCorsConfigurationSource = new UrlBasedCorsConfigurationSource();
        final CorsConfiguration corsConfiguration = new CorsConfiguration();
        /*是否允许请求带有验证信息*/
        corsConfiguration.setAllowCredentials(true);
        /*允许访问的客户端域名*/
        corsConfiguration.addAllowedOrigin("*");
        /*允许服务端访问的客户端请求头*/
        corsConfiguration.addAllowedHeader("*");
        /*允许访问的方法名,GET POST等*/
        corsConfiguration.addAllowedMethod("*");
        urlBasedCorsConfigurationSource.registerCorsConfiguration("/**", corsConfiguration);
        return new CorsFilter(urlBasedCorsConfigurationSource);
    }

    //@Bean
    //public ServletListenerRegistrationBean<WebInitListener> servletListenerRegistrationBean(){
    //    return new ServletListenerRegistrationBean<>(new WebInitListener());
    //}
}
