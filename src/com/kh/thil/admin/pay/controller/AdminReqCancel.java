package com.kh.thil.admin.pay.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.admin.pay.model.service.AdminPayService;

@WebServlet("/AdminReqCancel.ad")
public class AdminReqCancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminReqCancel() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rnoOne = request.getParameter("rnoOne");
		String reqNote = request.getParameter("reqNote");
		
//		1.INSERT PROCESS TABLE
		int result3 = new AdminPayService().insertReqCancelProT(rnoOne);
		
//		2.UPDATE REQUEST TABLE 
		int result4 = new AdminPayService().updateReqCancelRT(rnoOne, reqNote);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
