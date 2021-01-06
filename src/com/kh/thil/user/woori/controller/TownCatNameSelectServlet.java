package com.kh.thil.user.woori.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.thil.user.woori.model.townService.TownService;
import com.kh.thil.user.woori.model.vo.Files;
import com.kh.thil.user.woori.model.vo.Town;

/**
 * Servlet implementation class TownCatNameSelectServlet
 */
@WebServlet("/catNameSelect.cs")
public class TownCatNameSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TownCatNameSelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String str = request.getParameter("str");
		
		System.out.println("str제발 :  " + str);
		
		HashMap<String, Object> hmap = new TownService().towncatNameSelectList(str);
		
		System.out.println("제발: " + hmap);
		
		
		String page = "";
		if(hmap != null) {
			Town town = (Town) hmap.get("town");
			ArrayList<Files> fileList = (ArrayList<Files>) hmap.get("files");
			
			System.out.println("이건뭐가쯔냐 : " + fileList);
			
			
			request.setAttribute("town", town);
			request.setAttribute("fileList", fileList);
			
			page = "views/user/woori/TownCatName.jsp";
		} else {
			request.setAttribute("message", "조회 실패!");
			
			page = "views/user/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(page).forward(request, response);*/
		
		
		
		
		String str = request.getParameter("str");
		ArrayList<HashMap<String, Object>> list = new TownService().towncatNameSelectList(str);
		String page ="";
		if(list != null) {
			page ="views/user/woori/town.jsp";
			request.setAttribute("list", list);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("message", "조회 실패");
			
		}
		request.getRequestDispatcher(page).forward(request, response);
		
		
		
		
		
		/*System.out.println("str :----------- " + str);
		ArrayList<Town> list = new TownService().towncatNameSelectList(str);
		
		
		System.out.println("list" + list);
	
		String page ="";
		if(list != null) {
			page ="views/user/woori/TownCatName.jsp";
			request.setAttribute("list", list);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("message", "조회 실패");
			
		}
		request.getRequestDispatcher(page).forward(request, response);
*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
