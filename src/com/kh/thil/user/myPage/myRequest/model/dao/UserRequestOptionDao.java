package com.kh.thil.user.myPage.myRequest.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.thil.user.myPage.myRequest.model.vo.UserOption;

import static com.kh.thil.common.JDBCTemplate.*;

public class UserRequestOptionDao {
	Properties prop = new Properties();
	
	public UserRequestOptionDao() {
		String fileName = UserRequestOptionDao.class.getResource("/sql/user/myPage/myRequest/myRequest-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<UserOption> selectOptionList(Connection con, String rnoOne) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<UserOption> optionList = null;
		
		String query = prop.getProperty("selectOptionList");
		
		try {
			pstmt = con.prepareStatement(query);
					
			pstmt.setString(1, rnoOne);
			
			rset = pstmt.executeQuery();
			
			optionList = new ArrayList<UserOption>();
			
			while(rset.next()) {
				UserOption uo = new UserOption();
				uo.setOptName(rset.getString("OPT_NAME"));
				uo.setOptOption(rset.getString("OPT_OPTION"));
				
				optionList.add(uo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return optionList;
	}

}
