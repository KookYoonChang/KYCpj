package com.kh.thil.admin.portfolio.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.admin.portfolio.model.dao.AdminPortDao;
import com.kh.thil.admin.portfolio.model.vo.AdminPort;
import com.kh.thil.common.PageInfo;

public class AdminPortService {

	public int getListPostCount() {
		Connection con = getConnection();
		
		int listCount = new AdminPortDao().getListPortCount(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<AdminPort> selectListPostWithPaging(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<AdminPort> list = new AdminPortDao().selectListPostWithPaging(con, pi);
		
		close(con);
		
		return list;
	}

}
