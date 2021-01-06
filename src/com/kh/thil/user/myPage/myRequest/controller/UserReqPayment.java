package com.kh.thil.user.myPage.myRequest.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.thil.user.myPage.myRequest.model.service.UserReqPaymentService;
import com.kh.thil.user.myPage.myRequest.model.vo.UserPayment;

@WebServlet("/UserReqPayment.user")
public class UserReqPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserReqPayment() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rnoOne = request.getParameter("rnoOne");
		int queue = Integer.parseInt(request.getParameter("queue"));
		
		if(queue == 0) {
			ArrayList<UserPayment> payInfo = new UserReqPaymentService().reqPayInfo(rnoOne);
			
			response.setContentType("application/json; charset=UTF-8");
			new Gson().toJson(payInfo, response.getWriter());

		} else if (queue == 1) {
//			1.UPDATE REQUEST TABLE (rnoOne)
			int result1 = new UserReqPaymentService().updatePaymentRequest(rnoOne);
			
//			2.UPDATE PAY TABLE (payType, payDate, payCreceipts, payEmail, payBank, payAct, rnoOne)
			
			String payType = request.getParameter("payType");
			String payCReceipts = request.getParameter("payCReceipts");
			String payEmail = request.getParameter("payEmail");
			String payBank = request.getParameter("payBank");
			String payAct = request.getParameter("payAct");
			
			UserPayment updatePayInfo = new UserPayment();
			updatePayInfo.setPayType(payType);
			updatePayInfo.setPayCReceipts(payCReceipts);
			updatePayInfo.setPayEmail(payEmail);
			updatePayInfo.setPayBank(payBank);
			updatePayInfo.setPayAct(payAct);
			
			int userPayment = new UserReqPaymentService().updatePaymentPay(updatePayInfo, rnoOne);
			
//			3. INSERT PROCESS TABLE (rnoOne)
			int result2 = new UserReqPaymentService().insertPaymentPro(rnoOne);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
