package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[UpdateCon]");
		// post방식 데이터 전송 인코딩
		request.setCharacterEncoding("UTF-8");

		// email넣을때
		HttpSession session = request.getSession();
		Member loginMember = (Member) session.getAttribute("loginMember");
		String id = loginMember.getId();

		// form태그 통해서 넘겨준 pw, tel, address 가져오기
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");

		Member m_vo = new Member(id, pw, nick);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(m_vo);

		if (cnt > 0) {
			System.out.println("회원정보 수정 성공");

			// 수정된 값으로 loginMember 세션 값을 재설정
			session.setAttribute("loginMember", m_vo); // 이거 안적으면 수정 전 내용그대로임
			response.sendRedirect("index_test.jsp");
		} else {
			System.out.println("회원정보 수정 실패");
			response.sendRedirect("update2.jsp");
		}

	}

}
