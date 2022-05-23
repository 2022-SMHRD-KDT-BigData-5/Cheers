package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.ToastDAO;

public class DeleteCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[DeleteCommentCon]");
		request.setCharacterEncoding("UTF-8");

		String tc_no = request.getParameter("tc_no");
		System.out.println(tc_no);
		
		ToastDAO dao = new ToastDAO();
		int cnt = dao.deleteComment(tc_no);

		if (cnt > 0) {
			System.out.println("댓글 삭제 성공");
		} else {
			System.out.println("댓글 삭제 실패");
		}
		response.sendRedirect("toast1.jsp");
	}

}
