package com.kh.thil.user.myPage.myBsRequest.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.thil.user.myPage.myBsRequest.model.dao.UserBsReqCompleteDao;

public class UserBsReqCompleteService {

	public int updateReqCompleteRT(String rno) {
		Connection con = getConnection();
		
		int result = new UserBsReqCompleteDao().updateReqCompleteRT(con, rno);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public int insertReqCompleteProT(String rno) {
		Connection con = getConnection();
		
		int result = new UserBsReqCompleteDao().insertReqCompleteProT(con, rno);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

}
