package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.SotoDAO;
import com.smhrd.domain.Soto_com;
import com.smhrd.domain.Soto;

public class AddSotoCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		System.out.println("[AddSotoCon]");
		
		request.setCharacterEncoding("UTF-8");

		HttpSession session =  request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String member_id = loginMember.getId();
		
		System.out.println(member_id);
		
		String sc_contents = request.getParameter("sc_contents");
		
		System.out.println(sc_contents);
		
		Soto soto = new Soto(member_id, sc_contents);
	
		SotoDAO dao = new SotoDAO();
		int cnt = dao.insertSoto(soto);
		
		if (cnt > 0) {
			System.out.println("ott 게시물 작성 성공");
		} else {
			System.out.println("ott 게시물 작성 실패");
		}
		response.sendRedirect("soto.jsp");
		
		
	}

}