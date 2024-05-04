package com.ssm.controller;
import com.ssm.entity.User;
import com.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

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
    @ResponseBody
    public User getDataById3(@RequestParam("id") int id) {
        return userService.selectByPrimaryKey(id);
    }
    @RequestMapping("/Login2")
    public String Login2(@RequestParam("username") String username, @RequestParam("password") String password) {
        if (userService.authenticateUser(username, password)) {
            return "home";
        } else {
            return "show";
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
        return "Login";
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

    @RequestMapping("/getAllUsers")
    @ResponseBody
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }

}
