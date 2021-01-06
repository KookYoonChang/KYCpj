package com.kh.thil.user.portfolio.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.business.model.vo.Business;
import com.kh.thil.user.portfolio.model.service.PortfolioService;
import com.kh.thil.user.portfolio.model.vo.Portfolio;

/**
 * Servlet implementation class bsPortfolioSelectListServlet
 */
@WebServlet("/portList.pl")
public class bsPortfolioSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bsPortfolioSelectListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bno = ((Business) request.getSession().getAttribute("bsUser")).getBno();
		
		ArrayList<Portfolio> list = new PortfolioService().selectPortfoiloList(bno);
		
		
		System.out.println("결과값 나오냐" + list);
		System.out.println(bno);
		
		String path ="";
		if(list != null) {
			
			path ="views/user/myBsPage/myBsPortfolio/businessPort.jsp";
			request.setAttribute("list", list);
		}else {
			path = "views/common/errorPage.jsp";
			request.setAttribute("message", "포트폴리오 페이지 조회 실패");
			
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
