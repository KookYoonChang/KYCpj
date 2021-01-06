package com.kh.thil.user.myPage.myRequest.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.commit;
import static com.kh.thil.common.JDBCTemplate.getConnection;
import static com.kh.thil.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.thil.user.myPage.myRequest.model.dao.UserReqCompleteDao;

public class UserReqCompleteService {

	public int updateCompleteRequest(String rnoOne) {
		Connection con = getConnection();
		int result = 0;
		
		result = new UserReqCompleteDao().updateCompleteRequest(con, rnoOne);
		
		if( result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int insertCompleteRequest(String rnoOne) {
		Connection con = getConnection();
		int result = 0;
		
		result = new UserReqCompleteDao().insertCompleteRequest(con, rnoOne);
		
		if( result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
