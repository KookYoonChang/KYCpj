package com.kh.thil.user.qnaPage.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.thil.user.login.model.dao.LoginDao;
import com.kh.thil.user.qnaPage.model.vo.Qna;

public class QnaDao {
	private Properties prop = new Properties();
	
	public QnaDao() {
		String fileName = QnaDao.class.getResource("/sql/user/qnaPage/Qna-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public int insertQna(Connection con, Qna insertQna) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		
		String query = prop.getProperty("insertQna");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, insertQna.getUno());
			pstmt.setString(2, insertQna.getQkno());
			pstmt.setString(3, insertQna.getRno());
			pstmt.setString(4, insertQna.getQnaNote());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return result;
	}

}
