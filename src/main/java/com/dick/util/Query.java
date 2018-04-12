package com.dick.util;

import java.util.LinkedHashMap;
import java.util.Map;

public class Query extends LinkedHashMap<String, Object> {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Query(Map<String, Object> params){
		this.putAll(params);
	}

}
