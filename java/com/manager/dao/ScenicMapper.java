package com.manager.dao;

import java.util.List;

import com.manager.bean.RecommendResult;
import com.manager.bean.Scenic;

public interface ScenicMapper {
	
    //ͨ��movicesId����Ʒ���в�ѯ��Ӧ��URL
   String selectUrlByMovicesId(Integer moviesid);
}
