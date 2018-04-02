package com.dick.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dick.dao.UserDao;
import com.dick.model.User;
import com.dick.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	@Override
	public List<User> findAllUser() {
		return userDao.findAllUser();
	}
	
}
