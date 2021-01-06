package com.kh.thil.user.portfolio.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import static com.kh.thil.common.JDBCTemplate.*;

import com.kh.thil.user.business.model.vo.Business;
import com.kh.thil.user.login.model.vo.Login;
import com.kh.thil.user.portfolio.model.vo.Files;
import com.kh.thil.user.portfolio.model.vo.Portfolio;

public class PortfolioDao {
	private Properties prop = new java.util.Properties();
	
	public PortfolioDao() {
		String fileName = PortfolioDao.class.getResource("/sql/user/portfolio/port-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Portfolio> selectPortfolioList(Connection con, String bno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Portfolio> list = null;
	
		
		String query = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, bno);
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Portfolio>();
			
			while(rset.next()) {
				Portfolio p = new Portfolio();
				p.setCatName(rset.getString("CAT_NAME"));
				p.setPfno(rset.getString("PFNO"));
				p.setPortNote(rset.getString("PORT_NOTE"));
				p.setDate(rset.getDate("PORT_DATE"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return list;
	}

	public int insertPortfolioContent(Connection con, Portfolio portfolio) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertPortfolio");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, portfolio.getBno());
			pstmt.setString(2, portfolio.getCno());
			pstmt.setString(3,  portfolio.getPortAdd());
			pstmt.setInt(4, portfolio.getPortPrice());
			pstmt.setString(5, portfolio.getPortNote());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public String selectCurrval(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		
		String pfno = null;
		
		String query = prop.getProperty("selectCurrval");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				pfno = rset.getString("CURRVAL");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}
	
	
		return pfno;
	}

	public int insertPortfolio(Connection con, Files fi) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertFile");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, fi.getFiletype());
			pstmt.setString(2, fi.getOriginName());
			pstmt.setString(3, fi.getChangeName());
			pstmt.setString(4, fi.getFileRoute());
			pstmt.setString(5, fi.getFileLevel());
	
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}

	public HashMap<String, Object> selectPortOne(Connection con, String num) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, Object> hmap = null;
		
		String query = prop.getProperty("selectPortOne");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, num);
			
			rset = pstmt.executeQuery();
			
			hmap = new HashMap<String, Object>();
			
			ArrayList<Files> list = new ArrayList<Files>();
			Portfolio portfolio = new Portfolio();
			
			while(rset.next()) {
				portfolio.setBno(rset.getString("BNO"));
				portfolio.setCatName(rset.getString("CAT_NAME"));
				portfolio.setPfno(rset.getString("PFNO"));
				portfolio.setCno(rset.getString("CNO"));
				portfolio.setPortAdd(rset.getString("PORT_ADD"));
				portfolio.setPortPrice(rset.getInt("PORT_PRICE"));
				portfolio.setPortNote(rset.getString("PORT_NOTE"));
				portfolio.setDate(rset.getDate("PORT_DATE"));
				portfolio.setBsTitle(rset.getString("BS_TITLE"));
				portfolio.setPortStatus(rset.getString("PORT_STATUS"));
				
				Files fe = new Files();
				fe.setFno(rset.getString("FNO"));
				fe.setFiletype(rset.getString("FILE_TYPE"));
				fe.setOriginName(rset.getString("FILE_ORIGINNAME"));
				fe.setChangeName(rset.getString("FILE_CHANGENAME"));
				fe.setFileRoute(rset.getString("FILE_ROUTE"));
				fe.setDate(rset.getDate("FILE_DATE"));
				fe.setFileLevel(rset.getString("FILE_LEVEL"));
				
				list.add(fe);
			}
			hmap.put("portfolio", portfolio);
			hmap.put("files", list);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return hmap;
	}

}
