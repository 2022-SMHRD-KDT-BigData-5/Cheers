<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<ul>
		<li><h5>회원정보</h5></li>
		<form action="UpdateCon" method="post">
			<li>접속한 id :${loginMember.id}</li>
			<li>비밀번호: <input type="password" name="pw" value="${loginMember.pw}"
				placeholder="PW를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
			<li>닉네임: <input type="text" name="nick" value="${loginMember.nick}"
				placeholder="닉네임을 입력하세요" style="width: 500px; margin: 0 auto;"></li>
			<li><input type="submit" value="Update" class="button fit"
				style="width: 500px; margin: 0 auto;"></li>
		</form>
	</ul>

</body>
</html>