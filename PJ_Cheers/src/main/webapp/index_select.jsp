
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
<body>

	<table>
		<caption>
			<h2>랜선짠 게시물 조회</h2>
		</caption>

		<c:forEach var="p" items="${postList}">

			<tr>
				<td><b>게시물번호</b></td>
				<td><b>회원아이디</b></td>
				<td><b>작성일자</b></td>
				<td><b>내용</b></td>
				<td><b>삭제</b></td>
				<td><b>추천</b></td>
				<td><b>댓글</b></td>
			</tr>

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

				<!-- <td><button id='zzan'>게시글짠</button><span>${zzan}</span></td> -->

				<td>
					<form action="PostZzanCon">
						<input type="hidden" name="member_id" value="${loginMember.id}"> 
						<input type="hidden" name="toast_no" value="${p.toast_no}"> 
						<input type="submit" value="짠">
<<<<<<< HEAD
					</form>
					
					<c:choose>
							<c:when test="${empty loginMember}">
							</c:when>
					</c:choose>							
				</td>
=======
					</td>
				</form>
				<form class="toast_com_insert" method="post" action="AddCommentCon" align="right">
					<td>
						<input type="text" name="tc_contents" placeholder="댓글을 작성해주세요." style="border: 5mm; width: 150px;">
                        <input type="hidden" name="toast_no" value="${p.toast_no}">
                        <input type="submit" value="등록" style="border: none;">
                    </td>
                </form>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-5/Cheers.git
			</tr>
			<tr>
				<td>댓글번호</td>
				<td>게시물번호</td>
				<td>작성자</td>
				<td>내용</td>
				<td>추천</td>
				<td>작성일자</td>
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
							<td><a href ="DeleteCommentCon?tc_no=${c.tc_no} ">댓글 삭제</a></td>
							
							<!-- 
							<form action="PostZzanCon">
								<input type="hidden" value="">
								<input type="hidden" value="">
								<input type="submit" value="댓글짠">
							</form>
							 -->
						</tr>
					</c:when>
				</c:choose>
			</c:forEach>
			<%
			}	
			%>
		</c:forEach>

	</table>
	
	<form action="index_toast.jsp" enctype="multipart/form-data" method="post">
                     <c:forEach var="tm" items="${postList}">
                        <input type="hidden" value="${tm.toast_no}">
                     </c:forEach>
                     <input type="submit" value="게시물 작성하는 페이지로 이동">
                  </form>
	
	
	
	
	


</body>
</html>