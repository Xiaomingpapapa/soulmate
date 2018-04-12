package com.dick.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dick.constant.Constants;
import com.dick.user.dao.TestingDao;
import com.dick.user.model.Question;
import com.dick.user.service.TestingService;

@Controller
@RequestMapping("/testing")
public class TestingController extends BaseController{
	
	
	@Autowired
	private TestingService testingService;
	@RequestMapping("/testing.do")
	public String testingPage(){
		return "testing";
	}
	
	@RequestMapping("/questionlist.do")
	@ResponseBody
	public Object getQuestionList(@RequestParam Map<String, Object> params){
		Map<String, Object> tempParams = new HashMap<>();
		List<Question> questionList = testingService.getQuestionList(tempParams);
		return putMsgToJsonString(Constants.WebSite.SUCCESS, "", questionList.size(), questionList);
	}

}
