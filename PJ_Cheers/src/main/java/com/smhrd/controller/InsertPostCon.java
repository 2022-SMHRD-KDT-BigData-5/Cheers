package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.apache.catalina.core.ApplicationContext;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.domain.Member;
import com.smhrd.domain.Toast;
import com.smhrd.domain.ToastDAO;
import com.smhrd.domain.Upload;
import com.smhrd.domain.UploadDAO;

public class InsertPostCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[InsertPostCon]");

		request.setCharacterEncoding("UTF-8");

		MultipartRequest multi = null;
		int maxSize = 1024 * 1024 * 10;
		ServletContext scontext = getServletContext();
		String path = "img";
		String t_file_path = scontext.getRealPath(path);
		System.out.println(t_file_path);
		HttpSession session = request.getSession();
		Member loginMember = (Member) session.getAttribute("loginMember");
		String member_id = loginMember.getId(); // 아이디!!!

		try {
			multi = new MultipartRequest(request, t_file_path, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (Exception e) {
			e.printStackTrace();
		}

		String t_file_name = multi.getOriginalFileName("upload");
		String t_file_realname = multi.getFilesystemName("upload");
		t_file_path="./img";
//		BigDecimal toast_no = new BigDecimal(request.getParameter("toast_no"));
		String contents = multi.getParameter("contents");
		System.out.println(contents);
		System.out.println(member_id);
		Toast toast = new Toast(member_id, contents, t_file_path, t_file_name, t_file_realname);
//		Timestamp toast_date = Timestamp.valueOf(request.getParameter("toast_date"));
//		Toast t_vo = new Toast(toast_no, member_id, contents, toast_date);
//		Toast upload = new Toast(t_file_path, t_file_name, t_file_server);
//		System.out.println(t_file_path+ t_file_name+ t_file_server);
		System.out.println(t_file_path);
		System.out.println(t_file_name);
		System.out.println(t_file_realname);

		ToastDAO dao = new ToastDAO();
		int cnt = dao.insertPost(toast);

		if (cnt > 0) {
			System.out.println("게시물 작성 성공-조회 페이지로");
			response.sendRedirect("toast1.jsp");

		} else {
			System.out.println(member_id);
			System.out.println(contents);

			System.out.println("게시물 작성 실패-작성 페이지로");
			response.sendRedirect("toast2.jsp");
		}

	}

}


