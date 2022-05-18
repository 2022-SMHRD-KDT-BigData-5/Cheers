<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.Toast_com"%>
<%@page import="com.smhrd.domain.Toast"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.ToastDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="False"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	ToastDAO dao = new ToastDAO();

	List<Toast> postList = dao.selectPost();
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
			<td>작성일자</td>
			<td>내용</td>
			<td>댓글</td>
		</tr>

		<c:forEach var="p" items="${postList}">
			<tr>
				<td><c:out value="${p.toast_no}" /></td>
				<td><c:out value="${p.member_id}" /></td>
				<td><c:out value="${p.toast_date}" /></td>
				<td><c:out value="${p.contents}" /></td>

				<td>
					<c:choose>
						<c:when test="${loginMember.id eq p.member_id}">
							<a href="DeleteCon?toast_no=${p.toast_no}">삭제</a>
						</c:when>
					</c:choose>
				</td>

				<!-- 댓글작성 기능 추가요망
			
			<td>***댓글작성</td>
		
		
			 -->
				<form action="AddCommentCon">
					<td>
						<input type="text" name="tc_contents" placeholder="댓글을 작성해주세요.">
						<input type="hidden" name="toast_no" value="${p.toast_no}">
						<input type="submit" value="댓글추가">
					</td>
				</form>	
			</tr>
			<tr>
				<td>댓글번호</td>
				<td>게시물번호</td>
				<td>작성자</td>
				<td>내용</td>
				<td>추천</td>
				<td>작성일자</td>
			</tr>
			<tr>
			<%
			String toast_no = request.getParameter("toast_no");
			System.out.println(toast_no);
			List<Toast_com> commList = dao.selectComment(toast_no);
			pageContext.setAttribute("commList",commList);
			
			%>
			
				<c:forEach var="c" items="${commList}">
					<td><c:out value="${c.tc_no}" /></td>
					<td><c:out value="${c.toast_no}" /></td>
					<td><c:out value="${c.member_id}" /></td>
					<td><c:out value="${c.tc_contents}" /></td>
					<td><c:out value="${c.tc_zzan}" /></td>
					<td><c:out value="${c.tc_date}" /></td>
				</c:forEach>
			</tr>
			
		</c:forEach>

	</table>
	
		<a href="index_toast.jsp">게시물 작성하는 페이지로 이동</a>
		
</body>
</html>