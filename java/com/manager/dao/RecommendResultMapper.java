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
    
  //ͨ��userid���Ƽ������t_recommendResult�в�ѯ����movies id
    List<RecommendResult> selectMoviesByUserId(Integer userid);
    
}