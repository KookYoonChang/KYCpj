package com.kh.thil.admin.request.model.dao;

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

import com.kh.thil.admin.request.model.vo.AdminRequest;
import com.kh.thil.common.PageInfo;

public class AdminRequestDao {
	private Properties prop = new Properties();

	public AdminRequestDao() {
		String fileName = AdminRequestDao.class.getResource("/sql/admin/admin-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int getListReqCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;

		String query = prop.getProperty("listReqCount");

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

	public ArrayList<AdminRequest> selectListReqWithPaging(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AdminRequest> list = null;
		
		String query = prop.getProperty("selectListReqWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2,  endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<AdminRequest>();
			
			while(rset.next()) {
				AdminRequest req = new AdminRequest();
				req.setRno(rset.getString("RNO"));
				req.setProName(rset.getString("PRO_NAME"));
				req.setCatName(rset.getString("CAT_NAME"));
				req.setUserId(rset.getString("USER_ID"));
				req.setReqName(rset.getString("REQ_NAME"));
				req.setReqPhone(rset.getString("REQ_PHONE"));
				req.setBsTitle(rset.getString("BS_TITLE"));
				req.setPaySend(rset.getString("PAY_SEND"));
				req.setPayPrice(rset.getInt("PAY_PRICE"));
				req.setReqDate(rset.getDate("REQ_DATE"));
				
				list.add(req);
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
