package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MemberDAO;


public class DeleteMemberCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.deleteMember(id);
		if(cnt>0) {
		
			System.out.println("회원삭제 성공");
			
			
		}
		else {
			System.out.println("회원삭제 실패");
		}
		
		
	
		
	response.sendRedirect("index_test2.jsp");
	}

		
		
		
		
	}

	


