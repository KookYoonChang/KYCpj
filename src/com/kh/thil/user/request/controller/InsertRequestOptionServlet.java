package com.kh.thil.user.request.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.thil.user.request.model.vo.RequestDobae;
import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

/**
 * Servlet implementation class InsertRequestOptionServlet
 */
@WebServlet("/insertRequest.ir")
public class InsertRequestOptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertRequestOptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String part = request.getParameter("part");
			int broom =  Integer.parseInt(request.getParameter("broom"));
			int room =  Integer.parseInt(request.getParameter("room"));
			int size = Integer.parseInt(request.getParameter("size"));
			String wall = request.getParameter("wall");
			String ceil = request.getParameter("ceil");
			String molding = request.getParameter("molding");
			String balco = request.getParameter("balco");
			
			ArrayList<RequestDobae> list = null;
			list = new ArrayList<RequestDobae>();
			RequestDobae r = new RequestDobae();
			
			r.setPart(part);
			r.setBroom(broom);
			r.setRoom(room);
			r.setSize(size);
			r.setWall(wall);
			r.setCeil(ceil);
			r.setMolding(molding);
			r.setBalco(balco);
			
			list.add(r);
			
			
			String path = "";
			if(list != null) {
				path = "views/user/request/step2.jsp";
				HttpSession session = request.getSession();
				session.setAttribute("list", list);
				//request.setAttribute("list", list);
				
				response.sendRedirect(path);
			} else {
				path = "views/user/common/errorPage.jsp";
				request.setAttribute("message", "step1 �ɼ����� ����!");
				request.getRequestDispatcher(path).forward(request, response);
			}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
