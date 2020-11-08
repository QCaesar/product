package com.qdu.controller;

import com.qdu.pojo.User;
import com.qdu.service.LoginService;
import com.qdu.service.LoginServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/login")
public class LoginController {

    private LoginService loginService = new LoginServiceImpl();

    @Autowired
    @Qualifier("LoginServiceImpl")
    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }

    @RequestMapping("/toRegister")
    public String toRegister() {
        return "userRegister";
    }

//Test
    @RequestMapping("/userRegister")
    public String userRegister(User user) {
        loginService.userRegister(user);
        return "test";
    }

    @RequestMapping("/userQuery")
    public String userQuery(String userName, User user, Model model) {//可自动获取userName input中username的值
        User user1 = loginService.userRegisterQueryByName(userName);
        System.out.println(user1);
        if (user1 != null) {
            model.addAttribute("repeat", "该用户名已被注册");
            return "userRegister";
        }
        loginService.userRegister(user);
        return "test";
    }

    @RequestMapping("/touserLogin")
    public String touserLogin(Model model){
        
        return "userLogin";
    }

    @RequestMapping("/userLogin")
    public String userLogin(String userName, String userPwd, HttpSession session,Model model) {
        User user = loginService.userRegisterQueryByName(userName);

        if (user != null && user.getUserPwd().equals(userPwd)) {
            session.setAttribute("user", user);

            return "test";
        }
        else{
            model.addAttribute("error","用户名不存在或密码错误！");
            return "userLogin";
        }

    }
}