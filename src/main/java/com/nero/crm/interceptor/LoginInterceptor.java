package com.nero.crm.interceptor;

import com.nero.crm.constant.StatusCode;
import com.nero.crm.util.JSONUtil;
import com.nero.crm.util.MapUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
@Slf4j
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 使用cookie保存uuid
        Cookie[] cookies = request.getCookies();
        Object uuidAct = null;
        for (Cookie cookie : cookies) {
            // 如果通过uuid验证成功，则直接放行
            if ("uuid".equals(cookie.getName())){
                String uuid = cookie.getValue();
                uuidAct = request.getSession().getAttribute(uuid);
            }
        }
        if (null != uuidAct){
            return true;
        }
        // 如果使用uuid验证失败，则通过session验证loginAct
        Object loginAct = request.getSession().getAttribute(request.getParameter("loginAct"));
        if (loginAct != null){
            return true;
        }
        // 如果没有登陆，直接响应数据给欢迎页
        response.setContentType("application/json");
        JSONUtil.printJsonObj(response, MapUtil.returnMapDefine(StatusCode.RESPONSE_ERROR, null, "请先登录"));
        response.sendRedirect("/");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
