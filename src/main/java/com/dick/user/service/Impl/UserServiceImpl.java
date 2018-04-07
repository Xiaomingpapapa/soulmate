package com.dick.user.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dick.user.dao.UserDao;
import com.dick.user.model.User;
import com.dick.user.service.UserService;

@Service
public class UserServiceImpl implements UserService {
    
    @Autowired
    private UserDao userDao;
    @Override
    public List<User> findAllUser() {
        return userDao.findAllUser();
    }
}
