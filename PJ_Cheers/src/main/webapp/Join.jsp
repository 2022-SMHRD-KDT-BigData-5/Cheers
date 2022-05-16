<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<ul>
		<li><h5>회원가입</h5></li>
		<form action="JoinCon" method="post">
			<li><input type="text" name="id" id="email" placeholder="Id를 입력하세요"></li>
			<li><input type="button" value="id중복체크" onclick="idCheck()"></li>
			<li><span id="check"></span></li>
			<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
			<li><input type="text" name="nick" placeholder="닉네임을 입력하세요"></li>
			<li><input type="submit" value="JoinUs" class="button fit"></li>
		</form>
	</ul>
	
	
	<!-- Scripts -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	
	<script>
		function idCheck(){
			let id = $("#email").val();
			
			// jquery로 ajax(비동기통신)작성
			$.ajax({
				// 전송데이터(json)
				data : {"id": id}, 
				// 요청경로(url 매핑값)
				url : "EmailCheckCon",
				// 요청방식(get/post)
				method : "get",
				contentType : "application/json; charset=utf-8",
				// 응답데이터 형식지정
				dataType : "text",
				success : function(data){// "사용할 수 있다"(응답) -> data("사용할 수 있다")
					//alert(data)
					if(data == "true"){
						$("#check").text("사용할 수 있는 아이디")
					}else{
						$("#check").text("사용할 수 없는 아이디")
					}
				},
				error : function(){
					alert("통신실패")
				}
			})
		}
	</script>
	
	<!-- <script>
		function idCheck() {
			let checkid = $('#id').val();

			//jquery로 ajax(비동기통신) 작성
			$.ajax({
				// 전송데이터(json)
				data : {
					'id' : checkid
				},
				// 요청 경로(url 매핑값)
				url : 'EmailCheckCon',
				// 요청 방식(get/post)
				method : 'get',
				// 전송데이터 정보(형식/인코딩방식)
				contentType : 'application/json; charset=utf-8',
				// 응답데이터 형식지정
				datatype : 'text',
				success : function(data) {//'사용할 수 있다'(응답)-> data('사용할 수 있다')}
					alert(data)
					if (data == 'true') {
						$('#check').text('사용할 수 있는 아이디')//60행에 스팬태그 아이디가 check
					} else {
						$('#check').text('사용할 수 없는 아이디')
					}
				},
				error : function() {
					alert("통신실패!")
				}
			})
		}
	</script> -->
</body>
</html>