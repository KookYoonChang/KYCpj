package com.kh.thil.user.myPage.myRequest.model.service;

import static com.kh.thil.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.thil.user.myPage.myRequest.model.dao.UserRequestDetailDao;
import com.kh.thil.user.myPage.myRequest.model.vo.UserRequestDetail;

public class UserRequestDetailService {

	public ArrayList<UserRequestDetail> UserSelectReqDetail(String num) {
		Connection con = getConnection();
		
		ArrayList<UserRequestDetail> list = new UserRequestDetailDao().UserSelectReqDetail(con, num);
		
		close(con);
		
		return list;
	}

	public HashMap<String, Object> selectReqDetailOne(String num) {
		Connection con = getConnection();
		
		HashMap<String, Object> hmap = null;
		UserRequestDetailDao urdd = new UserRequestDetailDao();
		
		hmap = urdd.selectReqDetailOne(con, num);
		
		if(hmap != null) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return hmap;
	}

}
