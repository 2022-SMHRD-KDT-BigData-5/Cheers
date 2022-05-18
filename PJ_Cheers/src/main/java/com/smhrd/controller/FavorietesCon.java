package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Favorites;
import com.smhrd.domain.FavoritesDAO;
import com.smhrd.domain.Member;


public class FavorietesCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[FavoritesCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session =  request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String member_id = loginMember.getId();
		
		
		int recipe_no = Integer.parseInt(request.getParameter("recipe_no"));
		
		Favorites fav = new Favorites(member_id, recipe_no);		
		FavoritesDAO dao = new FavoritesDAO();
		int cnt = dao.insertFav(fav);
		
		if (cnt > 0) {
			System.out.println("즐겨찾기추가성공");
		} else {
			System.out.println("즐겨찾기추가실패");
		}
		response.sendRedirect("recipe_home.jsp");

	}

}
