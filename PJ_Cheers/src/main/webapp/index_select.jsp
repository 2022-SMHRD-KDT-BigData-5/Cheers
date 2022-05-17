
<%@page import="com.smhrd.domain.Toast"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.ToastDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	ToastDAO dao = new ToastDAO();
	List<Toast> postList = dao.selectAll();
	pageContext.setAttribute("postList",postList);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<caption>
			<h2>랜선짠 게시물 조회</h2>
		</caption>
		<tr>
			<td>게시물번호</td>
			<td>회원아이디</td>
			<td>내용</td>
			<td>작성일자</td>
		</tr>

		<c:forEach var="p" items="${postList}">
			<tr>
				<td><c:out value="${p.toast_no}" /></td>
				<td><c:out value="${p.member_id}" /></td>
				<td><c:out value="${p.contents}" /></td>
				<td><c:out value="${p.toast_date}" /></td>

				<c:choose>
					<c:when test="${loginMember.id eq p.member_id}">
						<td>
							<a href="DeleteCon?toast_no=${p.toast_no}">삭제</a>
						</td>						
					</c:when>
				</c:choose>
				
			</tr>
			<!-- 댓글작성 기능 추가요망
			<tr>
				<td>***댓글작성</td>
			</tr>
			 -->
		</c:forEach>

	</table>
	
		<a href="index_toast.jsp">게시물 작성하는 페이지로 이동</a>
		
</body>
</html>