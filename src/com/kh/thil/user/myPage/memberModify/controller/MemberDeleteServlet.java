package com.kh.thil.user.myPage.memberModify.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.login.model.service.LoginService;
import com.kh.thil.user.login.model.vo.Login;
import com.kh.thil.user.myPage.memberModify.model.service.ModifyService;

/**
 * Servlet implementation class MemberDeleteServlet
 */
@WebServlet("/delete.ad")
public class MemberDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uno = ((Login) request.getSession().getAttribute("loginUser")).getUno();
		String userPwd = request.getParameter("userPwd");
		String userPwd2 = request.getParameter("userPwd2");
		
		
		if(!userPwd.equals(userPwd2)){
			request.setAttribute("result", "불일치");
			String path = "views/user/myPage/memberModify/memberDelete.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			return;
		}
		
		Login deleteMember = new Login();
		deleteMember.setUno(uno);
		deleteMember.setUserPwd(userPwd);
		
		int result = new ModifyService().idDuplicateCheck(deleteMember);
	
		if(result >0 ) {
			Login changedMemberInformation = new ModifyService().deleteMemberInformation(deleteMember);
			String path = "/logout";
			request.getRequestDispatcher(path).forward(request, response);
			
		}else if(result == 0){
			request.setAttribute("result", "비밀번호오류");
			String path = "views/user/myPage/memberModify/memberDelete.jsp";
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
