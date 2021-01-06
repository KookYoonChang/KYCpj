package com.kh.thil.user.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SPwdNumCheckServlet
 */
@WebServlet("/sPwdNumCheck.me")
public class SPwdNumCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SPwdNumCheckServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String AuthenticationKey = (String) request.getSession().getAttribute("AuthenticationKey");
		String userId = (String) request.getSession().getAttribute("userId");
		System.out.println(userId);

		String AuthenticationUser = request.getParameter("AuthenticationUser");
		System.out.println(AuthenticationUser);
		if (!AuthenticationKey.equals(AuthenticationUser)) {
			System.out.println("인증번호 일치하지 않음");
			request.setAttribute("result", "인증번호불일치");

			request.getRequestDispatcher("views/user/login/searchPwdNumCheck.jsp").forward(request, response);
			return;
		} else {

			HttpSession userIdCheck = request.getSession();
			// 패스워드 바꿀때 뭘 바꿀지 조건에 들어가는 id
			userIdCheck.setAttribute("userId", userId);
			request.getRequestDispatcher("/views/user/login/memberChangePwd.jsp").forward(request, response);

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
