package com.kh.thil.user.business.model.service;

import static com.kh.thil.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.thil.user.business.model.dao.BusinessDao;
import com.kh.thil.user.business.model.vo.Business;

public class BusinessService {

	public int bsChange(Business bsChangeInsert, String uno, String category) {
		Connection con = getConnection();
		BusinessDao bs = new BusinessDao();
		
		//일단 사업자추가정보에 추가
		int result = bs.bsChange(con, bsChangeInsert);
		
		if(result > 0) {
			//추가정보가있을시 유저넘버(uno)참조해서  멤버테이블에 bno 부여
			int result2 = bs.bsChange2(con, uno);
			if (result2 > 0) {
				//bno 부여시 카테고리 테이블에 골랐던 카테고리 추가함.
				int result3 = bs.bsChange3(con, category);
				if(result3 > 0) {
					commit(con);
				}else {
					rollback(con);
				}
			}else {
				rollback(con);
			}
			commit(con);
		}else {
			rollback(con);
		}
		
		
		close(con);
		
		
		return result;
	
	}

	public Business updateBsModify(Business bsChangeInsert, String bno) {
		Connection con = getConnection();
		Business changedBsInfo = null;
		BusinessDao bs = new BusinessDao();
		
		//업데이트가 이루어지는지판단한다.
		int result = bs.updateBsModify(con, bsChangeInsert, bno);
		
		if(result > 0) {
			//값 변경된 세팅값을 다시 해준다. 
			changedBsInfo = bs.changedBsInfo(con, bsChangeInsert, bno);
			if(changedBsInfo != null) {
				commit(con);
			}else {
				rollback(con);
			}
		}else {
			rollback(con);
		}
		
		close(con);
		
		return changedBsInfo;
	}

}
