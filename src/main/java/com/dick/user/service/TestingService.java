package com.dick.user.service;

import java.util.List;
import java.util.Map;

import com.dick.user.model.Question;

public interface TestingService {
	public List<Question> getQuestionList(Map<String, Object> params);
}
