package com.kh.thil.user.portfolio.model.service;

import static com.kh.thil.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.kh.thil.user.portfolio.model.dao.PortfolioDao;
import com.kh.thil.user.portfolio.model.vo.Files;
import com.kh.thil.user.portfolio.model.vo.Portfolio;

public class PortfolioService {

	public ArrayList<Portfolio> selectPortfoiloList(String bno) {
		Connection con = getConnection();
		
		ArrayList<Portfolio> list = new PortfolioDao().selectPortfolioList(con, bno);
		
		return list;
	}

	public int insertPortfolio(Map<String, Object> requestData) {
		Connection con = getConnection();
		
		int result = 0;
		
		PortfolioDao pd = new PortfolioDao();
		Portfolio portfolio = (Portfolio) requestData.get("portfolio");
		ArrayList<Files> fileList = (ArrayList<Files>) requestData.get("fileList");
		
		int result1 = pd.insertPortfolioContent(con, portfolio);
		
		if(result1 > 0) {
			String pfno  = pd.selectCurrval(con);
			
			int result2 = 0;
			for(int i = 0; i< fileList.size(); i++) {
				Files fi = fileList.get(i);
				fi.setFiletype(pfno);
				result2 += pd.insertPortfolio(con, fi);
			}
			if(result2 == fileList.size()) {
				commit(con);
				result = 1;
			}else {
				rollback(con);
				result = 1;
			}
		}else {
			rollback(con);
		}
		
		
		return result;
	}

	public HashMap<String, Object> selectPortOne(String num) {

		Connection con = getConnection();
		
		//해쉬맵에 담아야한다. files랑 portfolio vo가 별개이기때문에
		
		HashMap<String, Object>hmap = null;
		
		PortfolioDao fd = new PortfolioDao();
		
		hmap = fd.selectPortOne(con, num);
		if(hmap != null) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return hmap;
	}

}
