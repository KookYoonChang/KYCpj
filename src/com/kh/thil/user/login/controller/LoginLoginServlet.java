package com.kh.thil.user.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.thil.user.business.model.vo.Business;
import com.kh.thil.user.login.model.service.LoginService;
import com.kh.thil.user.login.model.vo.Login;




/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/login.ad")
public class LoginLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		String path = "";
		if(userId == "") {
			request.setAttribute("result", "아이디없음");
			path ="views/user/login/memberLogin.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			
		}else if(userPwd == "") {
			request.setAttribute("result", "비밀번호없음");
			path ="views/user/login/memberLogin.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
		System.out.println("userId : " + userId);
		System.out.println("userPwd : " + userPwd);
		
		Login requestMember = new Login();
		requestMember.setUserId(userId);
		requestMember.setUserPwd(userPwd);
		System.out.println(requestMember);
		
		Login loginUser = new LoginService().loginCheck(requestMember);
		System.out.println(loginUser);
		
		

		
		/*String path = "";*/
		if(loginUser != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			String bno = loginUser.getBno();
			if(bno != null) {
				Business bsUser = new LoginService().bsloginCheck(bno);
				session.setAttribute("bsUser", bsUser);
				System.out.println(bsUser);
			}
			path = "views/user/main/main.jsp";
			response.sendRedirect(path);
		}else {
			/*request.setAttribute("message", "로그인실패");*/
			request.setAttribute("result", "로그인실패");
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









