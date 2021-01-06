package com.kh.thil.user.myPage.myBsRequest.model.dao;

import static com.kh.thil.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class UserBsReqYesDao {
	Properties prop = new Properties();
	
	public UserBsReqYesDao() {
		String fileName = UserBsReqYesDao.class.getResource("/sql/user/myPage/myBsRequest/myBsRequest-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public int updateYesRequest(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;	
		
		String query = prop.getProperty("updateYesRequest");
		
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

	public int insertYesRequest1(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertYesRequest1");
		
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
	
	public int insertYesRequest2(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertYesRequest2");
		
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
