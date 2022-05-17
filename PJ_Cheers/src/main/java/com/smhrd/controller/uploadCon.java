package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.net.ApplicationBufferHandler;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.domain.Upload;
import com.smhrd.domain.UploadDAO;


public class uploadCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int maxSize = 1024 * 1024 * 100;
		String encording ="UTF-8";
		
		MultipartRequest multipartrequest = new MultipartRequest(request,directory,maxSize,encording, new DefaultFileRenamePolicy());
	//	String fileName= request.getParameter("file");
    //String fileRealName= request.getParameter("file");
		String fileName= multipartrequest.getOriginalFileName("file");
		String fileRealName = multipartrequest.getFilesystemName("file");
	    Upload u_vo = new Upload(fileName,fileRealName);
		UploadDAO dao = new UploadDAO();
		int cnt = dao.insertUpload(u_vo);	  
	
		if (cnt > 0) {
			// 회원가입 성공 확인
			System.out.println("굿");

		

		} else {
			System.out.println("실패");
			
		}
	
		
		
		
	}

}
