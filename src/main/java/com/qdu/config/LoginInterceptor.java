package com.qdu.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor  implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session=request.getSession();

        if(session.getAttribute("user")!=null){
            return true;
        }

        if(request.getRequestURI().contains("userLogin")){
            return true;
        }

        if(request.getRequestURI().contains("touserLogin")){
            return true;
        }

        request.getRequestDispatcher("/WEB-INF/jsp/userLogin.jsp").forward(request,response);

        return false;
    }
}
