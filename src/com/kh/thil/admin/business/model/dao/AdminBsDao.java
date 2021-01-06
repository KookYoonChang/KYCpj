package com.kh.thil.admin.business.model.dao;

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

import com.kh.thil.admin.business.model.vo.AdminBusiness;
import com.kh.thil.common.PageInfo;

public class AdminBsDao {
	private Properties prop = new Properties();

	public AdminBsDao() {
		String fileName = AdminBsDao.class.getResource("/sql/admin/admin-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<AdminBusiness> selectBsManage(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<AdminBusiness> list = null;

		String query = prop.getProperty("selectBsList");

		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);

			list = new ArrayList<AdminBusiness>();

			while (rset.next()) {
				AdminBusiness bs = new AdminBusiness();
				bs.setBno(rset.getString("BNO"));
				bs.setBsNum(rset.getString("BS_NUM"));
				bs.setBsTitle(rset.getString("BS_TITLE"));
				bs.setBsName(rset.getString("BS_NAME"));
				bs.setBsPhone(rset.getString("BS_PHONE"));
				bs.setBsBank(rset.getString("BS_BANK"));
				bs.setBsAct(rset.getString("BS_ACT"));
				bs.setBsDate(rset.getDate("BS_DATE"));
				bs.setBsStatus(rset.getString("BS_STATUS"));
				bs.setBsMember(rset.getString("BS_MEMBER"));

				list.add(bs);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}

		return list;
	}

	public int getListBsCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;

		String query = prop.getProperty("listBsCount");

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

	public ArrayList<AdminBusiness> selectListBsWithPaging(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AdminBusiness> list = null;

		String query = prop.getProperty("selectListBsWithPaging");

		try {
			pstmt = con.prepareStatement(query);

			int startRow = (pi.getCurrentPage() - 1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			list = new ArrayList<AdminBusiness>();

			while (rset.next()) {
				AdminBusiness bs = new AdminBusiness();
				bs.setBno(rset.getString("BNO"));
				bs.setBsNum(rset.getString("BS_NUM"));
				bs.setBsTitle(rset.getString("BS_TITLE"));
				bs.setBsName(rset.getString("BS_NAME"));
				bs.setBsPhone(rset.getString("BS_PHONE"));
				bs.setBsBank(rset.getString("BS_BANK"));
				bs.setBsAct(rset.getString("BS_ACT"));
				bs.setBsDate(rset.getDate("BS_DATE"));
				bs.setBsStatus(rset.getString("BS_STATUS"));
				bs.setBsMember(rset.getString("BS_MEMBER"));

				list.add(bs);

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
