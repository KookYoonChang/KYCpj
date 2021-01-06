package com.kh.thil.user.login.model.dao;



import static com.kh.thil.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.thil.user.business.model.vo.Business;
import com.kh.thil.user.login.model.vo.Login;




public class LoginDao {
	private Properties prop = new Properties();
	
	public LoginDao() {
		String fileName = LoginDao.class.getResource("/sql/user/login/login-query.properties").getPath();
	
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}


	public Login loginCheck(Connection con, Login requestMember) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Login loginUser = null;
		
		String query = prop.getProperty("loginCheck");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getUserId());
			pstmt.setString(2, requestMember.getUserPwd());
			
			rset = pstmt.executeQuery();
		
			if(rset.next()){
				loginUser = new Login();
				
				loginUser.setUno(rset.getString("UNO"));
				loginUser.setUserId(rset.getString("USER_ID"));
				loginUser.setUserPwd(rset.getString("USER_PWD"));
				loginUser.setUserNick(rset.getString("USER_NICK"));
				loginUser.setUserName(rset.getString("USER_NAME"));
				loginUser.setUserPhone(rset.getString("USER_PHONE"));
				loginUser.setUserBank(rset.getString("USER_BANK"));
				loginUser.setUserAct(rset.getString("USER_ACT"));
				loginUser.setUserDate(rset.getDate("USER_DATE"));
				loginUser.setUserStatus(rset.getString("USER_STATUS"));
				loginUser.setBno(rset.getString("BNO"));
			}
			
			System.out.println();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return loginUser;
	}


	public int joinMember(Connection con, Login newLogin) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("joinMember");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, newLogin.getUserId());
			pstmt.setString(2, newLogin.getUserPwd());
			pstmt.setString(3, newLogin.getUserNick());
			pstmt.setString(4, newLogin.getUserName());
			pstmt.setString(5, newLogin.getUserPhone());
			
			
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		return result;
	}


	public int selectLoginCountBy(Connection con, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = prop.getProperty("selectLoginCount");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}


	public Business bsloginCheck(Connection con, String bno) {
		//사업자 전용 로그인 확인 세션용
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Business bsUser = null;
		
		String query = prop.getProperty("bsloginCheck");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, bno);
			//멤버가 가진 bno값이 같으면 business에서 값을 가지고 온다
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				bsUser = new Business();
				
				bsUser.setBno(rset.getString("BNO"));
				bsUser.setBsNum(rset.getString("BS_NUM"));
				bsUser.setBsNumDate(rset.getString("BS_NUMDATE"));
				bsUser.setBsTitle(rset.getString("BS_TITLE"));
				bsUser.setBsAdd(rset.getString("BS_ADD"));
				bsUser.setBsName(rset.getString("BS_NAME"));
				bsUser.setBsPhone(rset.getString("BS_PHONE"));
				bsUser.setBsBank(rset.getString("BS_BANK"));
				bsUser.setBsAct(rset.getString("BS_ACT"));
				bsUser.setBsNote(rset.getString("BS_NOTE"));
				bsUser.setBsBlack(rset.getString("BS_BLACK"));
				bsUser.setBsDate(rset.getString("BS_DATE"));
				bsUser.setBsStatus(rset.getString("BS_STATUS"));
				bsUser.setBsMember(rset.getString("BS_MEMBER"));
				bsUser.setBsYear(rset.getString("BS_YEAR"));
				bsUser.setBsCorp(rset.getString("BS_CORP"));
				bsUser.setBsAs(rset.getString("BS_AS"));
				bsUser.setBsDepo(rset.getInt("BS_DEPO"));
		
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return bsUser;
	}


	public int changeMemberInformation(Connection con, Login changeMember) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, changeMember.getUserPwd());
			pstmt.setString(2, changeMember.getUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}


	public Login selectChangedMemberInformation(Connection con, Login changeMember) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Login changeMemberInformation = null;
		
		String query = prop.getProperty("selectChangedInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, changeMember.getUserId());
			
			rset = pstmt.executeQuery();
			
			
			if(rset.next()) {
				changeMemberInformation = new Login();
				changeMemberInformation.setUno(rset.getString("UNO"));
				changeMemberInformation.setUserId(rset.getString("USER_ID"));
				changeMemberInformation.setUserPwd(rset.getString("USER_PWD"));
				changeMemberInformation.setUserNick(rset.getString("USER_NICK"));
				changeMemberInformation.setUserName(rset.getString("USER_NAME"));
				changeMemberInformation.setUserPhone(rset.getString("USER_PHONE"));
				changeMemberInformation.setUserBank(rset.getString("USER_BANK"));
				changeMemberInformation.setUserAct(rset.getString("USER_ACT"));
				changeMemberInformation.setUserDate(rset.getDate("USER_DATE"));
				changeMemberInformation.setUserStatus(rset.getString("USER_STATUS"));
				changeMemberInformation.setBno(rset.getString("BNO"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			close(rset);
		}
		
		
		return changeMemberInformation;
		
	}

}
