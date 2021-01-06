package com.kh.thil.user.review.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.review.model.service.ReviewService;
import com.kh.thil.user.review.model.vo.Files;
import com.kh.thil.user.review.model.vo.Review;

/**
 * Servlet implementation class reviewOneServlet
 */
@WebServlet("/reviewOne.ro")
public class reviewOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reviewOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		System.out.println("revno 떴냐?" + num);
		
		HashMap<String, Object> hmap = new ReviewService().selectReview(num);
		
		System.out.println("selectOne Review : " + hmap);
		
		String page = "";
		if(hmap != null) {
			Review review = (Review) hmap.get("review");
			ArrayList<Files> fileList = (ArrayList<Files>) hmap.get("files");
			
			request.setAttribute("review", review);
			request.setAttribute("files", fileList);
			
			page = "views/user/review/reviewerPopup.jsp";
		}else {
			request.setAttribute("message", "리뷰 상세조회 실패!");
			
			page = "views/user/common/errorPage.jsp";
		}
		request.getRequestDispatcher(page).forward(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
