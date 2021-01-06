package com.kh.thil.user.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.review.model.service.ReviewService;
import com.kh.thil.user.review.model.vo.ReviewInfo;

/**
 * Servlet implementation class reviewInsertServlet
 */
@WebServlet("/rvInsertInfo.rv")
public class reviewInsertInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reviewInsertInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rno = request.getParameter("num");
		System.out.println("rno 출력넘어오냐?" + rno );
	
		
		ReviewInfo reviewMember = new ReviewService().reviewInfo(rno);
		
		System.out.println("reviewMember" + reviewMember);
		
		String path="";
		if (reviewMember != null) {
			path="/views/user/review/reviewPopup.jsp";
			request.setAttribute("rvInfo", reviewMember);
		}else {
			request.setAttribute("message", "리뷰작성 페이지 접근 오류");
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
