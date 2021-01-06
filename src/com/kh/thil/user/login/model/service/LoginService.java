package com.kh.thil.user.login.model.service;


import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.commit;
import static com.kh.thil.common.JDBCTemplate.getConnection;
import static com.kh.thil.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.thil.user.business.model.vo.Business;
import com.kh.thil.user.login.model.dao.LoginDao;
import com.kh.thil.user.login.model.vo.Login;


public class LoginService {

	public Login loginCheck(Login requestMember) {
		
		Connection con = getConnection();
		
		Login loginUser = new LoginDao().loginCheck(con, requestMember);
		
		close(con);
		
		return loginUser;
		
		

	}

	public int joinMember(Login newLogin) {
		Connection con = getConnection();
		
		
		LoginDao ld = new LoginDao();
		
		
		int result = ld.joinMember(con, newLogin);
		
		if(result > 0) {
			commit(con);	
		}else {
			rollback(con);
		}
		
		return result;
		
	}

	public int idDuplicateCheck(String userId) {
		Connection con = getConnection();
		int result = new LoginDao().selectLoginCountBy(con, userId);
		
		close(con);
		
		return result;
	}

	public Business bsloginCheck(String bno) {
		Connection con = getConnection();
		
		Business bsUser = new LoginDao().bsloginCheck(con, bno);
		
		close(con);
		
		return bsUser;
	}

	public Login ChangeMemberInformation(Login changeMember) {
		Connection con = getConnection();
		
		Login changedMemberInformation = null;
		
		LoginDao ld = new LoginDao();
		
		int updateResult = ld.changeMemberInformation(con, changeMember);
		
		if(updateResult > 0) {
			changedMemberInformation = ld.selectChangedMemberInformation(con, changeMember);
			
			if(changedMemberInformation != null) {

				commit(con);
			} else {

				rollback(con);
			}
		} else {
	
			rollback(con);
		}
		
		close(con);
		
		return changedMemberInformation;
	}



	

}
