package com.kh.thil.admin.review.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.admin.review.model.dao.AdminReviewDao;
import com.kh.thil.admin.review.model.vo.AdminReview;
import com.kh.thil.common.PageInfo;

public class AdminReviewService {

	public int getListReviewCount() {
		Connection con = getConnection();
		
		int listCount = new AdminReviewDao().getListReviewCount(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<AdminReview> selectListReviewWithPaging(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<AdminReview> list = new AdminReviewDao().selectListReviewWithPaging(con, pi);
		
		close(con);
		return list;
	}

}
