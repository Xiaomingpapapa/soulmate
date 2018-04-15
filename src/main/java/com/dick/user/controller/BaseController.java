package com.dick.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.alibaba.fastjson.JSONArray;
import com.dick.util.SessionUtil;

public class BaseController {
    public Object putMsgToJsonString(int code,String msg,int count ,Object data){
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("code", code);
        map.put("msg", msg);
        map.put("count", count);
        map.put("data", data);
        return JSONArray.toJSON(map);
    }
    public HttpSession getSession() {
        return SessionUtil.getSeesion();
    }
    public void addUserSession(HttpSession session) {
        SessionUtil.setSession(session);
    }
}
