<%@ page language="java" contentType="text/html; charset=UTF-8 "
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.Toast"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="InsertPostCon" enctype="multipart/form-data" method="post">
	<table>
		<tr>
			<td>멤버id</td>
			<td>
				${loginMember.id}
			</td>
			
		</tr>
		<tr>
			<td>내용</td>
			
			<td><textarea cols=60 rows=3 name="contents"></textarea></td>
		</tr>
		<tr>
			<td><input type="file"  value="이미지업로드"></td>
		</tr>
		
	</table>
		<input type="submit" value="등록">
		
		
	</form>
</body>
</html>