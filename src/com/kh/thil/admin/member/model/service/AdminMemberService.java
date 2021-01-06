package com.kh.thil.admin.member.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.admin.member.model.dao.AdminMemberDao;
import com.kh.thil.admin.member.model.vo.AdminMember;
import com.kh.thil.common.PageInfo;

public class AdminMemberService {
	public ArrayList<AdminMember> selectUserManage() {
		Connection con = getConnection();
		
		ArrayList<AdminMember> list = new AdminMemberDao().selectUserManage(con);
		
		close(con);
		
		return list;
	}

	

	public int getListUserCount() {
		Connection con = getConnection();
		
		int listCount = new AdminMemberDao().getListUserCount(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<AdminMember> selectListUserWithPaging(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<AdminMember> list = new AdminMemberDao().selectListUserWithPaging(con, pi);
		
		close(con);
		
		return list;
	}
}
