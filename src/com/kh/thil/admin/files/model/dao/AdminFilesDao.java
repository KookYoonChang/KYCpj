package com.kh.thil.admin.files.model.dao;

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

import com.kh.thil.admin.files.model.vo.AdminFiles;
import com.kh.thil.common.PageInfo;

public class AdminFilesDao {
	private Properties prop = new Properties();
	
	public AdminFilesDao() {
		String fileName = AdminFilesDao.class.getResource("/sql/admin/admin-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int getListFilesCount(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		int listCount = 0;
		
		String query = prop.getProperty("listFilesCount");
		
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

	public ArrayList<AdminFiles> selectListFilesWithPaging(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AdminFiles> list = null;
		
		String query = prop.getProperty("selectListFilesWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<AdminFiles>();
			
			while(rset.next()) {
				AdminFiles af = new AdminFiles();
				af.setFno(rset.getString("FNO"));
				af.setFileType(rset.getString("FILE_TYPE"));
				af.setFileOriginName(rset.getString("FILE_ORIGINNAME"));
				af.setFileChangeName(rset.getString("FILE_CHANGENAME"));
				af.setFileRoute(rset.getString("FILE_ROUTE"));
				af.setFileDate(rset.getDate("FILE_DATE"));
				af.setFileLevel(rset.getString("FILE_LEVEL"));
				af.setFileStatus(rset.getString("FILE_STATUS"));
				
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
