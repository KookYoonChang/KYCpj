package com.kh.thil.user.qnaPage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.login.model.service.LoginService;
import com.kh.thil.user.login.model.vo.Login;
import com.kh.thil.user.qnaPage.model.service.QnaService;
import com.kh.thil.user.qnaPage.model.vo.Qna;

/**
 * Servlet implementation class QnaInsertServlet
 */
@WebServlet("/qnaInsert.qp")
public class QnaInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public QnaInsertServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String rno = request.getParameter("rno");
		String qkno = request.getParameter("qkno");
		String qnaNote = request.getParameter("qnaNote");
		String check = request.getParameter("checkOne");

		System.out.println("check: "+check);

		String path = "";
		if (check =="" || check == null) {
			request.setAttribute("result", "동의");
			path = "views/user/qnaPage/qnaPage.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			return;

		}
			String uno = ((Login) request.getSession().getAttribute("loginUser")).getUno();

			Qna insertQna = new Qna();
			insertQna.setUno(uno);
			insertQna.setRno(rno);
			insertQna.setQkno(qkno);
			insertQna.setQnaNote(qnaNote);

			System.out.println("servlet : " + insertQna);

			int result = new QnaService().insertQna(insertQna);

			if (result > 0) {
				path = "views/user/main/main.jsp";

				request.getRequestDispatcher(path).forward(request, response);
			} else {
				path = "views/user/qnaPage/qnaPage.jsp";
				request.setAttribute("result", "정보입력");
				request.getRequestDispatcher(path).forward(request, response);
			}
	

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
