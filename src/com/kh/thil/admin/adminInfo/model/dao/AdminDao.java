package com.kh.thil.admin.adminInfo.model.dao;

import static com.kh.thil.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.thil.admin.adminInfo.model.vo.Admin;

public class AdminDao {
	private Properties prop = new Properties();

	public AdminDao() {
		String fileName = AdminDao.class.getResource("/sql/admin/admin-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Admin loginCheck(Connection con, Admin requestAdmin) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Admin loginAdmin = null;

		String query = prop.getProperty("loginSelect");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestAdmin.getAdminId());
			pstmt.setString(2, requestAdmin.getAdminPwd());

			rset = pstmt.executeQuery();

			if (rset.next()) {
				loginAdmin = new Admin();

				loginAdmin.setAno(rset.getString("ANO"));
				loginAdmin.setAdminId(rset.getString("ADMIN_ID"));
				loginAdmin.setAdminPwd(rset.getString("ADMIN_PWD"));
				loginAdmin.setAdminName(rset.getString("ADMIN_NAME"));
				loginAdmin.setEnrollDate(rset.getDate("ENROLL_DATE"));
				loginAdmin.setStatus(rset.getString("STATUS"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return loginAdmin;
	}
}
