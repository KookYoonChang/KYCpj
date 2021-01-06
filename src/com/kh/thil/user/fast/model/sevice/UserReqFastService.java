package com.kh.thil.user.fast.model.sevice;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.commit;
import static com.kh.thil.common.JDBCTemplate.getConnection;
import static com.kh.thil.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.thil.user.fast.model.dao.UserReqFastDao;
import com.kh.thil.user.fast.model.vo.UserFast;

public class UserReqFastService {

	public int insertUserFast(UserFast iURF) {
		Connection con = getConnection();
		int result = 0;
		
		result = new UserReqFastDao().insertUserFast(con, iURF);
		
		if( result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
