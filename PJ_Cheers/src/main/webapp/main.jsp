<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	
<body>
<!-- Wrapper -->
		<div id="wrapper">
		<!-- Header -->
		<header id="header" class="alt" >
			<a href="main.jsp" class="logo"><strong><h1>슬기로운 혼술생활</h1></strong>
			<nav align="right">
				<c:choose>
					<c:when test="${empty loginMember}"><!--if절 (조건작성!) - if~else문  -->
						<a href="#recipe">레시피</a>
						<a href="#ott">OTT매칭</a>
						<a href="#menu">로그인/회원가입</a>
					</c:when>
					
					<c:otherwise><!--else절  -->
						
						<c:if test="${loginMember.id eq 'admin'}"><!-- 단순 if문 -->
							<a href="select.jsp">전체회원정보</a>
						</c:if>
							<a href="LogoutCon">로그아웃</a>
							<a href="update.jsp">개인정보수정</a>
					</c:otherwise>
				</c:choose>
			</nav>
		</header>
		
		<nav id="menu">	
			<ul class="links">
				<li><h5>로그인</h5></li>
				<form action="LoginCon" method="post">
				 	<li><input type="text" name="id"  placeholder="ID를 입력하세요"></li>
					<li><input type="password" name="pw"  placeholder="PW를 입력하세요"></li>
					<li><input type="submit" value="LogIn" class="button fit"></li>
					</form>
			</ul>
			<ul class="actions vertical">
				<li><h5>회원가입</h5></li>
				<form action="JoinCon" method="post">
					<li><input type="text" name="id"  id="id" placeholder="Id를 입력하세요" ></li>
					<li><input type="button" value="id중복체크" onclick="idCheck()"></li>
					<li><span id="check"></span></li>
					<li><input type="password" name="pw"  placeholder="PW를 입력하세요" ></li>
					<li><input type="text" name="nick"  placeholder="닉네임을 입력하세요" ></li>
					<li><input type="submit" value="JoinUs" class="button fit"></li>
				</form>
			</ul>
		</nav>			
		<!-- Banner -->
			<section id="banner" class="major">
				<div class="inner">
				<header class="major">
					<c:choose>
						<c:when test = "${empty loginMember}">
							<h1>로그인 한 세션아이디를 출력해주세요</h1>
						</c:when>
						<c:otherwise>
							<h1>${loginMember.id}님 환영합니다.</h1>
						</c:otherwise>
					</c:choose>
					
			<script>
				function idCheck(){
					let id = $('#id').val();
					
					//jquery로 ajax(비동기통신) 작성
					$.ajax({
						// 전송데이터(json)
						data : {'id': id},
						// 요청 경로(url 매핑값)
						url : 'EmailCheckCon',
						// 요청 방식(get/post)
						method : 'get',
						// 전송데이터 정보(형식/인코딩방식)
						contentType : 'application/json; charset=utf-8',
						// 응답데이터 형식지정
						datatype : 'text',
						success : function(data){//'사용할 수 있다'(응답)-> data('사용할 수 있다')}
							if(data=='true'){
								$('#check').text('사용할 수 있는 아이디')//60행에 스팬태그 아이디가 check
							}else{
								$('#check').text('사용할 수 없는 아이디')
							}
						},
						error : function(){
							alert("통신실패!")
						}
					})
				}
			</script>		
		
		
	<ul>
		<li><h5>회원가입</h5></li>
		<form action="JoinCon" method="post">
			<li><input type="text" name="id" id="id" placeholder="ID를 입력하세요"></li>
			<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
			<li><input type="text" name="nick" placeholder="닉네임을 입력하세요"></li>
			<li><input type="submit" value="JoinUs" class="button fit"></li>
		</form>
	</ul>


</body>
</html>