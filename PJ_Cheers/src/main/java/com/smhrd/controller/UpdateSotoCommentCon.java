package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.SotoDAO;
import com.smhrd.domain.Soto_com;


public class UpdateSotoCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("[UpdateSotoCommentCon]");

		BigDecimal sc_no = new BigDecimal(request.getParameter("sc_no"));
	    
		String sc_contents = request.getParameter("sc_contents");
		
		System.out.println(sc_no);
		System.out.println(sc_contents);
		
		Soto_com tc_co = new Soto_com(sc_contents, sc_no);

		SotoDAO dao = new SotoDAO();
		int cnt = dao.updateSotoComment(tc_co);

		if (cnt > 0) {
			System.out.println("ott 댓글 수정 성공");
			// 수정된 값으로 loginMember 세션 값을 재설정
//			session.setAttribute("loginMember", tc_co);
			response.sendRedirect("soto1.jsp");
		} else {
			System.out.println("ott 댓글 수정 실패");
			response.sendRedirect("soto1.jsp");
		}

	}

}