package com.kh.thil.user.myPage.myRequest.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.thil.user.myPage.myRequest.model.service.UserRequestOptionService;
import com.kh.thil.user.myPage.myRequest.model.vo.UserOption;

@WebServlet("/selectOptionList.user")
public class UserSelectReqManageDetailOption extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserSelectReqManageDetailOption() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rnoOne = request.getParameter("rnoOne");
		System.out.println("유저 상세페이지용 의뢰번호 전달확인 : " + rnoOne);
		
		ArrayList<UserOption> optionList = new UserRequestOptionService().selectOptionList(rnoOne);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(optionList, response.getWriter());
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
