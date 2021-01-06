package com.kh.thil.admin.adminMain.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.admin.adminMain.model.service.AdminMainService;
import com.kh.thil.admin.adminMain.model.vo.AdminMain;

@WebServlet("/AdminTableMainListServlet.ad")
public class AdminTableMainListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminTableMainListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ArrayList<AdminMain> listReq = new AdminMainService().tableReqListMain();
	
		ArrayList<AdminMain> listBs = new AdminMainService().tableBsListMain();
	
		ArrayList<AdminMain> listQna = new AdminMainService().tableQnaListMain();
		
		ArrayList<AdminMain> listFast = new AdminMainService().tableFastListMain();
		
		String path = "";
		
		path = "views/admin/pages/adminMainStatus2.jsp";
		
		request.setAttribute("listReq", listReq);
		
		request.setAttribute("listBs", listBs);
		
		request.setAttribute("listQna", listQna);
		
		request.setAttribute("listFast", listFast);
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
