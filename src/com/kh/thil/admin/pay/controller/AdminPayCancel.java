package com.kh.thil.admin.pay.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.admin.pay.model.service.AdminPayService;


@WebServlet("/adminPayCancel.ad")
public class AdminPayCancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminPayCancel() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rnoOne = request.getParameter("rnoOne");
		
//		1.UPDATE PAY TABLE INSERT
		int result1 = new AdminPayService().updatePayCancelPayT(rnoOne);
		
//		2.INSERT PAY TABLE 
		int result2 = new AdminPayService().insertPayCancelPayT(rnoOne);

//		3.INSERT PROCESS TABLE
		int result3 = new AdminPayService().insertPayCancelProT(rnoOne);
		
//		4.UPDATE REQUEST TABLE 
		int result4 = new AdminPayService().updatePayCancelRT(rnoOne);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
