<%@page import="com.smhrd.domain.Member"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	MemberDAO dao = new MemberDAO();
	List<Member> memberList = dao.selectAll();
	pageContext.setAttribute("memberList", memberList);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	
	<body style="text-align: center;">
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">
						<table>
							<caption><h2>회원관리페이지</h2></caption>
							<tr>
								<td>ID</td>
								<td>닉네임</td>
								<td>삭제</td>
							</tr>
							<c:forEach var = "m" items="${memberList}">
								<tr>
									<td><c:out value="${m.id}"/></td>
									<td><c:out value="${m.nick}"/></td>
									<td><a href="DeleteCon?id=${m.id}">삭제</a></td>
								</tr>
							</c:forEach>
							
						</table>
					</nav>		
					<a href="main.jsp" class="button next scrolly">되돌아가기</a>	
			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</body>
</html>

