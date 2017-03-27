package com.manager.dao;

import java.util.List;

import com.manager.bean.RecommendResult;
//test
public interface RecommendResultMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RecommendResult record);

    int insertSelective(RecommendResult record);

    RecommendResult selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RecommendResult record);

    int updateByPrimaryKey(RecommendResult record);
    
  //通过userid在推荐结果表t_recommendResult中查询所有movies id
    List<RecommendResult> selectMoviesByUserId(Integer userid);
    
}