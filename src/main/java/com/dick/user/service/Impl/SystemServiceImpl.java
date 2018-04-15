package com.dick.user.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dick.user.dao.SystemDao;
import com.dick.user.model.User;
import com.dick.user.service.SystemService;

@Service
public class SystemServiceImpl implements SystemService{
    
    @Autowired
    private SystemDao systemDao;
    @Override
    public User userLoginVerified(User user) {
    User user2 = systemDao.getUserByName(user.getUser_name());
    if (user2 != null) {
        if(user2.getPassword().equals(user.getPassword())) {
            user2.setPassword("");
            return user2;
        }
    }

        return null;
    }
}
