package com.dick.user.dao;

import com.dick.user.model.User;

public interface SystemDao {
	public User getUserByName(String username);
}
