package com.kh.thil.user.fast.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.fast.model.sevice.UserReqFastService;
import com.kh.thil.user.fast.model.vo.UserFast;

@WebServlet("/UserReqFast.user")
public class UserReqFast extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserReqFast() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cno = request.getParameter("cno");
		String fastArea = request.getParameter("fastArea");
		String fastAdd = request.getParameter("fastAdd");
		String fastHopeDate = request.getParameter("fastHopeDate");
		String fastName = request.getParameter("fastName");
		String fastPhone = request.getParameter("fastPhone");
		String fastNote = request.getParameter("fastNote");
		
		UserFast iURF = new UserFast();
		iURF.setCno(cno);
		iURF.setFastArea(fastArea);
		iURF.setFastAdd(fastAdd);
		iURF.setFastHopeDate(fastHopeDate);
		iURF.setFastName(fastName);
		iURF.setFastPhone(fastPhone);
		iURF.setFastNote(fastNote);
		
		int insertFast = new UserReqFastService().insertUserFast(iURF);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
