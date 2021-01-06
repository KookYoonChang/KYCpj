package com.kh.thil.admin.qna.model.dao;

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
import com.kh.thil.admin.qna.model.vo.AdminQna;
import com.kh.thil.common.PageInfo;


public class AdminQnaDao {
	private Properties prop = new Properties();

	public AdminQnaDao() {
		String fileName = AdminDao.class.getResource("/sql/admin/admin-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int getListQnaCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("listQnaCount");
		
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
	
	
	public ArrayList<AdminQna> selectListQnaWithPaging(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AdminQna> list = null;
		
		String query = prop.getProperty("selectListQnaWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<AdminQna>();
			
			while (rset.next()) {
				AdminQna qa = new AdminQna();
				qa.setUno(rset.getString("UNO"));
				qa.setQno(rset.getString("QNO"));
				qa.setQkName(rset.getString("QK_NAME"));
				qa.setRno(rset.getString("RNO"));
				qa.setQnaNote(rset.getString("QNA_NOTE"));
				qa.setQnaAns(rset.getString("QNA_ANS"));
				qa.setQnaDate(rset.getDate("QNA_DATE"));
				qa.setQnaAnsDate(rset.getDate("QNA_ANSDATE"));
				qa.setQnaAnsYn(rset.getString("QNA_ANSYN"));
				qa.setQnaStatus(rset.getString("QNA_STATUS"));
				
				list.add(qa);
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
