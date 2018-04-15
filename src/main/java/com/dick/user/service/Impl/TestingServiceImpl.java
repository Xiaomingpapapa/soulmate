package com.dick.user.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dick.user.dao.TestingDao;
import com.dick.user.model.Question;
import com.dick.user.model.TestingResult;
import com.dick.user.model.User;
import com.dick.user.service.TestingService;

@Service
public class TestingServiceImpl implements TestingService{
    
    @Autowired
    private TestingDao testingDao;
    @Override
    public List<Question> getQuestionList(Map<String, Object> params) {
        return testingDao.getQuestionList(params);
    }

    @Override
    public int testingSubmit(User currentUser, List<TestingResult> resultList) {
        int currentUserId = currentUser.getUser_id();
        int saveResultFlag = testingDao.saveTestingResult(resultList);
        int generateUserLabelFlag = 0;
        int updateUserTestingStatusFlag = 0;
        if(saveResultFlag > 0) {
            generateUserLabelFlag = testingDao.generateUserLabel(currentUserId);
        }
        if(generateUserLabelFlag > 0) {
            updateUserTestingStatusFlag = testingDao.updateTestingStatus(currentUserId);
        }

        return updateUserTestingStatusFlag;
    }

}
