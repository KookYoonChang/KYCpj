package com.kh.thil.user.myPage.myRequest.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.kh.thil.common.PageInfo;
import com.kh.thil.user.myPage.myRequest.model.dao.UserRequestDao;
import com.kh.thil.user.myPage.myRequest.model.vo.UserRequest;

public class UserRequestService {

	public int userListReqCount(HttpServletRequest request) {
		Connection con = getConnection();
		
		int listCount = new UserRequestDao().userListReqCount(con, request);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<UserRequest> userListReqWithPaging(PageInfo pi, HttpServletRequest request) {
		Connection con = getConnection();
		
		ArrayList<UserRequest> list = new UserRequestDao().userListReqWithPaging(con, pi, request);
		
		close(con);
		
		return list;
	}

}
