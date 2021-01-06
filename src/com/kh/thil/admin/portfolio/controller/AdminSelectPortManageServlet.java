package com.kh.thil.admin.portfolio.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.admin.portfolio.model.service.AdminPortService;
import com.kh.thil.admin.portfolio.model.vo.AdminPort;
import com.kh.thil.common.PageInfo;

@WebServlet("/adminPortManage.ad")
public class AdminSelectPortManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminSelectPortManageServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage;
		int limit;
		int maxPage;
		int startPage;
		int endPage;
		
		currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		limit = 10;
		
		AdminPortService aps = new AdminPortService();
		
		int listCount = aps.getListPostCount();
		
		maxPage = (int)((double) listCount / limit + 0.9);
		
		startPage = (((int)((double) currentPage / limit + 0.9)) - 1) * 10 + 1;
		
		endPage = startPage + 10 - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		ArrayList<AdminPort> list = aps.selectListPostWithPaging(pi);
		
		String path = "";
		
		if(list != null) {
			path = "views/admin/pages/adminPortManage.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			
		} else {
			path = "views/admin/adcommon/errorPage.jsp";
			request.setAttribute("message", "포트폴리오 조회 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
