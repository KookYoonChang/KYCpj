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

@WebServlet("/tableQnaList.ad")
public class AdminTableQnaListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminTableQnaListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<AdminMain> listQna = new AdminMainService().tableQnaListMain();
		
		response.setContentType("application/json; charset=UTF-8");
		
		new Gson().toJson(listQna, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
