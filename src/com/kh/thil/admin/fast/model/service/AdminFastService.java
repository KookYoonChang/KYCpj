package com.kh.thil.admin.fast.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.admin.fast.model.dao.AdminFastDao;
import com.kh.thil.admin.fast.model.vo.AdminFast;
import com.kh.thil.common.PageInfo;

public class AdminFastService {

	public int getListFastCount() {
		Connection con = getConnection();
		
		int listCount = new AdminFastDao().getListFastCount(con);
			
		close(con);
		
		return listCount;
	}

	public ArrayList<AdminFast> selectListFastWithPaging(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<AdminFast> list = new AdminFastDao().selectListFastWithPaging(con, pi);
		
		close(con);
		
		return list;
	}
}
