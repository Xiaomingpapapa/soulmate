package com.dick.user.service.Impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dick.user.dao.TestingDao;
import com.dick.user.model.Question;
import com.dick.user.service.TestingService;

@Service
public class TestingServiceImpl implements TestingService{
	
	@Autowired
	private TestingDao testingDao;
	
	@Override
	public List<Question> getQuestionList(Map<String, Object> params) {
		List<Question> tempList = new ArrayList<>();
		tempList = testingDao.getQuestionList(params);
		return testingDao.getQuestionList(params);
	}

}
