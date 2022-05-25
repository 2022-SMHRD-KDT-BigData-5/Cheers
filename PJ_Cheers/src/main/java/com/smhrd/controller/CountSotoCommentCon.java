package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.SotoDAO;


public class CountSotoCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String soto_no = request.getParameter("soto_no");
		System.out.println("countSotoCommentcon:ott게시글번호 " + soto_no);
		
		//BigDecimal toast_no = new BigDecimal(toast_no_st);
			
		SotoDAO dao=new SotoDAO();
		int cnt = dao.countSotoComment(soto_no);
		PrintWriter out = response.getWriter(); 
		System.out.println("count:댓글수" + cnt);
		out.print(cnt);
		}

	
	}

