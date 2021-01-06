package com.kh.thil.user.myPage.myBsRequest.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.thil.common.MyFileRenamePolicy;
import com.kh.thil.user.myPage.myBsRequest.model.service.UserBsRequestService;
import com.kh.thil.user.myPage.myBsRequest.model.vo.Files;
import com.kh.thil.user.myPage.myBsRequest.model.vo.UserBsReqUpdate;
import com.oreilly.servlet.MultipartRequest;

@WebServlet("/UserBsReqInputServlet.user")
public class UserBsReqInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserBsReqInputServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (ServletFileUpload.isMultipartContent(request)) {

			int maxSize = 1024 * 1024 * 10;

			String root = request.getSession().getServletContext().getRealPath("/");

			String filePath = root + "resources/upLoadFiles/request/contract/";

			MultipartRequest multiRequest = new MultipartRequest(request, filePath, maxSize, "UTF-8",
					new MyFileRenamePolicy());

			ArrayList<String> saveFiles = new ArrayList<>();

			ArrayList<String> originFiles = new ArrayList<>();

			Enumeration<String> files = multiRequest.getFileNames(); 

			while (files.hasMoreElements()) {
				String name = files.nextElement();

				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getOriginalFileName(name));

			}
			
			String rnoOne = multiRequest.getParameter("rno");
			
			String reqBuildDate = multiRequest.getParameter("reqBuildDate");
			
			String reqPrice = multiRequest.getParameter("reqPrice");

			Files fileList = new Files();

			for (int i = originFiles.size() - 1; i >= 0; i--) {
				
				fileList.setFileRoute(filePath);
				fileList.setFileOriginName(originFiles.get(i));
				fileList.setFileChangeName(saveFiles.get(i));
				fileList.setFileLevel(4);
			}
			System.out.println("upload fileList: " + fileList);
		
//			1.FILES 테이블
			ArrayList<Files> result1 = new UserBsRequestService().insertBsReqInfo(fileList, rnoOne);
			
			
			UserBsReqUpdate ubru = new UserBsReqUpdate();
			
			ubru.setRno(multiRequest.getParameter("rno"));
			ubru.setReqBuildDate(multiRequest.getParameter("ReqBuildDate"));
			ubru.setReqPrice(multiRequest.getParameter("ReqPrice"));
			
//			2. REQUEST 테이블
			ArrayList<UserBsReqUpdate> result2 = new UserBsRequestService().updateBsReqInfo(ubru);
			
//			3. PROCESS 테이블
			ArrayList<UserBsReqUpdate> result3 = new UserBsRequestService().insertBsReqInfoPro(ubru);
		} 
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
