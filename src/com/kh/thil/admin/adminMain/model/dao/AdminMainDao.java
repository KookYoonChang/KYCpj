package com.kh.thil.admin.adminMain.model.dao;

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

import com.kh.thil.admin.adminMain.model.vo.AdminMain;

public class AdminMainDao {
	private Properties prop = new Properties();

	public AdminMainDao() {
		String fileName = AdminMainDao.class.getResource("/sql/admin/admin-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}


	public ArrayList<AdminMain> tableReqListMain(Connection con) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AdminMain> listReq = null;
		
		String query = prop.getProperty("tableReqListMain");
		
		try {
			pstmt = con.prepareStatement(query);
			
			rset = pstmt.executeQuery();
			
			listReq = new ArrayList<AdminMain>();
			
			while(rset.next()) {
				AdminMain am = new AdminMain();
				am.setRno(rset.getString("RNO"));
				am.setProName(rset.getString("PRO_NAME"));
				am.setReqBuildEnd(rset.getString("REQ_BUILDEND"));
				am.setPaySend(rset.getString("PAY_SEND"));
				
				listReq.add(am);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return listReq;
	}


	public ArrayList<AdminMain> tableBsListMain(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<AdminMain> listBs = null;
		
		String query = prop.getProperty("tableBsListMain");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			listBs = new ArrayList<AdminMain>();
			
			while(rset.next()) {
				AdminMain am = new AdminMain();
				
				am.setBno(rset.getString("BNO"));
				am.setBsNum(rset.getString("BS_NUM"));
				am.setBsTitle(rset.getString("BS_TITLE"));
				am.setBsMember(rset.getString("BS_MEMBER"));
				
				listBs.add(am);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return listBs;
	}


	public ArrayList<AdminMain> tableQnaListMain(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<AdminMain> listQna = null;
		
		String query = prop.getProperty("tableQnaListMain");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			listQna = new ArrayList<AdminMain>();
			
			while(rset.next()) {
				AdminMain am = new AdminMain();
				
				am.setQno(rset.getString("QNO"));
				am.setQkName(rset.getString("QK_NAME"));
				am.setQnaDate(rset.getDate("QNA_DATE"));
				am.setQnaAnsYn(rset.getString("QNA_ANSYN"));
				
				listQna.add(am);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return listQna;
	}


	public ArrayList<AdminMain> tableFastListMain(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<AdminMain> listFast = null;
		
		String query = prop.getProperty("tableFastListMain");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			listFast = new ArrayList<AdminMain>();
			
			while(rset.next()) {
				AdminMain am = new AdminMain();
				
				am.setFastno(rset.getString("FASTNO"));
				am.setCatName(rset.getString("CAT_NAME"));
				am.setFastDate(rset.getDate("FAST_DATE"));
				am.setFastAnsYn(rset.getString("FAST_ANSYN"));
				
				listFast.add(am);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return listFast;
	}


}
