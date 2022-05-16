package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Toast;
import com.smhrd.domain.ToastDAO;


public class InsertPostCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		System.out.println("[InsertPostCon]");
		
		request.setCharacterEncoding("UTF-8");

		
//		BigDecimal toast_no = new BigDecimal(request.getParameter("toast_no"));
		String member_id = request.getParameter("member_id");
		String contents = request.getParameter("contents");
//		Timestamp toast_date = Timestamp.valueOf(request.getParameter("toast_date"));
	
//		Toast t_vo = new Toast(toast_no, member_id, contents, toast_date);
		Toast t_vo = new Toast(member_id, contents);
		ToastDAO dao = new ToastDAO();
		int cnt = dao.insertPost(t_vo);

		if (cnt > 0) {
			System.out.println("게시물 작성 성공");

			
//			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
//			request.setAttribute("joinemail", id);
//			rd.forward(request, response);

		} else {
			System.out.println(member_id);
			System.out.println(contents);
			System.out.println("게시물 작성 실패");
			response.sendRedirect("main.jsp");
		}
	
		
	}

}
