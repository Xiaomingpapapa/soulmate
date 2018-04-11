package com.dick.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dick.user.model.User;
import com.dick.user.service.SystemService;

@Controller
@RequestMapping("/system")
public class SystemController extends BaseController{
    
	@Autowired
	private SystemService systemService;
	
    @RequestMapping(value="/login.do", method=RequestMethod.GET)
    public String loginPage() {
        return "login";
    }
    
    @ResponseBody
    @RequestMapping(value="/login.do", method=RequestMethod.POST)
    public Object login(@ModelAttribute User user) {
        User currentUser = user;
        boolean flag = systemService.userLoginVerified(currentUser);
        if(flag) {
        	return putMsgToJsonString(0,"hahaha",0,user);
        }
        else {
        	return putMsgToJsonString(-1,"hehehe",0,user);
        }
    }
}
