package com.dick.user.dao;

import java.util.List;
import com.dick.user.model.User;

public interface UserDao {
	public List<User> findAllUser();
}
