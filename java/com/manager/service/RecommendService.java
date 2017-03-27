package com.manager.service;

import java.util.List;

import com.manager.bean.RecommendResult;
import com.manager.bean.Scenic;

public interface RecommendService {
	//保存推荐结果到数据库
	public int save(RecommendResult r);
	
	//通过userid查询出所有推荐结果的URL
	public List<String> selectUrlByUserId(Integer id);
	
}
