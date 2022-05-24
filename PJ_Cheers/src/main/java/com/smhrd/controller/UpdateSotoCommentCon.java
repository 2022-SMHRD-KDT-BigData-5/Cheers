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
		System.out.println(request.getParameter("sc_no_update"));
		System.out.println(request.getParameter("sc_contents_update"));
		

		BigDecimal sc_no = new BigDecimal(request.getParameter("sc_no_update"));
	    
		String sc_contents = request.getParameter("sc_contents_update");
		
		System.out.println(sc_no);
		System.out.println(sc_contents);
		
		Soto_com tc_co = new Soto_com(sc_no, sc_contents);

		SotoDAO dao = new SotoDAO();
		int cnt = dao.updateSotoComment(tc_co);

		if (cnt > 0) {
			System.out.println("ott 댓글 수정 성공");
			// 수정된 값으로 loginMember 세션 값을 재설정
//			session.setAttribute("loginMember", tc_co);
			response.sendRedirect("Soto.jsp");
		} else {
			System.out.println("ott 댓글 수정 실패");
			response.sendRedirect("Soto.jsp");
		}

	}

}