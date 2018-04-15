package com.dick.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dick.constant.Constants;
import com.dick.user.model.Question;
import com.dick.user.model.TestingResult;
import com.dick.user.model.User;
import com.dick.user.service.TestingService;

@Controller
@RequestMapping("/testing")
public class TestingController extends BaseController{

    @Autowired
    private TestingService testingService;
    @RequestMapping("/testing.do")
    public String testingPage(){
        return Constants.ViewName.TESTING;
    }
    
    @RequestMapping(value="/questionlist.do",method=RequestMethod.GET)
    @ResponseBody
    public Object getQuestionList(@RequestParam Map<String, Object> params){
        Map<String, Object> tempParams = new HashMap<>();
        List<Question> questionList = testingService.getQuestionList(tempParams);
        return putMsgToJsonString(Constants.WebSite.SUCCESS, "", questionList.size(), questionList);
    }
    
    @RequestMapping(value="/testing.do", method=RequestMethod.POST)
    @ResponseBody
    public Object testingSubmit(@RequestParam Map<String, String> params) {
        User currentUser = (User)getSession().getAttribute(Constants.SystemConstant.USER);
        //get testing result object
        Iterator<Map.Entry<String, String>> resultEntries = params.entrySet().iterator();
        List<TestingResult> resultList = new ArrayList<>();
        while(resultEntries.hasNext()) {
            TestingResult result = new TestingResult();
            Map.Entry<String, String> entry = resultEntries.next();
            result.setUser_id(currentUser.getUser_id());
            result.setQuestion_id(Integer.parseInt(entry.getKey()));
            result.setOption_id(Integer.parseInt(entry.getValue()));
            resultList.add(result);
        }
        
        int result = testingService.testingSubmit(currentUser,resultList);
        return putMsgToJsonString(Constants.WebSite.SUCCESS, "", 0, result);
    }

}
