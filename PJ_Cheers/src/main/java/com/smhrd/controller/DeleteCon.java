package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.ToastDAO;

public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String toast_no = request.getParameter("toast_no");
		
		ToastDAO dao = new ToastDAO();
		int cnt = dao.deletePost(toast_no);

		if (cnt > 0) {
			System.out.println("게시물 삭제 성공");
		} else {
			System.out.println("게시물 삭제 실패");
		}
		response.sendRedirect("index_select.jsp");

	}

}
