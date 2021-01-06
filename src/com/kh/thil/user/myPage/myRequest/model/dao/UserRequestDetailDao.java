package com.kh.thil.user.myPage.myRequest.model.dao;

import static com.kh.thil.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.kh.thil.user.myPage.myRequest.model.vo.Files;
import com.kh.thil.user.myPage.myRequest.model.vo.UserRequestDetail;

public class UserRequestDetailDao {
	private Properties prop = new Properties();
	
	public UserRequestDetailDao() {
		
		String fileName = UserRequestDao.class.getResource("/sql/user/myPage/myRequest/myRequest-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<UserRequestDetail> UserSelectReqDetail(Connection con, String num) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<UserRequestDetail> list = null;
		
		String query = prop.getProperty("userListReqDetail");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, num);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<UserRequestDetail>();
			
			while(rset.next()) {
				UserRequestDetail urd = new UserRequestDetail();
				urd.setUserId(rset.getString("USER_ID"));
				urd.setUserName(rset.getString("USER_NAME"));
				urd.setUserPhone(rset.getString("USER_PHONE"));
				
				urd.setPayPrice(rset.getInt("PAY_PRICE"));
				urd.setPayBank(rset.getString("PAY_BANK"));
				urd.setPayType(rset.getString("PAY_TYPE"));
				urd.setPayDate(rset.getDate("PAY_DATE"));
				
				urd.setBsNum(rset.getString("BS_NUM"));
				urd.setBsTitle(rset.getString("BS_TITLE"));
				urd.setCatName(rset.getString("CAT_NAME"));
				urd.setBsName(rset.getString("BS_NAME"));
				urd.setBsPhone(rset.getString("BS_PHONE"));
				urd.setBsAdd(rset.getString("BS_ADD"));
				urd.setBsBank(rset.getString("BS_BANK"));
				urd.setBsAct(rset.getString("BS_ACT"));
				

				urd.setReqPrice(rset.getInt("REQ_PRICE"));
				urd.setReqAdd(rset.getString("REQ_ADD"));
				urd.setReqName(rset.getString("REQ_NAME"));
				urd.setReqPhone(rset.getString("REQ_PHONE"));
				urd.setReqArea(rset.getString("REQ_AREA"));
				urd.setReqElv(rset.getString("REQ_ELV"));
				urd.setReqHelp(rset.getString("REQ_HELP"));
				
				urd.setReqNote(rset.getString("REQ_NOTE"));
				
				urd.setProName(rset.getString("PRO_NAME"));
				
				urd.setPaySend(rset.getString("PAY_SEND"));
				list.add(urd);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	public HashMap<String, Object> selectReqDetailOne(Connection con, String num) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, Object> hmap = null;
		
		String query = prop.getProperty("selectReqDetailOne");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,  num);
			
			rset = pstmt.executeQuery();
			
			hmap = new HashMap<String, Object>();
			
			ArrayList<Files> list = new ArrayList<Files>();
			UserRequestDetail urd = new UserRequestDetail();
			
			while(rset.next()) {
				urd.setUserId(rset.getString("USER_ID"));
				urd.setUserName(rset.getString("USER_NAME"));
				urd.setUserPhone(rset.getString("USER_PHONE"));
				
				urd.setPayPrice(rset.getInt("PAY_PRICE"));
				urd.setPayBank(rset.getString("PAY_BANK"));
				urd.setPayType(rset.getString("PAY_TYPE"));
				urd.setPayDate(rset.getDate("PAY_DATE"));
				
				urd.setBsNum(rset.getString("BS_NUM"));
				urd.setBsTitle(rset.getString("BS_TITLE"));
				urd.setCatName(rset.getString("CAT_NAME"));
				urd.setBsName(rset.getString("BS_NAME"));
				urd.setBsPhone(rset.getString("BS_PHONE"));
				urd.setBsAdd(rset.getString("BS_ADD"));
				urd.setBsBank(rset.getString("BS_BANK"));
				urd.setBsAct(rset.getString("BS_ACT"));
				
				urd.setReqHopeStart(rset.getString("REQ_HOPESTART"));
				urd.setReqHopeEnd(rset.getString("REQ_HOPEEND"));
				urd.setReqBuildStart(rset.getString("REQ_BUILDSTART"));
				urd.setReqBuildEnd(rset.getString("REQ_BUILDEND"));
				urd.setReqPrice(rset.getInt("REQ_PRICE"));
				urd.setReqAdd(rset.getString("REQ_ADD"));
				urd.setReqName(rset.getString("REQ_NAME"));
				urd.setReqPhone(rset.getString("REQ_PHONE"));
				urd.setReqArea(rset.getString("REQ_AREA"));
				urd.setReqElv(rset.getString("REQ_ELV"));
				urd.setReqHelp(rset.getString("REQ_HELP"));
				
				urd.setReqNote(rset.getString("REQ_NOTE"));
				
				urd.setProName(rset.getString("PRO_NAME"));
				
				urd.setPaySend(rset.getString("PAY_SEND"));
				
				Files files = new Files();
				files.setFileType(rset.getString("FILE_TYPE"));
				files.setFileOriginName(rset.getString("FILE_ORIGINNAME"));
				files.setFileChangeName(rset.getString("FILE_CHANGENAME"));
				files.setFileLevel(rset.getString("FILE_LEVEL"));
				files.setFileRoute(rset.getString("FILE_ROUTE"));
				
				list.add(files);
			}
			
			hmap.put("urd", urd);
			hmap.put("files", list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return hmap;
	}

}















