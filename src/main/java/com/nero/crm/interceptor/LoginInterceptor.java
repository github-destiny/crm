package com.nero.crm.interceptor;

import com.nero.crm.constant.StatusCode;
import com.nero.crm.domain.DicType;
import com.nero.crm.domain.DicValue;
import com.nero.crm.util.JSONUtil;
import com.nero.crm.util.MapUtil;
import com.nero.crm.vo.UserVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
@Slf4j
public class LoginInterceptor implements HandlerInterceptor {

    private static final String DIC_TYPE_PATH = "/dic/type/all";
    private static final String DIC_VALUE_PATH = "/dic/value/all";
    private static final String OWNER_PATH = "/user/owner/all";

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String requestURI = request.getRequestURI();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        // 如果是获取字典类型请求，从缓存中取
        ServletContext sc = request.getServletContext();
        if (DIC_TYPE_PATH.equals(requestURI)){
            List<DicType> typeList = (List<DicType>) sc.getAttribute("dicType");
            if (null != typeList) {
                log.info("正在从缓存获取数据字典类型...");
                JSONUtil.printJsonObj(response, typeList);
                return false;
            }
        }
        // 获取数据字典数据
        if (DIC_VALUE_PATH.equals(requestURI)) {
            Map<String, List<DicValue>> map = (Map<String, List<DicValue>>)sc.getAttribute("dicValue");
            if (null != map){
                log.info("正在从缓存获取数据字典数据...");
                JSONUtil.printJsonObj(response, map);
                return false;
            }
        }
        // 如果请求的是owner列表，直接从缓存中获取
        if(OWNER_PATH.equals(requestURI)){
            List<UserVO> list = (List<UserVO>)sc.getAttribute("ownerList");
            if (null != list) {
                log.info("正在从缓存获取所有者列表...");
                JSONUtil.printJsonObj(response, list);
                return false;
            }
        }
        // 使用cookie保存uuid
        Cookie[] cookies = request.getCookies();
        Object uuidAct = null;

        if (null != cookies) {
            log.info("==============cookies start================");
            for (Cookie cookie : cookies) {
                log.info("cookie name:{}", cookie.getName());
                log.info("cookie value:{}", cookie.getValue());
                // 如果通过uuid验证成功，则直接放行
                if ("uuid".equals(cookie.getName())){
                    String uuid = cookie.getValue();
                    uuidAct = request.getSession().getAttribute(uuid);
                }
            }
            log.info("==============cookies end================");
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
