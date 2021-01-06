package com.kh.thil.admin.business.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.admin.business.model.dao.AdminBsDao;
import com.kh.thil.admin.business.model.vo.AdminBusiness;
import com.kh.thil.common.PageInfo;


public class AdminBsService {

	public ArrayList<AdminBusiness> selectBsManage() {
		Connection con = getConnection();
		
		ArrayList<AdminBusiness> list = new AdminBsDao().selectBsManage(con);
		
		close(con);
		
		return list;
	}

	public int getListBsCount() {
		Connection con = getConnection();
		
		int listCount = new AdminBsDao().getListBsCount(con);
		
		close(con);
		
		return listCount;
	}
	
	public ArrayList<AdminBusiness> selectListBsWithPaging(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<AdminBusiness> list = new AdminBsDao().selectListBsWithPaging(con, pi);
		
		close(con);
		
		return list;
	}
}
