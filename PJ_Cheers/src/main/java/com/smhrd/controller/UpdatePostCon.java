package com.smhrd.controller;

import java.io.IOException;
import java.lang.System.Logger;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.ToastDAO;
import com.smhrd.domain.Toast;
import com.smhrd.domain.Toast_com;

public class UpdatePostCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("[UpdatePostCon]");
		System.out.println(request.getParameter("toast_no"));
		System.out.println(request.getParameter("contents"));
//
//		HttpSession session = request.getSession();
//		Member loginMember = (Member) session.getAttribute("loginMember");
//		String id = loginMember.getId();
		
	    BigDecimal toast_no = new BigDecimal(request.getParameter("toast_no"));
	    
		String contents = request.getParameter("contents");
//		String tc_date = request.getParameter("tc_date");
		
		System.out.println(toast_no);
		System.out.println(contents);
		
		Toast to_co = new Toast(toast_no, contents);

		ToastDAO dao = new ToastDAO();
		int cnt = dao.updatePost(to_co);

		if (cnt > 0) {
			System.out.println("게시글 수정 성공");
			// 수정된 값으로 loginMember 세션 값을 재설정
//			session.setAttribute("loginMember", tc_co);
			response.sendRedirect("index_select.jsp");
		} else {
			System.out.println("게시글 수정 실패");
			response.sendRedirect("updatePost.jsp");
		}

	}

}