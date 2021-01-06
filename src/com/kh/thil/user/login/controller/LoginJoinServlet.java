package com.kh.thil.user.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.login.model.service.LoginService;
import com.kh.thil.user.login.model.vo.Login;

/**
 * Servlet implementation class LoginJoinServlet
 */
@WebServlet("/join.ad")
public class LoginJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginJoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String userNick = request.getParameter("userNick");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String userPhone = tel1 + "-" + tel2 + "-" + tel3;
		
		String path = "";
		if(userId == "" || userPwd == "" || userName == ""||
			userNick == "" || tel1== "" || tel2==null || tel3 == "") {
			request.setAttribute("result", "정보불충분");
			path ="views/user/login/memberJoinForm.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			
		}
		
		Login newLogin = new Login();
		newLogin.setUserId(userId);
		newLogin.setUserPwd(userPwd);
		newLogin.setUserName(userName);
		newLogin.setUserNick(userNick);
		newLogin.setUserPhone(userPhone);
		
		System.out.println("servlet : " + newLogin);
		
		int result = new LoginService().joinMember(newLogin);
		
		
		String page = "";
		if(result > 0) {
			/*page = "views/user/login/memberLogin.jsp";
			request.setAttribute("result", "가입성공");
			response.sendRedirect(page);*/
			request.setAttribute("result", "가입성공");
			path ="views/user/login/memberLogin.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
