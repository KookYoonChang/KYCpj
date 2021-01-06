package com.kh.thil.user.review.model.service;

import static com.kh.thil.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.kh.thil.common.PageInfo;
import com.kh.thil.user.review.model.dao.ReviewDao;
import com.kh.thil.user.review.model.vo.Files;
import com.kh.thil.user.review.model.vo.Review;
import com.kh.thil.user.review.model.vo.ReviewInfo;

public class ReviewService {
	

	public ReviewInfo reviewInfo(String rno) {
		Connection con = getConnection();
		
		ReviewDao rd = new ReviewDao();
		
		ReviewInfo reviewMember = rd.reviewMember(con, rno);
		
		return reviewMember;
	}

	public int insertReview(Map<String, Object> requestData) {
		Connection con = getConnection();
		
		int result = 0;
		
		ReviewDao rd = new ReviewDao();
		Review review = (Review) requestData.get("review");
		ArrayList<Files> fileList = (ArrayList<Files>) requestData.get("fileList");
		
		int result1 = rd.insertReviewContent(con, review);
		
		if(result1 > 0) {
			String revno = rd.selectCurrval(con);
			int result2 =0;
			for(int i = 0; i< fileList.size(); i++) {
				Files fi = fileList.get(i);
				fi.setFiletype(revno);
				result2 += rd.insertReview(con, fi);
			}
			if(result2 == fileList.size()) {
				commit(con);
				result = 1;
			}else {
				rollback(con);
				result = 1;
			}
			
		}
		
		return result;
	}

	public int reviewBoardCount(String uno) {
		Connection con = getConnection();
		
		int listCount = new ReviewDao().getListcount(con, uno);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Review> ReviewListWithPaging(PageInfo pi, String uno) {
		Connection con = getConnection();
		
		ArrayList<Review> list = new ReviewDao().ReviewListWithPagning(con, pi, uno);
		
		close(con);
		
		return list;
	}


	public HashMap<String, Object> selectReview(String num) {
		Connection con = getConnection();
		
		//해쉬맵에 담아야함. files랑 review vo를 별개로 생성했기때문
		//아니면 어레이리스트쓰면된다
		
		HashMap<String, Object>hmap = null;
		//비워준다

		ReviewDao rd = new ReviewDao();
		
		hmap = rd.selectReviewOne(con, num);
		if(hmap != null) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		return hmap;
	}

	public int mainReviewListCount() {
		Connection con = getConnection();
		
		int listCount = new ReviewDao().mainReviewListCount(con);
		
		close(con);
		
		return listCount;
	}

	public HashMap<String, Object> mainReviewListWithPaging(PageInfo pi) {
		Connection con = getConnection();
		
		
		
		ReviewDao rd = new ReviewDao();
		
		HashMap<String, Object> hmap = rd.mainReviewListWithPaging(con, pi);
		
		close(con);
		
		return hmap;
		
		
	}

	public int bsreviewBoardCount(String bno) {
		Connection con = getConnection();
		
		int listCount = new ReviewDao().getbsListcount(con, bno);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Review> bsReviewListWithPaging(PageInfo pi, String bno) {
		Connection con = getConnection();
		
		ArrayList<Review> list = new ReviewDao().bsReviewListWithPagning(con, pi, bno);
		
		close(con);
		
		return list;
	}

}
