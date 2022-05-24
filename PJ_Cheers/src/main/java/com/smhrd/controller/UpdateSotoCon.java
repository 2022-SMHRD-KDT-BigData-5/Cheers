package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Soto;
import com.smhrd.domain.SotoDAO;

public class UpdateSotoCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		System.out.println("[UpdateSotoCon]");
		System.out.println(request.getParameter("soto_no"));
		System.out.println(request.getParameter("soto_contents"));
		
	    int soto_no2 = Integer.parseInt(request.getParameter("soto_no"));
		String soto_contents = request.getParameter("soto_contents");
		
		Soto soto = new Soto(soto_no2, soto_contents);

		SotoDAO dao = new SotoDAO();
		int cnt = dao.updateSoto(soto);

		if (cnt > 0) {
			System.out.println("ott 게시글 수정 성공");
			response.sendRedirect("soto1.jsp");
		} else {
			System.out.println("ott 게시글 수정 실패");
			response.sendRedirect("soto2.jsp");
		}

	}

}