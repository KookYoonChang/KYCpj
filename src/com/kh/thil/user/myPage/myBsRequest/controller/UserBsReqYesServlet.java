package com.kh.thil.user.myPage.myBsRequest.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.myPage.myBsRequest.model.service.UserBsReqYesService;

@WebServlet("/UserBsReqYes.user")
public class UserBsReqYesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserBsReqYesServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rnoOne = request.getParameter("rnoOne");
		
//		1.UPDATE REQUEST TABLE
		int result1 = new UserBsReqYesService().updateYesRequest(rnoOne);
		
//		2.INSERT PROCESS TABLE
		int result2 = new UserBsReqYesService().insertYesRequest1(rnoOne);
	
//		3.INSERT PROCESS TABLE
		int result3 = new UserBsReqYesService().insertYesRequest2(rnoOne);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
