package com.dick.user.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.dick.constant.Constants;
import com.dick.user.model.User;

public class SessionInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        String urlStr = request.getRequestURI();
        User user = (User)request.getSession().getAttribute(Constants.SystemConstant.USER);
        if(user == null && urlStr.indexOf("login") == -1) {
            response.sendRedirect(request.getContextPath() + "/system/login.do");
            return false;
        }
        else {
            return true;
        }
    }
}
