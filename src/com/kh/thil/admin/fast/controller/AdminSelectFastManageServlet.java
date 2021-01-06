package com.kh.thil.admin.fast.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.admin.fast.model.service.AdminFastService;
import com.kh.thil.admin.fast.model.vo.AdminFast;
import com.kh.thil.common.PageInfo;

@WebServlet("/adminFastManage.ad")
public class AdminSelectFastManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminSelectFastManageServlet() {
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
		
		AdminFastService afs = new AdminFastService();
		
		int listCount = afs.getListFastCount();
		
		maxPage = ((int)((double) listCount / limit + 0.9));
		
		startPage =(((int)((double) currentPage / limit + 0.9)) -1) * 10 + 1;
		
		endPage = startPage + 10 - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		ArrayList<AdminFast> list = afs.selectListFastWithPaging(pi);
		
		String path ="";
		if(list != null) {
			path = "views/admin/pages/adminFastManage.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
		} else {
			path = "views/admin/adcommon/errorPage.jsp";
			request.setAttribute("message", "파일 조회 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
