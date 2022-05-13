<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

	<ul>
		<li><h5>회원가입</h5></li>
		<form action="JoinCon" method="post">
			<li><input type="text" name="email" id="email" placeholder="Email을 입력하세요"></li>
			<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
			<li><input type="text" name="nick" placeholder="닉을 입력하세요"></li>
			<li><input type="submit" value="JoinUs" class="button fit"></li>
		</form>
	</ul>


</body>
</html>