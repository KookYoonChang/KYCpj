package com.kh.thil.admin.pay.model.dao;

import static com.kh.thil.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.thil.admin.adminInfo.model.dao.AdminDao;
import com.kh.thil.admin.pay.model.vo.AdminPay;
import com.kh.thil.common.PageInfo;

public class AdminPayDao {
	private Properties prop = new Properties();

	public AdminPayDao() {
		String fileName = AdminDao.class.getResource("/sql/admin/admin-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public int getListPayCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("listPayCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return listCount;
	}

	public ArrayList<AdminPay> selectListPayWithPaging(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AdminPay> list = null;
		
		String query = prop.getProperty("selectListPayWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getLimit() - 1;
			int endRow = startRow + pi.getLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<AdminPay>();
			
			while(rset.next()) {
				AdminPay pa = new AdminPay();
				
				pa.setPayno(rset.getString("PAYNO"));
				pa.setRno(rset.getString("RNO"));
				pa.setReqName(rset.getString("REQ_NAME"));
				pa.setBsTitle(rset.getString("BS_TITLE"));
				pa.setCatName(rset.getString("CAT_NAME"));
				pa.setPayPrice(rset.getInt("PAY_PRICE"));
				pa.setPayFee(rset.getInt("PAY_FEE"));
				pa.setPayType(rset.getString("PAY_TYPE"));
				pa.setPayDate(rset.getDate("PAY_DATE"));
				pa.setPaySend(rset.getString("PAY_SEND"));
				
				list.add(pa);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}
	public int updatePaySend(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;	
		
		String query = prop.getProperty("updatePaySend");
		
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
	public int updatePayCancelPayT(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;	
		
		String query = prop.getProperty("updatePayCancelPayT");
		
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
	public int insertPayCancelPayT(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;	
		
		String query = prop.getProperty("insertPayCancelPayT");
		
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
	public int insertPayCancelProT(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;	
		
		String query = prop.getProperty("insertPayCancelProT");
		
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
	public int updatePayCancelRT(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;	
		
		String query = prop.getProperty("updatePayCancelRT");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, rnoOne);
			pstmt.setString(2, rnoOne);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	public int insertReqCancelProT(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;	
		
		String query = prop.getProperty("insertReqCancelProT");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, rnoOne);
			pstmt.setString(2, rnoOne);
			
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
