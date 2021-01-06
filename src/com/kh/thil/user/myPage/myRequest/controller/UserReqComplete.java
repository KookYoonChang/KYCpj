package com.kh.thil.user.myPage.myRequest.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.myPage.myRequest.model.service.UserReqCompleteService;

@WebServlet("/UserReqComplete.user")
public class UserReqComplete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserReqComplete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rnoOne = request.getParameter("rnoOne");
		
//		1.UPDATE REQUEST TABLE (rnoOne)
		int result1 = new UserReqCompleteService().updateCompleteRequest(rnoOne);
		
//		2.INSERT PROCESS TABLE (rnoOne)
		int result2 = new UserReqCompleteService().insertCompleteRequest(rnoOne);
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
