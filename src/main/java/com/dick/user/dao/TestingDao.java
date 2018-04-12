package com.dick.user.dao;

import java.util.List;
import java.util.Map;

import com.dick.user.model.Question;

public interface TestingDao {
	public List<Question> getQuestionList(Map<String, Object> params);
}
