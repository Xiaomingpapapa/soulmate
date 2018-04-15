package com.dick.user.dao;

import java.util.List;
import java.util.Map;

import com.dick.user.model.Label;
import com.dick.user.model.Question;
import com.dick.user.model.TestingResult;

public interface TestingDao {
    public List<Question> getQuestionList(Map<String, Object> params);
    public int saveTestingResult(List<TestingResult> resultList);
    public int generateUserLabel(int userId);
    public int updateTestingStatus(int userId);
}
