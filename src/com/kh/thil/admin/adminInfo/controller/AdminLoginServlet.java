package com.kh.thil.admin.adminInfo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.thil.admin.adminInfo.model.service.AdminService;
import com.kh.thil.admin.adminInfo.model.vo.Admin;

@WebServlet("/adminLogin.ad")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminLoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		request.setCharacterEncoding("UTF-8");
		
		String adminId = request.getParameter("adminId");
		String adminPwd = request.getParameter("adminPwd");
		
//		System.out.println("adminId : " + adminId);
//		System.out.println("adminPwd : " + adminPwd);
		
		Admin requestAdmin = new Admin();
		requestAdmin.setAdminId(adminId);
		requestAdmin.setAdminPwd(adminPwd);
		
		Admin loginAdmin = new AdminService().loginCheck(requestAdmin);
		
		String path ="";
		if(loginAdmin != null) {
			System.out.println("loginAdmin 넘어온 값 : " + loginAdmin);
			HttpSession session = request.getSession();
			session.setAttribute("loginAdmin", loginAdmin);
			
			System.out.println("session 값 체크: " + session);
			path = "AdminTableMainListServlet.ad";
			response.sendRedirect(path);
		} else {
			request.setAttribute("message", "로그인실패");
			
			path ="views/adcommon/errorPage.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
