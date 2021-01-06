package com.kh.thil.user.myPage.myBsRequest.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class UserBsReqCompleteDao {
	private Properties prop = new Properties();
	
	public UserBsReqCompleteDao() {
		String fileName = UserBsReqCompleteDao.class.getResource("/sql/user/myPage/myBsRequest/myBsRequest-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int updateReqCompleteRT(Connection con, String rno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateReqCompleteRT");
		
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,  rno);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public int insertReqCompleteProT(Connection con, String rno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertReqCompleteProT");
		
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,  rno);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
