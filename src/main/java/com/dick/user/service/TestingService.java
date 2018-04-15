package com.dick.user.service;

import java.util.List;
import java.util.Map;

import com.dick.user.model.Question;
import com.dick.user.model.TestingResult;
import com.dick.user.model.User;

public interface TestingService {
    public List<Question> getQuestionList(Map<String, Object> params);
    public int testingSubmit(User currentUser, List<TestingResult> resultList);
}
