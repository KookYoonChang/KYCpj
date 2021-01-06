package com.kh.thil.admin.request.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.admin.request.model.dao.AdminRequestDao;
import com.kh.thil.admin.request.model.vo.AdminRequest;
import com.kh.thil.common.PageInfo;

public class AdminRequestService {

	public int getListReqCount() {
		Connection con = getConnection();
		
		int listCount = new AdminRequestDao().getListReqCount(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<AdminRequest> selectListReqWithPaging(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<AdminRequest> list = new AdminRequestDao().selectListReqWithPaging(con, pi);
		
		close(con);
		
		return list;
	}

}
