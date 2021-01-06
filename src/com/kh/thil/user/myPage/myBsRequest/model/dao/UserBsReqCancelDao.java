package com.kh.thil.user.myPage.myBsRequest.model.dao;

import static com.kh.thil.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class UserBsReqCancelDao {
	private Properties prop = new Properties();

	public UserBsReqCancelDao() {
		String fileName = UserBsReqCancelDao.class.getResource("/sql/user/myPage/myBsRequest/myBsRequest-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public int insertReqCancelProT(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;	
		
		String query = prop.getProperty("insertReqCancelProT");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, rnoOne);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateReqCancelRT(Connection con, String rnoOne, String reqNote) {
		PreparedStatement pstmt = null;
		int result = 0;	
		
		String query = prop.getProperty("updateReqCancelRT");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, reqNote);
			pstmt.setString(2, rnoOne);
			pstmt.setString(3, rnoOne);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
