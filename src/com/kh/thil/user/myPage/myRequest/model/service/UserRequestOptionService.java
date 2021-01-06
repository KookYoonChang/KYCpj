package com.kh.thil.user.myPage.myRequest.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.user.myPage.myRequest.model.dao.UserRequestOptionDao;
import com.kh.thil.user.myPage.myRequest.model.vo.UserOption;

public class UserRequestOptionService {

	public ArrayList<UserOption> selectOptionList(String rnoOne) {
		Connection con = getConnection();
		ArrayList<UserOption> optionList = new UserRequestOptionDao().selectOptionList(con, rnoOne);
		
		close(con);
		
		return optionList;
	}

}
