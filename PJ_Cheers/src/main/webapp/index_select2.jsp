
<%@page import="com.smhrd.domain.Toast_com"%>
<%@page import="com.smhrd.domain.Toast"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.ToastDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>
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
<body bgcolor="#f8a092">

	<table border="1">
		<caption>
			<h1>랜선짠 게시물 조회</h1>
		</caption>

		<c:forEach var="p" items="${postList}">

			<tr>
				<td><h2>게시물번호</h2></td>
				<td><h2>회원아이디</h2></td>
				<td><h2>내용</h2></td>
				<td><h2>작성일자</h2></td>
				<td><h2>추천 수</h2></td>
				<td><h2>댓글 수</h2></td>
				
				
			</tr>
			
			<tr>
				<td><c:out value="${p.toast_no}" /></td>
				<td><c:out value="${p.member_id}" /></td>
				<td><c:out value="${p.contents}" /></td>
				<td><c:out value="${p.toast_date}" /></td>
				<td></td>
				<td></td>
				<td><form action="updatePost.jsp">
								<input type="hidden" name="toast_no" value="${p.toast_no}">
								<input type="hidden" name="contents" value="${p.contents}">
								<input type="submit" value="게시글 수정">
							</form></td>
				<td>
				
							<a href="DeleteCon?toast_no=${p.toast_no}">게시글 삭제</a>
						
				</td>

			</tr>
			<tr>
				<td colspan="3"></td>
				<td><h3 >댓글</h3></td>
				<td colspan="4"></td>
				<tr><form action="AddCommentCon">
				<td colspan="3"></td>
					<td><input type="text" name="tc_contents"
						placeholder="댓글을 작성해주세요."> 
						<input type="hidden" name="toast_no" value="${p.toast_no}"> 
						<input type="submit" value="댓글추가">
						</td>
				</form></tr>	
			</tr>
			<tr>
				<td><h3>댓글번호</h3></td>
				<td><h3>게시물번호</h3></td>
				<td><h3>작성자</h3></td>
				<td><h3>내용</h3></td>
				<td><h3>추천</h3></td>
				<td><h3>작성일자</h3></td>
			</tr>

			<%
			String toast_no = "";
			for(int i=0;i<postList.size();i++){
				toast_no = postList.get(i).getToast_no().toString();
				
				List<Toast_com> commList = dao.selectComment(toast_no);
				pageContext.setAttribute("commList",commList);
			%>

			<c:forEach var="c" items="${commList}">
				<c:choose>
					<c:when test="${p.toast_no eq c.toast_no}">
						<tr>
							<td><c:out value="${c.tc_no}" /></td>
							<td><c:out value="${c.toast_no}" /></td>
							<td><c:out value="${c.member_id}" /></td>
							<td><c:out value="${c.tc_contents}" /></td>
							<td><c:out value="${c.tc_zzan}" /></td>
							<td><c:out value="${c.tc_date}" /></td>
							<td>
							<form action="updateComment.jsp">
								<input type="hidden" name="tc_no" value="${c.tc_no}">
								<input type="hidden" name="tc_contents" value="${c.tc_contents}">
								<input type="submit" value="댓글 수정">
							</form>
							<!-- 
							<td><a href ="updateComment.jsp?tc_no=${c.tc_no}">댓글 수정</a></td>
							 -->
							<td><a href ="DeleteCommentCon?tc_no=${c.tc_no} ">댓글 삭제</a></td>
						</tr>
					</c:when>
				</c:choose>
			</c:forEach>
			<%
			}	
			%>
		</c:forEach>

	</table>

	<a href="index_toast.jsp">게시물 작성하는 페이지로 이동</a>

</body>
</html>