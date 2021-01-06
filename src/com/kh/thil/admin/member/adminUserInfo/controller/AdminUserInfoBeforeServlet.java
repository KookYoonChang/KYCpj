package com.kh.thil.admin.member.adminUserInfo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.thil.admin.member.adminUserInfo.model.service.AdminUserInfoService;
import com.kh.thil.admin.member.adminUserInfo.model.vo.AdminUserInfo;

@WebServlet("/AdminUserInfoBeforeServlet.ad")
public class AdminUserInfoBeforeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminUserInfoBeforeServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String unoOne = request.getParameter("unoOne");
		
		ArrayList<AdminUserInfo> userInfo = new AdminUserInfoService().selectUserInfo(unoOne);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(userInfo, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
