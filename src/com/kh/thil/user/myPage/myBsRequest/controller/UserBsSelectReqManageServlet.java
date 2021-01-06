package com.kh.thil.user.myPage.myBsRequest.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.common.PageInfo;
import com.kh.thil.user.myPage.myBsRequest.model.service.UserBsRequestService;
import com.kh.thil.user.myPage.myBsRequest.model.vo.UserBsRequest;

@WebServlet("/UserBsSelectReqManageServlet.user")
public class UserBsSelectReqManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserBsSelectReqManageServlet() {
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
		
		UserBsRequestService urs = new UserBsRequestService();
		
		int listCount = urs.userBsListReqCount(request);
		
		maxPage = ((int) ((double) listCount / limit + 0.9));
		
		startPage =(((int) ((double) currentPage / limit + 0.9)) - 1) * 5 + 1;
		
		endPage = startPage + 5 - 1;
		
		if (maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		ArrayList<UserBsRequest> list = urs.userBsListReqWithPaging(pi, request);
		
		String path = "";
		if(list != null) {
			path = "views/user/myBsPage/myBsRequest/myBsRequest.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			
		} else {
			path = "views/user/common/errorPage.jsp";
			request.setAttribute("message", "의뢰 관리 조회 실패y");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
