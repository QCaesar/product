package com.qdu.controller;

import com.qdu.pojo.User;
import com.qdu.service.UserService;
import com.qdu.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    private UserService userService=new UserServiceImpl();
    @Autowired
    @Qualifier("UserServiceImpl")
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    //查询所有用户
    @RequestMapping("/allUser")
    public String list(Model model){
        List<User> user=userService.queryAllUser();
        model.addAttribute("list",user);
        return "allUser";
    }

    @RequestMapping("/toaddUser")
    public String toaddUser(){
        return "addUser";
    }

    @RequestMapping("/addUser")
    public String addUser(User user){
        userService.addUser(user);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/deleteUser")
    public String deleteUser(int userId){
        userService.deleteUserById(userId);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/toupdateUser")
    public String updateUser(int userId,Model model){
        User user = userService.queryUserById(userId);
        model.addAttribute("QUser",user);
        return "updateUser";
    }

    @RequestMapping("/updateUser")
    public String updateUser(User user){
        userService.updateUser(user);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/queryUser")
    public String queryUser(String userName,Model model){
        User users = userService.queryUserByName(userName);
        List<User> list=new ArrayList<User>();
        list.add(users);
        if (users==null) {
           list=userService.queryAllUser();
           model.addAttribute("error","未查找到");
        }
        model.addAttribute("list",list);
        return "allUser";
    }

    @RequestMapping("/queryUserWaitPass")
    public String queryUserWaitPass(Model model){
        List<User> userWaitPass=userService.queryUserWaitPass();
        model.addAttribute("userList",userWaitPass);
        return "allUserWaitPass";
    }

    @RequestMapping("/updateUserStatus")
    public String updateUserStatus(User user){
        userService.updateUserStatus(user);
        return "redirect:/user/queryUserWaitPass";
    }

    @RequestMapping("/updateUserStatusNot")
    public String updateUserStatusNot(User user){
        userService.updateUserStatusNot(user);
        return "redirect:/user/queryUserWaitPass";
    }

    @RequestMapping("/updateUserState")
    public String updateUserState(User user){
        userService.updateUserState(user);
        return "redirect:/user/allUser";
    }

}
