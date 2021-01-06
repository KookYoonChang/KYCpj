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
 * Servlet implementation class ChangePwdServlet
 */
@WebServlet("/changePwd.ad")
public class ChangePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userPwd = request.getParameter("userPwd");
		String userPwd2 = request.getParameter("userPwd2");
		System.out.println(userPwd);
		System.out.println(userPwd2);
		
		if(!userPwd.equals(userPwd2)) {
			
			request.setAttribute("result", "비밀번호입력실패");

			request.getRequestDispatcher("views/user/login/memberChangePwd.jsp").forward(request, response);
			return;
		}else if(userPwd == "") {
			request.setAttribute("result", "비밀번호입력없음");

			request.getRequestDispatcher("views/user/login/memberChangePwd.jsp").forward(request, response);
			return;
		}
		
		String userId = (String) request.getSession().getAttribute("userId");
		
		
		
		Login changeMember = new Login();
		changeMember.setUserId(userId);
		changeMember.setUserPwd(userPwd);
		
		Login changedMemberInformation = new LoginService().ChangeMemberInformation(changeMember);
		
		request.getSession().invalidate();
		
		request.setAttribute("result", "비밀번호수정완료");
		request.getRequestDispatcher("views/user/login/memberLogin.jsp").forward(request, response);
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
