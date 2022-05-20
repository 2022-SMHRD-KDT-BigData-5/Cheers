<%@page import="com.smhrd.domain.Toast_com"%>
<%@page import="com.smhrd.domain.Toast"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.ToastDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateComment</title>
</head>
<body>
	<%
	String tc_no = request.getParameter("tc_no");
	String tc_contents = request.getParameter("tc_contents");
	System.out.println(tc_no);
	System.out.println(tc_contents);
	%>
		<form action="UpdateCommentCon" method="post">
			<table class="update_table" align="center">
				<tr>
					<td>댓글 번호</td>
					<td style="width: 300px;">
					<input type="hidden" name="tc_no" value="<%=tc_no %>"> <%=tc_no %>
					</td>
				</tr>
				<tr>
					<td>접속자 아이디</td>
					<td style="width: 300px;">${loginMember.id}님</td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea cols=60 row=30 name="tc_contents" placeholder="수정할 댓글을 입력하세요"><%=tc_contents %></textarea></td>
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
		</form>
</body>
</html>