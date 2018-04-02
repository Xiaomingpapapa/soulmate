package com.dick.dao;

import java.util.List;
import com.dick.model.User;

public interface UserDao {
	public List<User> findAllUser();
}
