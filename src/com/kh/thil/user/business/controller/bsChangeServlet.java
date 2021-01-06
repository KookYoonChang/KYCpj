package com.kh.thil.user.business.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.thil.user.business.model.service.BusinessService;
import com.kh.thil.user.business.model.vo.Business;
import com.kh.thil.user.login.model.vo.Login;

/**
 * Servlet implementation class bsChangeServlet
 */
@WebServlet("/bsChange.me")
public class bsChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bsChangeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] irr = request.getParameterValues("category"); 
		String bsNum = request.getParameter("bsNum");
		String bsDate =request.getParameter("bsDate");
		String bsYear =request.getParameter("bsYear");
		String bsTitle = request.getParameter("bsTitle");
		String bsAdd = request.getParameter("bsAdd");
		String bsCorp = request.getParameter("bsCorp");
		String bsName = request.getParameter("bsName");
		String bsPhone = request.getParameter("bsPhone");
		String bsAs = request.getParameter("bsAs");
		int bsDepo = Integer.parseInt(request.getParameter("bsDeposit"));
		String bsBank = request.getParameter("bsBank");
		String bsAct = request.getParameter("bsAct");
		//앞 view에서 입력한 것 파라미터로 가지고옵니다. int형은 Integer로 변환 해줘야함.
		
		//business vo에 값 설정
		Business bsChangeInsert = new Business();
		bsChangeInsert.setBsNum(bsNum);
		bsChangeInsert.setBsNumDate(bsDate);
		bsChangeInsert.setBsYear(bsYear);
		bsChangeInsert.setBsTitle(bsTitle);
		bsChangeInsert.setBsAdd(bsAdd);
		bsChangeInsert.setBsCorp(bsCorp);
		bsChangeInsert.setBsName(bsName);
		bsChangeInsert.setBsPhone(bsPhone);
		bsChangeInsert.setBsAs(bsAs);
		bsChangeInsert.setBsDepo(bsDepo);
		bsChangeInsert.setBsBank(bsBank);
		bsChangeInsert.setBsAct(bsAct);
		
		//Date를 String으로 받은 이유는 Query문에서 To_date로 변환해주기 위함 
		HttpSession session= request.getSession();
		Login info=(Login)session.getAttribute("loginUser"); 
		String uno = info.getUno();
		
		// 비즈니스 번호를 주기 위해 세션값의 UNO(유저넘버를 가지고옴)
	
		String category= "";
		if(irr != null) {
			for(int i = 0; i < irr.length; i++) {
				if(i == 0) {
					category += irr[i];
				} else {
					category += "," + irr[i];
				}
			}
		}
		//시공 뭐 할건지 결정한걸 변수에서 꺼내서 String형으로 변환. 나중에 변수명으로 바꿔서 executequery로 일일히 하나씩 추가.
		
		int result = new BusinessService().bsChange(bsChangeInsert, uno, category);
		//businessService로 모두 처리할 예정임. 그래서 3개의 변수로 보내서 각각 하나씩 사용해서 사용
		System.out.println("category :" + category);
		System.out.println("모든정보 : "+ bsChangeInsert);
		System.out.println("uno" + uno);
		
		// 업데이트 값이 있으면 main화면으로 보낸다
		String page = "";
		if(result > 0) {
			page = "views/user/main/main.jsp";
			
			response.sendRedirect(page);
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
