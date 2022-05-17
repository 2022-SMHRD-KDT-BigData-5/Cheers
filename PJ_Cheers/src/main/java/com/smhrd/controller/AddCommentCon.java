package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.ToastDAO;
import com.smhrd.domain.Toast_com;


public class AddCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[AddCommentCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session =  request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String member_id = loginMember.getId();
		
//		BigDecimal tc_no = new BigDecimal(request.getParameter("tc_no"));	
		String toast_no = request.getParameter("toast_no");	
		String tc_contents = request.getParameter("tc_contents");	
//		Timestamp tc_date = Timestamp.valueOf(request.getParameter("tc_date"));
		
		Toast_com tc = new Toast_com(toast_no, member_id, tc_contents);
		
		ToastDAO dao = new ToastDAO();
		int cnt = dao.addComment(tc);
		
		if (cnt > 0) {
			System.out.println("댓글 작성 성공");
		} else {
			System.out.println("댓글 작성 실패");
		}
		response.sendRedirect("index_select.jsp");
		
		
	}

}
