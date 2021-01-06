package com.kh.thil.admin.qna.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.admin.qna.model.dao.AdminQnaDao;
import com.kh.thil.admin.qna.model.vo.AdminQna;
import com.kh.thil.common.PageInfo;

public class AdminQnaService {
	public int getListQnaCount() {
		Connection con = getConnection();
		
		int listCount = new AdminQnaDao().getListQnaCount(con);
		
		close(con);
		
		return listCount;
	}


	public ArrayList<AdminQna> selectListQnaWithPaging(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<AdminQna> list = new AdminQnaDao().selectListQnaWithPaging(con, pi);
		
		close(con);
		
		return list;
	}
}
