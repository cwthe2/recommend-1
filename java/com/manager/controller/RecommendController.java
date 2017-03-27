package com.manager.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.spark.mllib.recommendation.MatrixFactorizationModel;
import org.apache.spark.mllib.recommendation.Rating;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.manager.bean.RecommendResult;
import com.manager.bean.Scenic;
import com.manager.service.RecommendService;
import com.manager.untils.Recommend;



@Controller

public class RecommendController {
	@Autowired
	private RecommendService rservice;
	
	@RequestMapping("scenicList")
	public String listScenic(HttpServletRequest request,HttpSession session){
		System.out.println("userid:"+session.getAttribute("userid"));
		Integer userId=Integer.parseInt(session.getAttribute("userid").toString());
		List<String> urlList=rservice.selectUrlByUserId(userId);
		session.setAttribute("urlList", urlList);
		System.out.println("url==:"+urlList);
		return "listScenic";
	}
	
	@RequestMapping(value="/trainModel")
	public String trainals(){
		return "progress-bars";
	}
	
	@RequestMapping(value="/trainModel",method=RequestMethod.POST)
	public String train(HttpServletRequest request,HttpSession session){
		
		//int num=Integer.parseInt(request.getParameter("numResult").toString());
		int num=Integer.parseInt(request.getParameter("num"));
		String rank=request.getParameter("ranks");
		System.out.println("�������Ϊ"+rank);
		String ranks="8-12";
		String lambdas="0.1-10.0";
		String numIters="10-20";
		String ratingsPath=request.getParameter("ratingsPath");
		String scenicPath=request.getParameter("scenicPath");
		Recommend recommend=new Recommend();
	
		File f=new File("hdfs://172.18.16.237:9000//user/fansy");
		
		File[] len=f.listFiles();
		if(len!=null){              //�жϸ�Ŀ¼���Ƿ����ļ�
		
		MatrixFactorizationModel sameModel = MatrixFactorizationModel.load(recommend.sc.sc(),
				"hdfs://172.18.16.237:9000//user/fansy");
			recommend.splitData(ratingsPath, scenicPath);
			List<Rating> result=new ArrayList<Rating>();
			System.out.println("session.getAttribute(userid):"+session.getAttribute("userid"));
			result=recommend.recommendationsResult(Integer.parseInt(session.getAttribute("userid").toString()), sameModel, recommend.getRatings(),
															recommend.getProducts(), num);
/*			
			//�Ƽ�����������ݿ�
			for(int i=0;i<result.size();i++){
				RecommendResult r=new RecommendResult();
				r.setRating(result.get(i).rating());
				r.setRid(result.get(i).product());
				r.setUid(result.get(i).user());
				this.rservice.save(r);
			}*/
			return "progress-bars";
			 
		}else{
			//�����ַ���תΪ����
			
			
			System.out.println("ranks"+ranks+"lambdas"+lambdas+"numIters"+numIters);
			String ranknum[]=ranks.split("-");
			String lambnum[]=lambdas.split("-");
			String numItersnum[]=numIters.split("-");
			
			int rankint[]=new int[2];
			float[] lamfloat=new float[2];
			int numint[]=new int[2];
			
			
			for(int i=0;i<ranknum.length;i++){			
				rankint[i]=Integer.parseInt(ranknum[i]);
				lamfloat[i]=Float.parseFloat(lambnum[i]);
				numint[i]=Integer.parseInt(numItersnum[i]);
			}
			
			
			
			recommend.splitData(ratingsPath, scenicPath);
			//2.ѵ������
			recommend.trainData();
			//3.ѵ��ģ��
			MatrixFactorizationModel bestModel=recommend.trainModel(recommend.getTraining(), recommend.getValidation(), rankint, lamfloat, numint,"hdfs://172.18.16.237:9000//user/fansy");
			//System.out.println("ѵ����ģ��Ϊ"+bestModel.logName());
			//4.����RMSE
			recommend.computeRMSE(bestModel, recommend.getTest());
			//5.�Ƽ����
			List<Rating> result=new ArrayList<Rating>();
			System.out.println("=======================================================================");
			System.out.println("userid:"+Integer.parseInt(session.getAttribute("userid").toString()));
			System.out.println("bestModel:"+bestModel);
			System.out.println("ratings:"+recommend.getRatings());
			System.out.println("product:"+recommend.getProducts());
			result=recommend.recommendationsResult(Integer.parseInt(session.getAttribute("userid").toString()), bestModel, recommend.getRatings(),
															recommend.getProducts(), num);
			
			
			//�Ƽ�����������ݿ�
			/*for(int i=0;i<result.size();i++){
				RecommendResult r=new RecommendResult();
				r.setRating(result.get(i).rating());
				r.setRid(result.get(i).product());
				r.setUid(result.get(i).user());
				this.rservice.save(r);
			}*/
			return "progress-bars";
		}
	
		
	}

	
}
