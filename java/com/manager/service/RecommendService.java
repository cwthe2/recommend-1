package com.manager.service;

import java.util.List;

import com.manager.bean.RecommendResult;
import com.manager.bean.Scenic;

public interface RecommendService {
	//�����Ƽ���������ݿ�
	public int save(RecommendResult r);
	
	//ͨ��userid��ѯ�������Ƽ������URL
	public List<String> selectUrlByUserId(Integer id);
	
}
