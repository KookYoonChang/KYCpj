package com.kh.thil.user.business.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.business.model.service.BusinessService;
import com.kh.thil.user.business.model.vo.Business;
import com.kh.thil.user.login.model.vo.Login;

/**
 * Servlet implementation class bsModifyServlet
 */
@WebServlet("/bsModify.me")
public class bsModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bsModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bsNum = request.getParameter("bsNum");
		String bsDate =request.getParameter("bsDate");
		String bsYear =request.getParameter("bsYear");
		String bsTitle = request.getParameter("bsTitle");
		String bsAdd = request.getParameter("bsAdd");
		String bsCorp = request.getParameter("bsCorp");
		String bsName = request.getParameter("bsName");
		String bsPhone = request.getParameter("bsPhone");
		String bsAs = request.getParameter("bsAs");
		int bsDepo = Integer.parseInt(request.getParameter("bsDeposit"));
		String bsBank = request.getParameter("bsBank");
		String bsAct = request.getParameter("bsAct");
		
		//로그인세션에서 Bno값을 불러온다
		String bno = ((Business) request.getSession().getAttribute("bsUser")).getBno();
		
		//비즈니스에 값을 담는다
		Business bsChangeInsert = new Business();
		bsChangeInsert.setBsNum(bsNum);
		bsChangeInsert.setBsNumDate(bsDate);
		bsChangeInsert.setBsYear(bsYear);
		bsChangeInsert.setBsTitle(bsTitle);
		bsChangeInsert.setBsAdd(bsAdd);
		bsChangeInsert.setBsCorp(bsCorp);
		bsChangeInsert.setBsName(bsName);
		bsChangeInsert.setBsPhone(bsPhone);
		bsChangeInsert.setBsAs(bsAs);
		bsChangeInsert.setBsDepo(bsDepo);
		bsChangeInsert.setBsBank(bsBank);
		bsChangeInsert.setBsAct(bsAct);

		//서비스쪽으로 update로 보낸다 bno와 bsChangeInsert 값을 보냄.
		Business bsChangedInsert = new BusinessService().updateBsModify(bsChangeInsert, bno);
	
		System.out.println("business test : " + bsChangedInsert);
		System.out.println("bno " + bno);
		
		String path = "";
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
