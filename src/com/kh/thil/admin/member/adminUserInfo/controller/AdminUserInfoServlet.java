package com.kh.thil.admin.member.adminUserInfo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.admin.member.adminUserInfo.model.service.AdminUserInfoService;
import com.kh.thil.admin.member.adminUserInfo.model.vo.AdminUserInfo;


@WebServlet("/AdminUserInfoServlet.ad")
public class AdminUserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminUserInfoServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userNick = request.getParameter("userNick");
		String userName = request.getParameter("userName");
		String userPhone =  request.getParameter("userPhone");
		String bno = request.getParameter("bno");
		String uno = request.getParameter("uno");
		
		AdminUserInfo aui = new AdminUserInfo();
		aui.setUserNick(userNick);
		aui.setUserName(userName);
		aui.setUserPhone(userPhone);
		aui.setBno(bno);
		aui.setUno(uno);

		
		AdminUserInfo updateUserInfo = new AdminUserInfoService().updateInfo(aui);
			
		if(updateUserInfo != null) {
			String path ="views/admin/pages/adminUser/adminUserInfo/adminUserInfo.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
