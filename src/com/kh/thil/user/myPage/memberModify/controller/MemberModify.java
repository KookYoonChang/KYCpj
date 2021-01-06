package com.kh.thil.user.myPage.memberModify.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.login.model.vo.Login;
import com.kh.thil.user.myPage.memberModify.model.service.ModifyService;
import com.kh.thil.user.myPage.memberModify.model.vo.Modify;
/**
 * Servlet implementation class MemberModify
 */
@WebServlet("/modify.ad")
public class MemberModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberModify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userNick = request.getParameter("userNick");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String userPwd = request.getParameter("userPwd");
		String userPwd2 = request.getParameter("userPwd2");
		System.out.println("tel1 : " + tel1);
		
		if(!userPwd.equals(userPwd2)){
			request.setAttribute("result", "불일치");
			String path = "views/user/myPage/memberModify/memberModify.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			return;
		}else if(tel1=="" || tel2=="" || tel3 == "") {
			request.setAttribute("result", "전화번호미입력");
			String path = "views/user/myPage/memberModify/memberModify.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			return;
		}
		
		String userPhone = tel1 + "-" + tel2 + "-" + tel3;
		String uno = ((Login) request.getSession().getAttribute("loginUser")).getUno();
		

		System.out.println(uno);
		Login modifyMember = new Login();
		modifyMember.setUno(uno);
		modifyMember.setUserNick(userNick);
		modifyMember.setUserPhone(userPhone);
		modifyMember.setUserPwd(userPwd);
	
		
		System.out.println(modifyMember);
		
		Login changedMemberInformation = new ModifyService().modifyMemberInformation(modifyMember);
		
		System.out.println(changedMemberInformation); 
		
		if(changedMemberInformation != null) {
			String path = "/logout";
			request.getRequestDispatcher(path).forward(request, response);
		}else {
			
			request.setAttribute("result", "빈공간");
			String path = "views/user/myPage/memberModify/memberModify.jsp";
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
