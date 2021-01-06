package com.kh.thil.user.myPage.myRequest.model.dao;

import static com.kh.thil.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class UserReqCompleteDao {
	Properties prop = new Properties();
	
	public UserReqCompleteDao() {
		String fileName = UserReqCompleteDao.class.getResource("/sql/user/myPage/myRequest/myRequest-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	
	public int updateCompleteRequest(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;	
		
		String query = prop.getProperty("updateCompleteRequest");
		
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

	
	public int insertCompleteRequest(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertCompleteRequest");
		
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
	
}
