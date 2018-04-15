package com.dick.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dick.constant.Constants;
import com.dick.user.model.User;

@Controller
@RequestMapping("/partner")
public class PartnerController extends BaseController{

    @RequestMapping(value="/recommendpartner.do")
    public String recommendPartner() {
        return Constants.ViewName.RECOMMEND_PARTNER;
    }

    @RequestMapping(value="/recommendpartnerlist.do", method=RequestMethod.GET)
    @ResponseBody
    public Object getRecommendPartnerList() {
        User currentUser = (User)getSession().getAttribute(Constants.SystemConstant.USER);
        return new Object();
    }
}