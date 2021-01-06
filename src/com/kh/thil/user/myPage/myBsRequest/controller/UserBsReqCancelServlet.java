package com.kh.thil.user.myPage.myBsRequest.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.myPage.myBsRequest.model.service.UserBsReqCancelService;

@WebServlet("/UserBsReqCancelServlet.user")
public class UserBsReqCancelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserBsReqCancelServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rnoOne = request.getParameter("rnoOne");
		String reqNote = request.getParameter("reqNote");		
	
//		1.INSERT PROCESS TABLE
		int result3 = new UserBsReqCancelService().insertReqCancelProT(rnoOne);
		
//		2.UPDATE REQUEST TABLE 
		int result4 = new UserBsReqCancelService().updateReqCancelRT(rnoOne, reqNote);

	}	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
