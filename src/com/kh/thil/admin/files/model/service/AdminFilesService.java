package com.kh.thil.admin.files.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.admin.files.model.dao.AdminFilesDao;
import com.kh.thil.admin.files.model.vo.AdminFiles;
import com.kh.thil.common.PageInfo;

public class AdminFilesService {

	public int getListFilesCount() {
		Connection con = getConnection();
		
		int listCount = new AdminFilesDao().getListFilesCount(con);
			
		close(con);
		
		return listCount;
	}

	public ArrayList<AdminFiles> selectListFilesWithPaging(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<AdminFiles> list = new AdminFilesDao().selectListFilesWithPaging(con, pi);
		
		close(con);
		
		return list;
	}

}
