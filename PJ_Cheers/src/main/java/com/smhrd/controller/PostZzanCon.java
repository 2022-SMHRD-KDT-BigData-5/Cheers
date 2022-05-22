package com.smhrd.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.Toast;
import com.smhrd.domain.ToastDAO;




public class PostZzanCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[PostZzanCon]");
		
		HttpSession session =  request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String member_id = loginMember.getId();
		
		String status = request.getParameter("status");
	    String toast_no = request.getParameter("toast_no");
	    
	    System.out.println(member_id);
		System.out.println(toast_no);
		System.out.println(status);
		
		Toast toast = new Toast(member_id, toast_no);
	    ToastDAO dao = new ToastDAO();
		dao.updateZzan(toast_no, status);
		
		
		
		
		
		
		
		
		
		
		
		
		
//		int zzan = dao.getZzan(toast_no);

		
//		if(status.equals("0")) {
//			dao.getZzan(toast);
//		}else {			
////			dao.getfavno(fav);			
//			System.out.println("ajax콘 " +dao.getfavno(fav).getFav_no());
//			dao.unFav(recipe_no, dao.getfavno(fav).getFav_no());
//		}
//		
		
//		BigDecimal toast_no = new BigDecimal(request.getParameter("toast_no"));	
//		
//		HttpSession session =  request.getSession();
//		Member loginMember = (Member)session.getAttribute("loginMember");
//		String member_id = loginMember.getId();
//			
//		Toast toast = new Toast(toast_no, member_id);
//		
//		ToastDAO dao = new ToastDAO();
//		int cnt = dao.addZzan(toast);
//		
//		if (cnt > 0) {
//			System.out.println("짠 추가 성공");
//		} else {
//			System.out.println("짠 추가 실패");
//		}
//		response.sendRedirect("index_select.jsp");
		
		
		
		
	}

}