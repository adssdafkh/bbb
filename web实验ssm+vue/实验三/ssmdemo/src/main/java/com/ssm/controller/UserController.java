package com.ssm.controller;
import com.ssm.entity.User;
import com.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
@Controller
@RequestMapping("/user")
public class UserController<string> {
    @Resource
    private  UserService userService;

    @RequestMapping("/getDataById")
    public String rushinto4(){
        return "Login";
    }

    @RequestMapping("/getDataById2")
    public String rushinto5(){
        return "register";
    }

    @RequestMapping("/getDataById3")
    public String getDataById3(@RequestParam("id") int id, Model model) {
        User user = userService.selectByPrimaryKey(id);
        model.addAttribute("user", user);
        return "datashow"; // 返回视图名字
    }
    @RequestMapping("/Login2")
    public String Login2(@RequestParam("username") String username, @RequestParam("password") String password) {
        if (userService.authenticateUser(username, password)) {
            return "home"; // 登录成功，重定向到成功页面
        } else {
            return "show"; // 登录失败，重定向到失败页面
        }
    }
    @RequestMapping("/rushinto")
    public String rushinto(){
        return "search";
    }
    @RequestMapping("/rushinto2")
    public String rushinto2(){
        return "delete";
    }
    @RequestMapping("/rushinto3")
    public String rushinto3(){
        return "update";
    }
    @RequestMapping("/register2")
    public String registerUser(@RequestParam("username") String username, @RequestParam("password") String password) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        userService.registerUser(user);
        return "Login"; // 注册成功后重定向到登录页面
    }
    @RequestMapping("/getDataById4")
    public String getDataById4(@RequestParam("id") int id) {
        userService.deleteByUsername(id);
        return "delete"; // 返回视图名字
    }
    @RequestMapping("/getDataById5")
    public  String getDataById5(@RequestParam("username") String username, @RequestParam("password") String password) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        userService.updateByUsername(user);
        return "update"; // 返回视图名字
    }

}
