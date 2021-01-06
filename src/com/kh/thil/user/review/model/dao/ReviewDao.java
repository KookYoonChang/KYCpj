package com.kh.thil.user.review.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import static com.kh.thil.common.JDBCTemplate.*;

import com.kh.thil.common.PageInfo;
import com.kh.thil.user.login.model.vo.Login;
import com.kh.thil.user.review.model.vo.Files;
import com.kh.thil.user.review.model.vo.Review;
import com.kh.thil.user.review.model.vo.ReviewInfo;

public class ReviewDao {

	private Properties prop = new Properties();
	
	public ReviewDao() {
		String fileName = ReviewDao.class.getResource("/sql/user/review/review-query.properties").getPath();
	
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}
	public ReviewInfo reviewMember(Connection con, String rno) {
		PreparedStatement pstmt = null;
		ResultSet rset =null;
		ReviewInfo reviewMember = null;
		
		String query = prop.getProperty("reviewInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, rno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				reviewMember = new ReviewInfo();
				reviewMember.setRno(rset.getString("RNO"));
				reviewMember.setBno(rset.getString("BNO"));
				reviewMember.setUno(rset.getString("UNO"));
				reviewMember.setUserNick(rset.getString("USER_NICK"));
				reviewMember.setBsTitle(rset.getString("BS_TITLE"));
				reviewMember.setCatName(rset.getString("CAT_NAME"));
				reviewMember.setReqAdd(rset.getString("REQ_ADD"));
				reviewMember.setPayPrice(rset.getString("PAY_PRICE"));
		
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
				
				
		return reviewMember;
	}
	
	public int insertReviewContent(Connection con, Review review) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertReview");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, review.getRno());
			pstmt.setString(2, review.getRevNote());
			pstmt.setInt(3, review.getRevPoint());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public String selectCurrval(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		
		String revno = null;
		
		String query = prop.getProperty("selectCurrval");
		
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				//시퀀스의 현재값을 가지고 온다.
				revno = rset.getString("CURRVAL");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		
		return revno;
	}

	public int insertReview(Connection con, Files fi) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertFile");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, fi.getFiletype());
			pstmt.setString(2, fi.getOriginName());
			pstmt.setString(3, fi.getChangeName());
			pstmt.setString(4, fi.getFileRoute());
			pstmt.setString(5, fi.getFileLevel());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	public int getListcount(Connection con, String uno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int listCount = 0;
		
		String query = prop.getProperty("reviewListCount");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,  uno);

			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}
	public ArrayList<Review> ReviewListWithPagning(Connection con, PageInfo pi, String uno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Review> list = null;
		
		String query = prop.getProperty("reviewListWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() - 1;
			
			pstmt.setString(1, uno);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3,  endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Review>();
			
			while(rset.next()) {
				Review rv = new Review();
				rv.setRno(rset.getString("RNO"));
				rv.setRevno(rset.getString("REVNO"));
				rv.setRevDate(rset.getDate("REV_DATE"));
				rv.setRevNote(rset.getString("REV_NOTE"));
				rv.setCatName(rset.getString("CAT_NAME"));
				
				list.add(rv);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}
	public HashMap<String, Object> selectReviewOne(Connection con, String num) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, Object> hmap = null;
		
		String query = prop.getProperty("selectReviewOne");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, num);
			
			rset = pstmt.executeQuery();
			
			hmap = new HashMap<String, Object>();
			
			ArrayList<Files> list = new ArrayList<Files>();
			Review review = new Review();
			
			while(rset.next()) {
				review.setRno(rset.getString("RNO"));
				review.setRevno(rset.getString("REVNO"));
				review.setUno(rset.getString("UNO"));
				review.setBsTitle(rset.getString("BS_TITLE"));
				review.setCatName(rset.getString("CAT_NAME"));
				review.setNickName(rset.getString("USER_NICK"));
				review.setPayPrice(rset.getString("PAY_PRICE"));
				review.setReqAdd(rset.getString("REQ_ADD"));
				review.setRevDate(rset.getDate("REV_DATE"));
				review.setRevNote(rset.getString("REV_NOTE"));
				review.setRevPoint(rset.getInt("REV_POINT"));
				review.setRevStatus(rset.getString("REV_STATUS"));
				
				Files fe = new Files();
				fe.setFno(rset.getString("FNO"));
				fe.setFiletype(rset.getString("FILE_TYPE"));
				fe.setOriginName(rset.getString("FILE_ORIGINNAME"));
				fe.setChangeName(rset.getString("FILE_CHANGENAME"));
				fe.setFileRoute(rset.getString("FILE_ROUTE"));
				fe.setDate(rset.getDate("FILE_DATE"));
				fe.setFileLevel(rset.getString("FILE_LEVEL"));
				
				list.add(fe);
				
			}
			hmap.put("review", review);
			hmap.put("files", list);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return hmap;
	}
	public int mainReviewListCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("mainReviewListcount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listCount;
	}
	public HashMap<String, Object> mainReviewListWithPaging(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, Object> hmap = null;
	
		
		
		String query = prop.getProperty("mainReviewList");

		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			hmap  = new HashMap<String, Object>();
			
			ArrayList<Files> list = new ArrayList<Files>();
			ArrayList<Review> review = new ArrayList<Review>();
			
			while(rset.next()) {
				Review re = new Review();
				re.setRno(rset.getString("RNO"));
				re.setRevno(rset.getString("REVNO"));
				re.setUno(rset.getString("UNO"));
				re.setBsTitle(rset.getString("BS_TITLE"));
				re.setCatName(rset.getString("CAT_NAME"));
				re.setNickName(rset.getString("USER_NICK"));
				re.setPayPrice(rset.getString("PAY_PRICE"));
				re.setReqAdd(rset.getString("REQ_ADD"));
				re.setRevDate(rset.getDate("REV_DATE"));
				re.setRevNote(rset.getString("REV_NOTE"));
				re.setRevPoint(rset.getInt("REV_POINT"));
				re.setRevStatus(rset.getString("REV_STATUS"));
				review.add(re);
				
				Files fe = new Files();
				fe.setFno(rset.getString("FNO"));
				fe.setFiletype(rset.getString("FILE_TYPE"));
				fe.setOriginName(rset.getString("FILE_ORIGINNAME"));
				fe.setChangeName(rset.getString("FILE_CHANGENAME"));
				fe.setFileRoute(rset.getString("FILE_ROUTE"));
				fe.setDate(rset.getDate("FILE_DATE"));
				fe.setFileLevel(rset.getString("FILE_LEVEL"));
				
				list.add(fe);
			}
			hmap.put("review", review);
			hmap.put("files", list);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		
		
		return hmap;
	}
	public int getbsListcount(Connection con, String bno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int listCount = 0;
		
		String query = prop.getProperty("bsReviewListCount");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,  bno);

			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	
	}
	public ArrayList<Review> bsReviewListWithPagning(Connection con, PageInfo pi, String bno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Review> list = null;
		
		String query = prop.getProperty("bsReviewListWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() - 1;
			
			pstmt.setString(1, bno);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3,  endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Review>();
			
			while(rset.next()) {
				Review rv = new Review();
				rv.setRno(rset.getString("RNO"));
				rv.setRevno(rset.getString("REVNO"));
				rv.setRevDate(rset.getDate("REV_DATE"));
				rv.setRevNote(rset.getString("REV_NOTE"));
				rv.setCatName(rset.getString("CAT_NAME"));
				
				list.add(rv);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	
	}


}
