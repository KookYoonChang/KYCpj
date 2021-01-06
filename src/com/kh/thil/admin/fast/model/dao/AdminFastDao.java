package com.kh.thil.admin.fast.model.dao;

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

import com.kh.thil.admin.fast.model.vo.AdminFast;
import com.kh.thil.admin.files.model.dao.AdminFilesDao;
import com.kh.thil.admin.files.model.vo.AdminFiles;
import com.kh.thil.common.PageInfo;

public class AdminFastDao {
	private Properties prop = new Properties();
	
	public AdminFastDao() {
		String fileName = AdminFastDao.class.getResource("/sql/admin/admin-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int getListFastCount(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		int listCount = 0;
		
		String query = prop.getProperty("listFastCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if (rset.next()) {
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

	public ArrayList<AdminFast> selectListFastWithPaging(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AdminFast> list = null;
		
		String query = prop.getProperty("selectListFastWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<AdminFast>();
			
			while(rset.next()) {
				AdminFast af = new AdminFast();
				af.setFastNo(rset.getString("FASTNO"));
				af.setCatName(rset.getString("CAT_NAME"));
				af.setFastArea(rset.getString("FAST_AREA"));
				af.setFastAdd(rset.getString("FAST_ADD"));
				af.setFastHopeDate(rset.getString("FAST_HOPEDATE"));
				af.setFastName(rset.getString("FAST_NAME"));
				af.setFastPhone(rset.getString("FAST_PHONE"));
				af.setFastNote(rset.getString("FAST_NOTE"));
				af.setFastAnsYn(rset.getString("FAST_ANSYN"));
				af.setFastDate(rset.getDate("FAST_DATE"));
				af.setFastAnsDate(rset.getDate("FAST_ANSDATE"));
				
				list.add(af);
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
