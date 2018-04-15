package com.dick.util;

import javax.servlet.http.HttpSession;


public class SessionUtil {
    public static HttpSession globalSession = null;
    public static void setSession(HttpSession session) {
        globalSession = session;
    }
    
    public static HttpSession getSeesion() {
        return globalSession;
    }

}
