package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.SotoDAO;

public class DeleteSotoCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		String soto_no = request.getParameter("soto_no");
		
		SotoDAO dao = new SotoDAO();
		int cnt = dao.deleteSoto(soto_no);

		if (cnt > 0) {
			System.out.println("ott 게시물 삭제 성공");
		} else {
			System.out.println("ott 게시물 삭제 실패");
		}
		response.sendRedirect("Soto.jsp");

	}

}