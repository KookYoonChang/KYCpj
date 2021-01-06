package com.kh.thil.user.myPage.myBsRequest.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.kh.thil.admin.request.model.dao.AdminRequestDao;
import com.kh.thil.admin.request.model.vo.AdminRequest;
import com.kh.thil.common.PageInfo;
import com.kh.thil.user.myPage.myBsRequest.model.dao.UserBsRequestDao;
import com.kh.thil.user.myPage.myBsRequest.model.vo.Files;
import com.kh.thil.user.myPage.myBsRequest.model.vo.UserBsReqUpdate;
import com.kh.thil.user.myPage.myBsRequest.model.vo.UserBsRequest;

public class UserBsRequestService {

	public int userBsListReqCount(HttpServletRequest request) {
		Connection con = getConnection();
		
		int listCount = new UserBsRequestDao().userBsListReqCount(con, request);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<UserBsRequest> userBsListReqWithPaging(PageInfo pi, HttpServletRequest request) {
		Connection con = getConnection();
		
		ArrayList<UserBsRequest> list = new UserBsRequestDao().userBsListReqWithPaging(con, pi, request);
		
		close(con);
		
		return list;
	}

	public ArrayList<Files> insertBsReqInfo(Files fileList, String rnoOne) {
		Connection con = getConnection();
		
		ArrayList<Files> list = new UserBsRequestDao().insertBsReqInfo(con, fileList, rnoOne);
		
		if(list > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return list;
	}

	public ArrayList<UserBsReqUpdate> updateBsReqInfo(UserBsReqUpdate ubru) {
		Connection con = getConnection();
		
		ArrayList<UserBsReqUpdate> list = new UserBsRequestDao().updateBsReqInfo(con, ubru);
		
		if(list > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return list;
	}

	public ArrayList<UserBsReqUpdate> insertBsReqInfoPro(UserBsReqUpdate ubru) {
		Connection con = getConnection();
		
		ArrayList<UserBsReqUpdate> list = new UserBsRequestDao().insertBsReqInfoPro(con, ubru);
		
		if(list > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return list;
	}

}
