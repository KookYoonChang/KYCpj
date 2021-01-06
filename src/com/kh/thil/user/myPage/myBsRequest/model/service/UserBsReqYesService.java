package com.kh.thil.user.myPage.myBsRequest.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.commit;
import static com.kh.thil.common.JDBCTemplate.getConnection;
import static com.kh.thil.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.thil.user.myPage.myBsRequest.model.dao.UserBsReqYesDao;

public class UserBsReqYesService {

	public int updateYesRequest(String rnoOne) {
		Connection con = getConnection();
		int result = 0;
		
		result = new UserBsReqYesDao().updateYesRequest(con, rnoOne);
		
		if( result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int insertYesRequest1(String rnoOne) {
		Connection con = getConnection();
		int result = 0;
		
		result = new UserBsReqYesDao().insertYesRequest1(con, rnoOne);
		
		if( result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}
	
	public int insertYesRequest2(String rnoOne) {
		Connection con = getConnection();
		int result = 0;
		
		result = new UserBsReqYesDao().insertYesRequest2(con, rnoOne);
		
		if( result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
