package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.SotoDAO;
import com.smhrd.domain.Soto_com;

public class AddSotoCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		System.out.println("[AddSotoCommentCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session =  request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String member_id = loginMember.getId();
		
		System.out.println(member_id);
		
		String soto_no = request.getParameter("soto_no");	
		String sc_contents = request.getParameter("sc_contents");
		
		System.out.println(soto_no);
		System.out.println(sc_contents);
		
		Soto_com sc = new Soto_com(member_id, soto_no, sc_contents);
		
		SotoDAO dao = new SotoDAO();
		int cnt = dao.addSotoComment(sc);
		
		if (cnt > 0) {
			System.out.println("Ott 댓글 작성 성공");
		} else {
			System.out.println("Ott 댓글 작성 실패");
		}
		response.sendRedirect("soto.jsp");
		
		
	}

}
