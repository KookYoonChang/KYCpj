package com.kh.thil.admin.portfolio.model.dao;

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

import com.kh.thil.admin.portfolio.model.vo.AdminPort;
import com.kh.thil.common.PageInfo;

public class AdminPortDao {
	private Properties prop = new Properties();
	
	public AdminPortDao() {
		String fileName = AdminPortDao.class.getResource("/sql/admin/admin-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int getListPortCount(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		int listCount = 0;
		
		String query = prop.getProperty("listPortCount");
		
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

	public ArrayList<AdminPort> selectListPostWithPaging(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AdminPort> list = null;
		
		String query = prop.getProperty("selectListPortWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() -1;
			
			pstmt.setInt(1,  startRow);
			pstmt.setInt(2,  endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<AdminPort>();
			
			while(rset.next()) {
				AdminPort ap = new AdminPort();
				ap.setPfNo(rset.getString("PFNO"));
				ap.setBsTitle(rset.getString("BS_TITLE"));
				ap.setCatName(rset.getString("CAT_NAME"));
				ap.setPortAdd(rset.getString("PORT_ADD"));
				ap.setPortPrice(rset.getInt("PORT_PRICE"));
				ap.setPortNote(rset.getString("PORT_NOTE"));
				ap.setPortDate(rset.getDate("PORT_DATE"));
				
				list.add(ap);
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
