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
public class UserController extends BaseController{
    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping("/friendlist.do")
    public Object getFriendList() {
        List<User> userList = userService.findAllFriend();
        String jsonString = putMsgToJsonString(0, "", 2, userList).toString();
        return putMsgToJsonString(0, "", 2, userList);
    }
}
