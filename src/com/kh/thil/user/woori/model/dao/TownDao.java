package com.kh.thil.user.woori.model.dao;


import static com.kh.thil.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

import com.kh.thil.user.woori.model.vo.Files;
import com.kh.thil.user.woori.model.vo.Town;
public class TownDao {
	private Properties prop = new java.util.Properties();
	
	public TownDao() {
		String fileName = TownDao.class.getResource("/sql/user/woori/townSelectList.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	public ArrayList<HashMap<String, Object>> townSelectList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<HashMap<String, Object>> list = null;
	
		
		String query = prop.getProperty("townSelectlist");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<HashMap<String, Object>>();
			
			while(rset.next()) {
				HashMap<String, Object> hmap = new HashMap<String, Object>();
				hmap.put("bno", rset.getString("BNO"));
				hmap.put("bsTitle",rset.getString("BS_TITLE"));
				hmap.put("bsAdd",rset.getString("BS_ADD"));
				hmap.put("catName", rset.getString("CAT_NAME"));
				hmap.put("portPrice", rset.getInt("PORT_PRICE"));
				hmap.put("portNote", rset.getString("PORT_NOTE"));
				hmap.put("portStatus", rset.getString("PORT_STATUS"));
				hmap.put("fno", rset.getString("FNO"));
				hmap.put("originName", rset.getString("FILE_ORIGINNAME"));
				hmap.put("changeName", rset.getString("FILE_CHANGENAME"));
				hmap.put("fileRoute", rset.getString("FILE_ROUTE"));
				hmap.put("cno", rset.getString("CNO"));
				
				
				list.add(hmap);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}
		return list;
	
	}
	
	public HashMap<String, Object> selectTownOne(Connection con, String str) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, Object> hmap = null;
		Town town = null;
		
		String query = prop.getProperty("townSelectOne");
		System.out.println("쿼리 !!! :" + query);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, str);
			
			rset = pstmt.executeQuery();
			
			hmap = new HashMap<String, Object>();
			
			ArrayList<Files> list = new ArrayList<Files>();
			while(rset.next()) {
				town = new Town();
				town.setBno(rset.getString("BNO"));
				town.setBsTitle(rset.getString("BS_TITLE"));
				town.setBsAdd(rset.getString("BS_ADD"));
				town.setBsName(rset.getString("BS_NAME"));
				town.setBsPhone(rset.getString("BS_PHONE"));
				town.setBsYear(rset.getString("BS_YEAR"));
				town.setBsAs(rset.getString("BS_AS"));
				town.setPortNote(rset.getString("PORT_NOTE"));
				town.setCatName(rset.getString("CAT_NAME"));
				Files f = new Files();
				f.setFno(rset.getString("FNO"));
				f.setOriginName(rset.getString("FILE_ORIGINNAME"));
				f.setChangeName(rset.getString("FILE_CHANGENAME"));
				f.setFileRoute(rset.getString("FILE_ROUTE"));
				
				list.add(f);
			}
			
			hmap.put("town", town);
			hmap.put("files", list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return hmap;
	}
	public ArrayList<HashMap<String, Object>> towncatNameSelectList(Connection con, String str) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<HashMap<String, Object>> list = null;
	
		
		String query = prop.getProperty("townCatNameSelectOne");
		
		try {
			pstmt = con.prepareStatement(query);
				
			pstmt.setString(1, str);
			rset = pstmt.executeQuery(query);
			
			list = new ArrayList<HashMap<String, Object>>();
			
			while(rset.next()) {
				HashMap<String, Object> hmap = new HashMap<String, Object>();
				hmap.put("bno", rset.getString("BNO"));
				hmap.put("bsTitle",rset.getString("BS_TITLE"));
				hmap.put("bsAdd",rset.getString("BS_ADD"));
				hmap.put("catName", rset.getString("CAT_NAME"));
				hmap.put("portPrice", rset.getInt("PORT_PRICE"));
				hmap.put("portNote", rset.getString("PORT_NOTE"));
				hmap.put("portStatus", rset.getString("PORT_STATUS"));
				hmap.put("fno", rset.getString("FNO"));
				hmap.put("originName", rset.getString("FILE_ORIGINNAME"));
				hmap.put("changeName", rset.getString("FILE_CHANGENAME"));
				hmap.put("fileRoute", rset.getString("FILE_ROUTE"));
				hmap.put("cno", rset.getString("CNO"));
				
				
				list.add(hmap);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return list;
	}
	/*public HashMap<String, Object> towncatNameSelectList(Connection con, String str) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, Object> hmap = null;
		Town town = null;
		
		String query = prop.getProperty("townCatNameSelectOne");
		System.out.println("쿼리 !!! :" + query);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, str);
			
			rset = pstmt.executeQuery();
			
			hmap = new HashMap<String, Object>();
			
			ArrayList<Files> list = new ArrayList<Files>();
			while(rset.next()) {
				town = new Town();
				town.setCno(rset.getString("CNO"));
				town.setBno(rset.getString("BNO"));
				town.setBsTitle(rset.getString("BS_TITLE"));
				town.setBsAdd(rset.getString("BS_ADD"));
				town.setCatName(rset.getString("CAT_NAME"));
				town.setPortPrice(rset.getInt("PORT_PRICE"));
				town.setPortNote(rset.getString("PORT_NOTE"));
				town.setPortStatus(rset.getString("PORT_STATUS"));
				Files f = new Files();
				f.setFno(rset.getString("FNO"));
				f.setOriginName(rset.getString("FILE_ORIGINNAME"));
				f.setChangeName(rset.getString("FILE_CHANGENAME"));
				f.setFileRoute(rset.getString("FILE_ROUTE"));
				
				list.add(f);
			}
			
			hmap.put("town", town);
			hmap.put("files", list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return hmap;

	}*/
	public ArrayList<Town> towncatNameSelectList(String str, Connection con) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Town> list = null;
		
		String query = prop.getProperty("townCatNameSelectOne");
		System.out.println("쿼리 !!! :" + query);
		
		try {
			pstmt = con.prepareStatement(query);
	         list = new ArrayList<Town>();
	         pstmt.setString(1, str);
	         rset = pstmt.executeQuery();
	         while(rset.next()) {
	        	 Town t = new Town();
	        	 t.setBno(rset.getString("BNO"));
	        	 t.setBsTitle(rset.getString("BS_TITLE"));	        
				 t.setBsAdd(rset.getString("BS_ADD"));
				 t.setCatName(rset.getString("CAT_NAME"));
				 t.setPortPrice(rset.getInt("PORT_PRICE"));
				 t.setPortNote(rset.getString("PORT_NOTE"));
					t.setPortStatus(rset.getString("PORT_STATUS"));
					t.setCno(rset.getString("CNO"));
					Files f = new Files();
					f.setFno(rset.getString("FNO"));
					f.setOriginName(rset.getString("FILE_ORIGINNAME"));
					f.setChangeName(rset.getString("FILE_CHANGENAME"));
					f.setFileRoute(rset.getString("FILE_ROUTE"));
	         }
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return list;
	}
}













