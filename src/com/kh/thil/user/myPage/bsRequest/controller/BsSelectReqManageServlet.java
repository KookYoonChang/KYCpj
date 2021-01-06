package com.kh.thil.user.myPage.bsRequest.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.common.PageInfo;
import com.kh.thil.user.myPage.bsRequest.model.service.BsRequestService;
import com.kh.thil.user.myPage.bsRequest.model.vo.BsRequest;



/**
 * Servlet implementation class BsSelectReqManageServlet
 */
@WebServlet("/BsSelectReqManageServlet.bs")
public class BsSelectReqManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BsSelectReqManageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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
		
		BsRequestService urs = new BsRequestService();
		
		int listCount = urs.bsListReqCount(request);
		
		maxPage = ((int) ((double) listCount / limit + 0.9));
		
		startPage =(((int) ((double) currentPage / limit + 0.9)) - 1) * 5 + 1;
		
		endPage = startPage + 5 - 1;
		
		if (maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		
		ArrayList<BsRequest> list = urs.bsListReqWithPaging(pi, request);
		
		
		String path = "";
		path = "views/user/myBsPage/myBsRequest/bsSigong.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
