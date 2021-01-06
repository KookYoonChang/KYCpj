package com.kh.thil.admin.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.admin.member.model.service.AdminMemberService;
import com.kh.thil.admin.member.model.vo.AdminMember;
import com.kh.thil.common.PageInfo;



@WebServlet("/adminUserManage.ad")
public class AdminSelectUserManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminSelectUserManageServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//
		// ArrayList<User> list = new AdminService().selectUserManage();
		//
		// String path = "";
		//
		// if(list != null) {
		// path = "views/admin/userManage.jsp";
		// request.setAttribute("list", list);
		// } else {
		// path = "views/adcommon/errorPage.jsp";
		// request.setAttribute("message", "회원 조회 실패!");
		// }
		//
		// request.getRequestDispatcher(path).forward(request, response);
		int currentPage;
		int limit;
		int maxPage;
		int startPage;
		int endPage;

		currentPage = 1;

		if (request.getParameter("currentPage") != null) {

			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		limit = 10;

		AdminMemberService ams = new AdminMemberService();

		int listCount = ams.getListUserCount();
//		System.out.println("전체 회원 수 : " + listCount);

		maxPage = (int)((double) listCount / limit + 0.9);

		startPage = (((int)((double) currentPage / limit + 0.9)) - 1) * 10 + 1;

		endPage = startPage + 10 - 1;

		if (maxPage < endPage) {
			endPage = maxPage;
		}

		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);

		ArrayList<AdminMember> list = ams.selectListUserWithPaging(pi);

		String path = "";
		if (list != null) {
			path = "views/admin/pages/adminUserManage.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);

		} else {
			path = "views/admin/adcommon/errorPage.jsp";
			request.setAttribute("message", "회원 조회 실패!");
		}

		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
