package com.kh.thil.user.myPage.myRequest.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.common.PageInfo;
import com.kh.thil.user.login.model.vo.Login;
import com.kh.thil.user.myPage.myRequest.model.service.UserRequestService;
import com.kh.thil.user.myPage.myRequest.model.vo.UserRequest;

@WebServlet("/UserSelectReqManageServlet.user")
public class UserSelectReqManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserSelectReqManageServlet() {
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
		
		limit = 5;
		
		UserRequestService urs = new UserRequestService();
		
		int listCount = urs.userListReqCount(request);
		
		maxPage = ((int) ((double) listCount / limit + 0.9));
		
		startPage =(((int) ((double) currentPage / limit + 0.9)) - 1) * 5 + 1;
		
		endPage = startPage + 5 - 1;
		
		if (maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		ArrayList<UserRequest> list = urs.userListReqWithPaging(pi, request);
		
		String path = "";
		if(list != null) {
			path = "views/user/myPage/myRequest/myRequest.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			
		} else {
			path = "views/user/common/errorPage.jsp";
			request.setAttribute("message", "의뢰 조회 실패y");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
