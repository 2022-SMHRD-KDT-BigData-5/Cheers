package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.SotoDAO;

public class DeleteSotoCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[DeleteSotoCommentCon]");
		
		request.setCharacterEncoding("UTF-8");

		String sc_no = request.getParameter("d.sc_no");
		System.out.println("댓글번호"+sc_no);
		SotoDAO dao = new SotoDAO();
		int cnt = dao.deleteSotoComment(sc_no);

		if (cnt > 0) {
			System.out.println("ott 댓글 삭제 성공");
		} else {
			System.out.println("ott 댓글 삭제 실패");
		}
		response.sendRedirect("soto1.jsp");
	}

}
