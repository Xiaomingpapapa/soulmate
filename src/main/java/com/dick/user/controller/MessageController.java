package com.dick.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dick.constant.Constants;

@Controller
@RequestMapping("/message")
public class MessageController {
    
    @RequestMapping("/messagepage.do")
    public String MessagePage() {
        return Constants.ViewName.MESSAGE;
    }
    @RequestMapping("/messagehistory.do")
    public Object getMessageHisotry() {
        return new Object();
    }
}
