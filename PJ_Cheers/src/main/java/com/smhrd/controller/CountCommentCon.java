package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.ToastDAO;


public class CountCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	System.out.println("CountCom");
	String toast_no=request.getParameter("toast_no");
	System.out.println(toast_no);
	
	ToastDAO dao=new ToastDAO();
	int cnt = dao.countComment(toast_no);
	PrintWriter out = response.getWriter(); 
	System.out.println(cnt);
	out.print(cnt);
	}

}
