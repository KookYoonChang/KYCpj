package com.kh.thil.user.myPage.bsRequest.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.kh.thil.common.PageInfo;
import com.kh.thil.user.myPage.bsRequest.model.dao.BsRequestDao;
import com.kh.thil.user.myPage.bsRequest.model.vo.BsRequest;
import com.kh.thil.user.myPage.myRequest.model.dao.UserRequestDao;
import com.kh.thil.user.myPage.myRequest.model.vo.UserRequest;

public class BsRequestService {

	public int bsListReqCount(HttpServletRequest request) {
		Connection con = getConnection();

		int listCount = new BsRequestDao().bsListReqCount(con, request);

		close(con);

		return listCount;

	}

	public ArrayList<BsRequest> bsListReqWithPaging(PageInfo pi, HttpServletRequest request) {
		Connection con = getConnection();

		ArrayList<BsRequest> list = new BsRequestDao().bsListReqWithPaging(con, pi, request);

		close(con);

		return list;
	}

}
