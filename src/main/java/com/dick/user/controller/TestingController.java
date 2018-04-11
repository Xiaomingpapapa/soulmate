package com.dick.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dick.user.model.Question;

@Controller
@RequestMapping("/testing")
public class TestingController {
	
	@RequestMapping("/testing.do")
	public String testingPage(){
		return "testing";
	}
	
	@RequestMapping("/questionlist.do")
	@ResponseBody
	public List<Question> getQuestionList(){
		return new ArrayList<Question>();
	}

}
