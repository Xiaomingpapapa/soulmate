package com.dick.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.dick.user.model.User;
import com.dick.user.service.SystemService;

@Controller
@RequestMapping("/system")
public class SystemController {
    
	@Autowired
	private SystemService systemService;
	
    @RequestMapping(value="/login.do", method=RequestMethod.GET)
    public String loginPage() {
        return "login";
    }
    
    @RequestMapping(value="/login.do", method=RequestMethod.POST)
    public Object login(@ModelAttribute User user) {
        User currentUser = user;
        boolean flag = systemService.userLoginVerified(currentUser);
        return new Object();
    }
}
