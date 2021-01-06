package com.kh.thil.user.myPage.myBsRequest.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.myPage.myBsRequest.model.service.UserBsReqCompleteService;

@WebServlet("/UserBsReqCompleteServlet.user")
public class UserBsReqCompleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserBsReqCompleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rno = request.getParameter("rnoOne");
		
		int result1 = new UserBsReqCompleteService().updateReqCompleteRT(rno);
		
		int result2 = new UserBsReqCompleteService().insertReqCompleteProT(rno);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
