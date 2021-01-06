package com.kh.thil.user.review.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.common.PageInfo;
import com.kh.thil.user.login.model.vo.Login;
import com.kh.thil.user.review.model.service.ReviewService;
import com.kh.thil.user.review.model.vo.Review;

/**
 * Servlet implementation class reviewOneServlet
 */
@WebServlet("/reviewList.rl")
public class reviewListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reviewListServlet() {
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
		String uno = ((Login) request.getSession().getAttribute("loginUser")).getUno();

		ReviewService rvs = new ReviewService();
		
		System.out.println("unoㅁ ㅕㅊ임?" + uno);
		int listCount = rvs.reviewBoardCount(uno);
		
		maxPage = ((int) ((double) listCount / limit + 0.9));
		
		startPage =(((int) ((double) currentPage / limit + 0.9)) - 1) * 5 + 1;
		
		endPage = startPage + 5 - 1;
		
		if (maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		ArrayList<Review> list = rvs.ReviewListWithPaging(pi ,uno);
		System.out.println("리스트확인" + list);
		
		String path = "";
		if(list != null) {
			path = "views/user/myPage/revManage/myReview.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			
		} else {
			path = "views/user/common/errorPage.jsp";
			request.setAttribute("message", "리뷰 관리 조회 실패!");
		}
		
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
