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

import com.kh.thil.user.myPage.myRequest.model.vo.UserPayment;

public class UserReqPaymentDao {
	Properties prop = new Properties();
	
	public UserReqPaymentDao() {
		String fileName = UserReqPaymentDao.class.getResource("/sql/user/myPage/myRequest/myRequest-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	public ArrayList<UserPayment> reqPayInfo(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<UserPayment> payInfo = null;
		
		String query = prop.getProperty("reqPayInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, rnoOne);
			
			rset = pstmt.executeQuery();
			
			payInfo = new ArrayList<UserPayment>();
			
			while(rset.next()) {
				UserPayment up = new UserPayment();
				up.setPayNo(rset.getString("PAYNO"));
				up.setBsName(rset.getString("BS_NAME"));
				up.setBsTitle(rset.getString("BS_TITLE"));
				up.setCatName(rset.getString("CAT_NAME"));
				up.setReqBuildStart(rset.getString("REQ_BUILDSTART"));
				up.setReqBuildEnd(rset.getString("REQ_BUILDEND"));
				up.setPayPrice(rset.getInt("PAY_PRICE"));
				up.setPayType(rset.getString("PAY_TYPE"));
				up.setPayBank(rset.getString("PAY_BANK"));
				up.setPayAct(rset.getString("PAY_ACT"));
				up.setUserName(rset.getString("USER_NAME"));
				up.setPayCReceipts(rset.getString("PAY_CRECEIPTS"));
				up.setPayDate(rset.getDate("PAY_DATE"));
				up.setPayEmail(rset.getString("PAY_EMAIL"));
				
				payInfo.add(up);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return payInfo;
	}


	public int updatePaymentRequest(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updatePaymentRequestTable");
		
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


	public int updatePaymentPay(Connection con, UserPayment updatePayInfo, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updatePaymentPayTable");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, updatePayInfo.getPayType());
			pstmt.setString(2, updatePayInfo.getPayCReceipts());
			pstmt.setString(3, updatePayInfo.getPayEmail());
			pstmt.setString(4, updatePayInfo.getPayBank());
			pstmt.setString(5, updatePayInfo.getPayAct());
			pstmt.setString(6, rnoOne);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public int insertPaymentPro(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertPaymentProcessTable");
		
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
