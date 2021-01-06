package com.kh.thil.user.portfolio.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.thil.common.MyFileRenamePolicy;
import com.kh.thil.user.business.model.vo.Business;
import com.kh.thil.user.portfolio.model.service.PortfolioService;
import com.kh.thil.user.portfolio.model.vo.Files;
import com.kh.thil.user.portfolio.model.vo.Portfolio;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class bsPortfolioInsertServlet
 */
@WebServlet("/bsPortInsert.pi")
public class bsPortfolioInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bsPortfolioInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 1024 * 1024 * 10;
			
			String root = request.getSession().getServletContext().getRealPath("/");
			
			System.out.println(root);
			
			String filePath = root + "resources/upLoadFiles/portfolio/";
			
			MultipartRequest multiRequest = new MultipartRequest(request, filePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			ArrayList<String> saveFiles = new ArrayList<>();
			
			ArrayList<String> originFiles = new ArrayList<>();
			
			Enumeration<String> files = multiRequest.getFileNames();
			
			while(files.hasMoreElements()) {
				String name = files.nextElement();
				
				System.out.println("name : " + name);
				
				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getOriginalFileName(name));
			}
			System.out.println("fileSystem name : " + saveFiles);
			System.out.println("originFiles name : " + originFiles);
			
			String multisangho= multiRequest.getParameter("sangho");
			String multicategory = multiRequest.getParameter("category");
			String multiaddress = multiRequest.getParameter("gsaddress");
			int multimoney = Integer.parseInt(multiRequest.getParameter("gmoney"));
			String multitext = multiRequest.getParameter("porttext");
			
			String bno = ((Business) request.getSession().getAttribute("bsUser")).getBno();

	
			
			Portfolio portfolio = new Portfolio();
			portfolio.setBsName(multisangho);
			portfolio.setBno(bno);
			portfolio.setCno(multicategory);
			portfolio.setPortAdd(multiaddress);
			portfolio.setPortPrice(multimoney);
			portfolio.setPortNote(multitext);
			
			ArrayList<Files> fileList = new ArrayList<Files>();
			for(int i = originFiles.size() -1; i >= 0; i--) {
				Files fe = new Files();
				fe.setFileRoute(filePath);
				fe.setOriginName(originFiles.get(i));
				fe.setChangeName(saveFiles.get(i));
				if(i == originFiles.size() -1) {
					fe.setFileLevel("6");
				}else {
					fe.setFileLevel("1");
				}
				
				fileList.add(fe);
			}
			
			System.out.println("업로드 파일 : " + fileList);
			
			Map<String, Object> requestData = new HashMap<String, Object>();
			requestData.put("portfolio", portfolio);
			requestData.put("fileList", fileList);
			
			
			int result = new PortfolioService().insertPortfolio(requestData);
			
			System.out.println("requestData : " + requestData);
			if(result > 0) {
				

			}else {
				//실패시 저장 사진 삭제
				for (int i = 0; i < saveFiles.size(); i++) {
					File faildFile = new File(filePath + saveFiles.get(i));
					
					faildFile.delete();
				}
				request.setAttribute("message", "포트폴리오 등록 실패");
				request.getRequestDispatcher("").forward(request, response);
			}
			
			
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
