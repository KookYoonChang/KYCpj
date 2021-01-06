package com.kh.thil.user.woori.model.townService;



import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.thil.user.woori.model.dao.TownDao;
import com.kh.thil.user.woori.model.vo.Files;
import com.kh.thil.user.woori.model.vo.Town;
import static com.kh.thil.common.JDBCTemplate.*;
public class TownService {

	public ArrayList<HashMap<String, Object>> townSelectList() {
		Connection con = getConnection();
			
			ArrayList<HashMap<String, Object>> list = new TownDao().townSelectList(con);
			
			close(con);
			
			return list;
		
	}

	public HashMap<String, Object> selectTownOne(String str) {
		
		Connection con = getConnection();
		
		
		TownDao td = new TownDao();
		
		HashMap<String, Object> hmap = td.selectTownOne(con, str);
			if(hmap != null) {
				commit(con);
			} else {
				rollback(con);
			}
			
		
		close(con);
		
		return hmap;
	}

	/*public ArrayList<Town> towncatNameSelectList(String str) {
		Connection con = getConnection();
		ArrayList<Town> list = new TownDao().towncatNameSelectList(str, con);
		if(list != null) {
			commit(con);
		} else {
			rollback(con);
		}
		
		return list;
	}*/

	/*public HashMap<String, Object> towncatNameSelectList(String str) {
	Connection con = getConnection();
		
		
		TownDao td = new TownDao();
		
		HashMap<String, Object> hmap = td.towncatNameSelectList(con, str);
			if(hmap != null) {
				commit(con);
			} else {
				rollback(con);
			}
			
		
		close(con);
		
		return hmap;
	}*/

	
	

	public ArrayList<HashMap<String, Object>> towncatNameSelectList(String str) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> list = new TownDao().townSelectList(con);
		TownDao td = new TownDao();
		
		ArrayList<HashMap<String, Object>> hmap = td.towncatNameSelectList(con, str);
			if(hmap != null) {
				commit(con);
			} else {
				rollback(con);
			}
		close(con);
		
		return list;
	}

	
	

	
	

}










