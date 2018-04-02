package com.dick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dick.model.User;
import com.dick.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/index.do")
	public String getIndex(ModelMap mp) {
		List<User> userList = userService.findAllUser();
		mp.addAttribute("users", userList);
		return "index";
	}
}
