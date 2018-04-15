package com.dick.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dick.constant.Constants;
import com.dick.user.model.User;
import com.dick.user.service.SystemService;

@Controller
@RequestMapping("/system")
public class SystemController extends BaseController{
    
    @Autowired
    private SystemService systemService;
    
    @RequestMapping(value="/login.do", method=RequestMethod.GET)
    public String loginPage() {
        return Constants.ViewName.LOGIN;
    }
    @RequestMapping(value="/dashboard.do", method=RequestMethod.GET)
    public String dashboardPage() {
        return Constants.ViewName.RECOMMEND_PARTNER;
    }

    @ResponseBody
    @RequestMapping(value="/login.do", method=RequestMethod.POST)
    public Object login(@ModelAttribute User user, HttpSession session) {
        User currentUser = systemService.userLoginVerified(user);
        if(currentUser != null) {
            session.setAttribute(Constants.SystemConstant.USER, currentUser);
            addUserSession(session);
            return putMsgToJsonString(Constants.WebSite.SUCCESS,"",0,currentUser);
        }
        else {
            return putMsgToJsonString(Constants.WebSite.ERROR,"",0,currentUser);
        }
    }
}
