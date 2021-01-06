package com.kh.thil.admin.member.model.dao;

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

import com.kh.thil.admin.member.model.vo.AdminMember;
import com.kh.thil.common.PageInfo;

public class AdminMemberDao {
	private Properties prop = new Properties();

	public AdminMemberDao() {
		String fileName = AdminMemberDao.class.getResource("/sql/admin/admin-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<AdminMember> selectUserManage(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<AdminMember> list = null;

		String query = prop.getProperty("selectUserList");

		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);

			list = new ArrayList<AdminMember>();

			while (rset.next()) {
				AdminMember am = new AdminMember();
				am.setUno(rset.getString("UNO"));
				am.setUserId(rset.getString("USER_ID"));
				am.setUserNick(rset.getString("USER_NICK"));
				am.setUserName(rset.getString("USER_NAME"));
				am.setUserPhone(rset.getString("USER_PHONE"));
				am.setUserBank(rset.getString("USER_BANK"));
				am.setUserAct(rset.getString("USER_ACT"));
				am.setUserDate(rset.getDate("USER_DATE"));
				am.setUserStatus(rset.getString("USER_STATUS"));
				am.setBno(rset.getString("BNO"));				

				list.add(am);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}

		return list;
	}
	
	public int getListUserCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;

		String query = prop.getProperty("listUserCount");

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

	public ArrayList<AdminMember> selectListUserWithPaging(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AdminMember> list = null;

		String query = prop.getProperty("selectListUserWithPaging");

		try {
			pstmt = con.prepareStatement(query);

			int startRow = (pi.getCurrentPage() - 1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			list = new ArrayList<AdminMember>();

			while (rset.next()) {
				AdminMember am = new AdminMember();
				am.setUno(rset.getString("UNO"));
				am.setUserId(rset.getString("USER_ID"));
				am.setUserNick(rset.getString("USER_NICK"));
				am.setUserName(rset.getString("USER_NAME"));
				am.setUserPhone(rset.getString("USER_PHONE"));
				am.setUserBank(rset.getString("USER_BANK"));
				am.setUserAct(rset.getString("USER_ACT"));
				am.setUserDate(rset.getDate("USER_DATE"));
				am.setUserStatus(rset.getString("USER_STATUS"));
				am.setBno(rset.getString("BNO"));				

				list.add(am);
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
