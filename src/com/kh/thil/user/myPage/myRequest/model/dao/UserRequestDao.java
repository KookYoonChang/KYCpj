package com.kh.thil.user.myPage.myRequest.model.dao;

import static com.kh.thil.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import com.kh.thil.user.login.model.vo.Login;
import com.kh.thil.common.PageInfo;
import com.kh.thil.user.myPage.myRequest.model.vo.UserRequest;

public class UserRequestDao {
	private Properties prop = new Properties();

	public UserRequestDao() {

		String fileName = UserRequestDao.class.getResource("/sql/user/myPage/myRequest/myRequest-query.properties")
				.getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int userListReqCount(Connection con, HttpServletRequest request) {
		PreparedStatement pstmt = null;
//		Statement stmt = null;
		ResultSet rset = null;
		int listCount = 0;
		
		String query = prop.getProperty("userListReqCount");
		
		try {
//			stmt = con.createStatement();
			
//			rset = stmt.executeQuery(query);
			
//			if (rset.next()) {
//				listCount = rset.getInt(1);
//			y}
			
			pstmt = con.prepareStatement(query);
			
			String uno = ((Login) request.getSession().getAttribute("loginUser")).getUno();
			
			pstmt.setString(1, uno);
			
			rset = pstmt.executeQuery();

			if(rset.next()) {
				listCount = rset.getInt(1);
				}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return listCount;
	}

	public ArrayList<UserRequest> userListReqWithPaging(Connection con, PageInfo pi, HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<UserRequest> list = null;
		
		String query = prop.getProperty("userListReqWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			
			String uno = ((Login) request.getSession().getAttribute("loginUser")).getUno();
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() -1;
			
			pstmt.setString(1, uno);
			pstmt.setInt(2,  startRow);
			pstmt.setInt(3,  endRow);
			
			rset = pstmt.executeQuery();
			
			list =new ArrayList<UserRequest>();
			
			while(rset.next()) {
				UserRequest ur = new UserRequest();
				ur.setRno(rset.getString("RNO"));
				ur.setReqDate(rset.getDate("REQ_DATE"));
				ur.setCatName(rset.getString("CAT_NAME"));
				ur.setBsTitle(rset.getString("BS_TITLE"));
				ur.setPayPrice(rset.getInt("PAY_PRICE"));
				ur.setProName(rset.getString("PRO_NAME"));
				
				list.add(ur);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

}
