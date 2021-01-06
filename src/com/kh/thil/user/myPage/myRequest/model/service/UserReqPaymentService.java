package com.kh.thil.user.myPage.myRequest.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.commit;
import static com.kh.thil.common.JDBCTemplate.getConnection;
import static com.kh.thil.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.thil.user.myPage.myRequest.model.dao.UserReqPaymentDao;
import com.kh.thil.user.myPage.myRequest.model.vo.UserPayment;

public class UserReqPaymentService {

	public ArrayList<UserPayment> reqPayInfo(String rnoOne) {
		Connection con = getConnection();
		ArrayList<UserPayment> payInfo = new UserReqPaymentDao().reqPayInfo(con, rnoOne);
		
		close(con);
		
		return payInfo;
	}

	public int updatePaymentRequest(String rnoOne) {
		Connection con = getConnection();
		int result = 0;
		
		result = new UserReqPaymentDao().updatePaymentRequest(con, rnoOne);
		
		if( result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int updatePaymentPay(UserPayment updatePayInfo, String rnoOne) {
		Connection con = getConnection();
		int result = 0;
		
		result = new UserReqPaymentDao().updatePaymentPay(con, updatePayInfo, rnoOne);
		
		if( result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int insertPaymentPro(String rnoOne) {
		Connection con = getConnection();
		int result = 0;
		
		result = new UserReqPaymentDao().insertPaymentPro(con, rnoOne);
		
		if( result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
