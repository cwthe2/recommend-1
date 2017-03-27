package com.manager.dao;

import java.util.List;

import com.manager.bean.RecommendResult;
import com.manager.bean.Scenic;

public interface ScenicMapper {
	
    //通过movicesId在物品表中查询对应的URL
   String selectUrlByMovicesId(Integer moviesid);
}
