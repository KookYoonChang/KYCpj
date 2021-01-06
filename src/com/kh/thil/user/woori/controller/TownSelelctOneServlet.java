package com.kh.thil.user.woori.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.thil.user.woori.model.vo.Files;
import com.kh.thil.user.woori.model.townService.TownService;
import com.kh.thil.user.woori.model.vo.Town;

/**
 * Servlet implementation class TownSelelctOneServlet
 */
@WebServlet("/selectOne.wo")
public class TownSelelctOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TownSelelctOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str = request.getParameter("str");
		
		System.out.println("str :----------- " + str);
		
		HashMap<String, Object> hmap = new TownService().selectTownOne(str);
		
		System.out.println("selectOne : " + hmap);
		
		
		String page = "";
		if(hmap != null) {
			Town town = (Town) hmap.get("town");
			ArrayList<Files> fileList = (ArrayList<Files>) hmap.get("files");
			
			System.out.println("이건뭐가쯔냐 : " + fileList);
			
			
			request.setAttribute("town", town);
			request.setAttribute("fileList", fileList);
			
			page = "views/user/woori/townReq.jsp";
		} else {
			request.setAttribute("message", "조회 실패!");
			
			page = "views/user/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
