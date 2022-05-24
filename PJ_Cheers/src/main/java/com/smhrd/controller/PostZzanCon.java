package com.smhrd.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.Toast;
import com.smhrd.domain.ToastDAO;




public class PostZzanCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[PostZzanCon]");
		
		HttpSession session =  request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String member_id = loginMember.getId();
		
		int zzan_count = Integer.parseInt(request.getParameter("zzan_count"));
	    BigDecimal toast_no = new BigDecimal(request.getParameter("toast_no"));
	    
	    System.out.println(member_id);
		System.out.println(toast_no);
		System.out.println(zzan_count);
		
		BigDecimal zzan_count2 = new BigDecimal(zzan_count);
		
		Toast toast = new Toast(member_id, toast_no, zzan_count2);
	    ToastDAO dao = new ToastDAO();

	    
		if(zzan_count == 1) {
			System.out.println("게시물짠-ajaxcon");
			dao.insertZn(toast);
		}else {
			System.out.println("게시물짠취소-ajaxcon");
			dao.deleteZn(toast);
		}
		
		 int zzan = dao.getZn(toast); 
		 System.out.println(zzan);
		 PrintWriter out = response.getWriter();
		 out.print(zzan);
		 
		

		
	}

}