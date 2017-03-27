package com.manager.serviceImpl;
import java.util.ArrayList;
import java.util.List;

//
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manager.bean.RecommendResult;
import com.manager.bean.Scenic;
import com.manager.dao.RecommendResultMapper;
import com.manager.dao.ScenicMapper;
import com.manager.service.RecommendService;
@Service
@Transactional
public class RecommendServiceImpl implements RecommendService{
@Autowired
private RecommendResultMapper reMapper;
@Autowired
private ScenicMapper scenicMapper;

	public int save(RecommendResult r) {
		// TODO Auto-generated method stub
		return reMapper.insert(r);
	}
	
	public List<String> selectUrlByUserId(Integer id) {
		// TODO Auto-generated method stub
		List<RecommendResult> moviceList=reMapper.selectMoviesByUserId(id);
		List<String> listUrl=new ArrayList<String>();
		System.out.println("½øÈë"+moviceList);
		for(int i=0;i<moviceList.size();i++){
			listUrl.add(scenicMapper.selectUrlByMovicesId(moviceList.get(i).getRid()));;
		}
		return listUrl;
	}

}
