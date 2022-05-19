package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Favorites;
import com.smhrd.domain.FavoritesDAO;
import com.smhrd.domain.Member;

public class FavoriteAjaxCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("즐겨찾기ajax테스트");
		HttpSession session =  request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String member_id = loginMember.getId();
		
		
//		String member_id = request.getParameter("member_id");		
		BigDecimal recipe_no = new BigDecimal(request.getParameter("recipe_no"));
		String stat = request.getParameter("status");
		
		System.out.println(member_id+ recipe_no+ stat);
		System.out.println(recipe_no);
		System.out.println(stat);
		
		Favorites fav = new Favorites(member_id, recipe_no, stat);
		FavoritesDAO dao = new FavoritesDAO();
		
		if(stat.equals("0")) {
			dao.insertFav2(fav);
		}else {			
//			dao.getfavno(fav);			
			System.out.println("ajax콘 " +dao.getfavno(fav).getFav_no());
			dao.unFav(recipe_no, dao.getfavno(fav).getFav_no());
		}
		
		
		//업데이트된 걸 다시 가져오기
//		PrintWriter out = response.getWriter();
//		out.print(dao.insertFav2(fav));

	}

}