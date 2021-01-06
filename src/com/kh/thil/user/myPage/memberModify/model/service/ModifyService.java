package com.kh.thil.user.myPage.memberModify.model.service;

import static com.kh.thil.common.JDBCTemplate.close;
import static com.kh.thil.common.JDBCTemplate.commit;
import static com.kh.thil.common.JDBCTemplate.getConnection;
import static com.kh.thil.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.thil.user.login.model.dao.LoginDao;
import com.kh.thil.user.login.model.vo.Login;
import com.kh.thil.user.myPage.memberModify.model.dao.ModifyDao;

public class ModifyService {

	public Login modifyMemberInformation(Login modifyMember) {
		Connection con = getConnection();

		Login changedMemberInformation = null;

		ModifyDao md = new ModifyDao();

		int updateResult = md.modifyMemberInformation(con, modifyMember);

		if (updateResult > 0) {

			changedMemberInformation = md.selectChangedMemberInformation(con, modifyMember);

			if (changedMemberInformation != null) {

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
	
	
	public int idDuplicateCheck(Login deleteMember) {
		Connection con = getConnection();
		int result = new ModifyDao().selectLoginCountBy(con, deleteMember);
		
		close(con);
		
		return result;
	}

	
	

	public Login deleteMemberInformation(Login deleteMember) {
		Connection con = getConnection();

		Login changedMemberInformation = null;

		ModifyDao md = new ModifyDao();

		int deleteResult = md.deleteMemberInformation(con, deleteMember);

		if (deleteResult > 0) {
			changedMemberInformation = md.selectChangedMemberInformation(con, deleteMember);
			if (changedMemberInformation != null) {

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
