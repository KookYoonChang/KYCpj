package com.kh.thil.user.myPage.myBsRequest.model.dao;

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

import com.kh.thil.admin.request.model.vo.AdminRequest;
import com.kh.thil.common.PageInfo;
import com.kh.thil.user.login.model.vo.Login;
import com.kh.thil.user.myPage.myBsRequest.model.vo.Files;
import com.kh.thil.user.myPage.myBsRequest.model.vo.UserBsReqUpdate;
import com.kh.thil.user.myPage.myBsRequest.model.vo.UserBsRequest;

public class UserBsRequestDao {
	private Properties prop = new Properties();

	public UserBsRequestDao() {

		String fileName = UserBsRequestDao.class.getResource("/sql/user/myPage/myBsRequest/myBsRequest-query.properties")
				.getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int userBsListReqCount(Connection con, HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int listCount = 0;
		
		String query = prop.getProperty("userBsListReqCount");
		
		try {
			pstmt = con.prepareStatement(query);
			
			String bno = ((Login) request.getSession().getAttribute("loginUser")).getBno();
			
			pstmt.setString(1, bno);
			
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

	public ArrayList<UserBsRequest> userBsListReqWithPaging(Connection con, PageInfo pi, HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<UserBsRequest> list = null;
		
		String query = prop.getProperty("userBsListReqWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			
			String bno = ((Login) request.getSession().getAttribute("loginUser")).getBno();
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() -1;
			
			pstmt.setString(1, bno);
			pstmt.setInt(2,  startRow);
			pstmt.setInt(3,  endRow);
			
			rset = pstmt.executeQuery();
			
			list =new ArrayList<UserBsRequest>();
			
			while(rset.next()) {
				UserBsRequest ubr = new UserBsRequest();
				ubr.setRno(rset.getString("RNO"));
				ubr.setReqDate(rset.getDate("REQ_DATE"));
				ubr.setReqName(rset.getString("REQ_NAME"));
				ubr.setReqAdd(rset.getString("REQ_ADD"));
				ubr.setReqPrice(rset.getInt("REQ_PRICE"));
				ubr.setProName(rset.getString("PRO_NAME"));
				
				list.add(ubr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	public ArrayList<Files> insertBsReqInfo(Connection con, Files fileList, String rnoOne) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Files> list = null;
		
		String query = prop.getProperty("insertBsReqInfo");
		
		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, rnoOne);
			pstmt.setString(2, fileList.getFileOriginName());
			pstmt.setString(3, fileList.getFileChangeName());
			pstmt.setString(4, fileList.getFileRoute());
			pstmt.setInt(5, fileList.getFileLevel());
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Files>();
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	public ArrayList<UserBsReqUpdate> updateBsReqInfo(Connection con, UserBsReqUpdate ubru) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<UserBsReqUpdate> list = null;
		
		String query = prop.getProperty("updateBsReqInfo");
		
		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, ubru.getReqPrice());
			pstmt.setString(2, ubru.getReqBuildDate());			
			pstmt.setString(3, ubru.getRno());
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<UserBsReqUpdate>();
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	public ArrayList<UserBsReqUpdate> insertBsReqInfoPro(Connection con, UserBsReqUpdate ubru) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<UserBsReqUpdate> list = null;
		
		String query = prop.getProperty("insertBsReqInfoPro");
		
		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, ubru.getRno());
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<UserBsReqUpdate>();
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

}
