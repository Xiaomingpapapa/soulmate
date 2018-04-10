package com.dick.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dick.user.model.User;
import com.dick.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserAccountController extends BaseController{
    @Autowired
    private UserService userService;
    
    @ResponseBody
    @RequestMapping("/userlist.do")
    public Object getUsers() {
        List<User> userList = userService.findAllUser();
        String jsonString = putMsgToJsonString(0, "", 2, userList).toString();
        return putMsgToJsonString(0, "", 2, userList);
    }
}
