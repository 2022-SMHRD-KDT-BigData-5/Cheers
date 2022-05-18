package com.smhrd.controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.Toast;
import com.smhrd.domain.ToastDAO;
import com.smhrd.domain.Toast_com;




public class PostZzanCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String status = request.getParameter("status");
//	    String toast_no = request.getParameter("toast_no");
//		
//	    ToastDAO dao = new ToastDAO();
//		dao.updateZzan(toast_no, status);
//		
//		int zzan = dao.getZzan(toast_no);
//
//		PrintWriter out = response.getWriter();
//		out.print(zzan);
		
		System.out.println("[PostZzanCon]");
		
		HttpSession session =  request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String member_id = loginMember.getId();
			
		String toast_no = request.getParameter("toast_no");	
		
		Toast toast = new Toast(toast_no, member_id);
		
		ToastDAO dao = new ToastDAO();
		int cnt = dao.addZzan(toast);
		
		if (cnt > 0) {
			System.out.println("댓글 작성 성공");
		} else {
			System.out.println("댓글 작성 실패");
		}
		response.sendRedirect("index_select.jsp");
		
		
		
		
	}

}