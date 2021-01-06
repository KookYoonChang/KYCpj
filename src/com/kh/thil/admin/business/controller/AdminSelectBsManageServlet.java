package com.kh.thil.admin.business.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.admin.business.model.service.AdminBsService;
import com.kh.thil.admin.business.model.vo.AdminBusiness;
import com.kh.thil.common.PageInfo;



@WebServlet("/adminBsManage.ad")
public class AdminSelectBsManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminSelectBsManageServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		ArrayList<Business> list = new AdminService().selectBsManage();
//		
//		String path = "";
//		
//		if(list != null) {
//			path = "views/admin/bsManage.jsp";
//			request.setAttribute("list", list);
//		} else {
//			path = "views/adcommon/errorPage.jsp";
//			request.setAttribute("message", "사업자 조회 실패!");
//		}
//		
//		request.getRequestDispatcher(path).forward(request, response);
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
		
		AdminBsService abs = new AdminBsService();
		
		int listCount = abs.getListBsCount();
		
		maxPage = ((int)((double) listCount / limit + 0.9));
		
		startPage = (((int)((double) currentPage / limit + 0.9)) -1) * 10 + 1;
		
		endPage = startPage + 10 - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		ArrayList<AdminBusiness> list = abs.selectListBsWithPaging(pi);
		
		String path ="";
		if (list != null) {
			path = "views/admin/pages/adminBsManage.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
		
		} else {
			path = "views/admin/adcommon/errorPage.jsp";
			request.setAttribute("message", "사업자 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request,  response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
