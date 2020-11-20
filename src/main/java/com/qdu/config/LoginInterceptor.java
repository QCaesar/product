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

        if(request.getRequestURI().contains("tomanagementIndex")){
            return true;
        }

        if (request.getRequestURI().contains("toadminIndex")){
            return true;
        }


        if (request.getRequestURI().contains("reportQuery")){
            return true;
        }

        if (request.getRequestURI().contains("queryReportByTypeAdmin")){
            return true;
        }
        if (request.getRequestURI().contains("showReportAdmin")){
            return true;
        }

        if(request.getRequestURI().contains("toRegister")){
            return true;
        }

        if(request.getRequestURI().contains("userQuery")){
            return true;
        }
        request.getRequestDispatcher("/WEB-INF/jsp/userLogin.jsp").forward(request,response);

        return false;
    }
}
