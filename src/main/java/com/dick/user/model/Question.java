package com.dick.user.model;

import java.util.List;

public class Question {
	private long question_id;
	private String title;

	private List<Option> option_list;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public long getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(long question_id) {
		this.question_id = question_id;
	}
	public List<Option> getOption_list() {
		return option_list;
	}
	public void setOption_list(List<Option> option_list) {
		this.option_list = option_list;
	}

}
