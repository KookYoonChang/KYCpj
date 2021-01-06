package com.kh.thil.user.fast.model.dao;

import static com.kh.thil.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.thil.user.fast.model.vo.UserFast;

public class UserReqFastDao {
	Properties prop = new Properties();
	
	public UserReqFastDao() {
		String fileName = UserReqFastDao.class.getResource("/sql/user/myPage/myRequest/myRequest-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertUserFast(Connection con, UserFast iURF) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertRequestFast");
	
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, iURF.getCno());
			pstmt.setString(2, iURF.getFastArea());
			pstmt.setString(3, iURF.getFastAdd());
			pstmt.setString(4, iURF.getFastHopeDate());
			pstmt.setString(5, iURF.getFastName());
			pstmt.setString(6, iURF.getFastPhone());
			pstmt.setString(7, iURF.getFastNote());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
