package com.dick.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dick.model.User;

@Controller
@RequestMapping("/system")
public class SystemController {
    
    @RequestMapping(value="/login.do", method=RequestMethod.GET)
    public String loginPage() {
        return "login";
    }
    
    @RequestMapping(value="/login.do", method=RequestMethod.POST)
    public Object login(@ModelAttribute User user) {
        User currentUser = user;
        return new Object();
    }
}
