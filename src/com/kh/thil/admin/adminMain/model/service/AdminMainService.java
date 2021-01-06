package com.kh.thil.admin.adminMain.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.admin.adminMain.model.dao.AdminMainDao;
import com.kh.thil.admin.adminMain.model.vo.AdminMain;

public class AdminMainService {

	public ArrayList<AdminMain> tableReqListMain() {
		Connection con = getConnection();
		
		ArrayList<AdminMain> listReq = new AdminMainDao().tableReqListMain(con);
		
		close(con);
		
		return listReq;
	}

	public ArrayList<AdminMain> tableBsListMain() {
		Connection con = getConnection();
		
		ArrayList<AdminMain> listBs = new AdminMainDao().tableBsListMain(con);
		
		close(con);
		
		return listBs;
	}

	public ArrayList<AdminMain> tableQnaListMain() {
		Connection con = getConnection();
		
		ArrayList<AdminMain> listQna = new AdminMainDao().tableQnaListMain(con);
		
		close(con);
		
		return listQna;
	}

	public ArrayList<AdminMain> tableFastListMain() {
		Connection con = getConnection();
		
		ArrayList<AdminMain> listFast = new AdminMainDao().tableFastListMain(con);
		
		close(con);
		
		return listFast;
	}

}
