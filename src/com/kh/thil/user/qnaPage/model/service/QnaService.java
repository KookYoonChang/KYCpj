package com.kh.thil.user.qnaPage.model.service;

import static com.kh.thil.common.JDBCTemplate.commit;
import static com.kh.thil.common.JDBCTemplate.getConnection;
import static com.kh.thil.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.thil.user.qnaPage.model.dao.QnaDao;
import com.kh.thil.user.qnaPage.model.vo.Qna;

public class QnaService {

	public int insertQna(Qna insertQna) {
		Connection con = getConnection();

		QnaDao qd = new QnaDao();

		int result = qd.insertQna(con, insertQna);

		if (result > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		return result;

	}

}
