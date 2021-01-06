package com.kh.thil.admin.adminInfo.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.thil.admin.adminInfo.model.dao.AdminDao;
import com.kh.thil.admin.adminInfo.model.vo.Admin;

public class AdminService {

	public Admin loginCheck(Admin requestAdmin) {
		Connection con = getConnection();

		Admin loginAdmin = new AdminDao().loginCheck(con, requestAdmin);

		close(con);

		return loginAdmin;
	}

}
