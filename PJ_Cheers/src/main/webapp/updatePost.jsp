<%@ page language="java" contentType="text/html; charset=UTF-8 "
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.Toast"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updatePost</title>
</head>
<body>
<%
	String toast_no = request.getParameter("toast_no");
	String contents = request.getParameter("contents");
	System.out.println(toast_no);
	System.out.println(contents);
	%>
	<form action="UpdatePostCon" method="post">
		<table class="update_table" align="center">
		<tr>
			<td>게시글 번호</td>
			<td style="width: 600px;">
			<input type="hidden" name="toast_no" value="<%=toast_no %>"> <%=toast_no %>
			</td>
		</tr>
		<tr>
			<td>접속자 아이디</td>
			<td style="width: 300px;">${loginMember.id}님</td>
		</tr>
		<tr>
			<td>내용</td>
					<td><textarea cols=60 row=30 name="contents" placeholder="수정할 게시글을 입력하세요"><%=contents %></textarea></td>
				</tr>
				<tr>
					<td>
					<input type="file" value="이미지수정">
					</td>
				</tr>
				<tr>
					<td align="left">
					<input type="submit" value="수정완료">
					</td>
				</tr>
			</table>
</body>
</html>