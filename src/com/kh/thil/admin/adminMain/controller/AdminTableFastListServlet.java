package com.kh.thil.admin.adminMain.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.thil.admin.adminMain.model.service.AdminMainService;
import com.kh.thil.admin.adminMain.model.vo.AdminMain;

@WebServlet("/tableFastList.ad")
public class AdminTableFastListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminTableFastListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<AdminMain> listFast = new AdminMainService().tableFastListMain();
		
		response.setContentType("application/json; charset=UTF-8");
		
		new Gson().toJson(listFast, response.getWriter());

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
