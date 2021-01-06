package com.kh.thil.user.portfolio.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.portfolio.model.service.PortfolioService;
import com.kh.thil.user.portfolio.model.vo.Files;
import com.kh.thil.user.portfolio.model.vo.Portfolio;

/**
 * Servlet implementation class bsPortfolioOneServlet
 */
@WebServlet("/portselectOne.tn")
public class bsPortfolioOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bsPortfolioOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String num = request.getParameter("num");
		System.out.println("num : " + num);
		
		HashMap<String, Object> hmap = new PortfolioService().selectPortOne(num);
		
		System.out.println("selectOne port : " + hmap);
		
		String page = "";
		if(hmap != null) {
			Portfolio portfolio = (Portfolio) hmap.get("portfolio");
			ArrayList<Files> fileList = (ArrayList<Files>) hmap.get("files");
			
			request.setAttribute("portfolio", portfolio);
			request.setAttribute("files", fileList);
			
			page = "views/user/portfolio/portfolioviewPopup.jsp";
		}else {
			request.setAttribute("message", "포트폴리오 상세 보기 실패!");
			
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
