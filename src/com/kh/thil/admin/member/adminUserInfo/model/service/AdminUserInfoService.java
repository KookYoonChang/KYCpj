package com.kh.thil.admin.member.adminUserInfo.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.commit;
import static com.kh.thil.common.JDBCTemplate.getConnection;
import static com.kh.thil.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.admin.member.adminUserInfo.model.dao.AdminUserInfoDao;
import com.kh.thil.admin.member.adminUserInfo.model.vo.AdminUserInfo;

public class AdminUserInfoService {

	public AdminUserInfo updateInfo(AdminUserInfo aui) {
		Connection con = getConnection();
		
		AdminUserInfo updateUserInfo = null;
		
		AdminUserInfoDao auid = new AdminUserInfoDao();
		
		int result = auid.updateInfo(con, aui);
		
		if(result > 0) {
			
			updateUserInfo = auid.selectUpdateInfo(con, aui);
			
			if(updateUserInfo != null) {
				
				commit(con);
				
			} else {
				
				rollback(con);
				
			}
			
		} else { 
			
			rollback(con);
		}
		
		close(con);
		
		return updateUserInfo;
	}

	public ArrayList<AdminUserInfo> selectUserInfo(String unoOne) {
		Connection con = getConnection();
		ArrayList<AdminUserInfo> userInfo = new AdminUserInfoDao().selectUserInfo(con, unoOne);
		
		close(con);
		
		return userInfo;
	}

}
