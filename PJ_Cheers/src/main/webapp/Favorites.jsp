<%@page import="com.smhrd.domain.Favorites"%>
<%@page import="com.smhrd.domain.FavoritesDAO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
FavoritesDAO dao = new FavoritesDAO();
List<Favorites> infoList = dao.getinfo();
pageContext.setAttribute("infoList", infoList);
%>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Clemo – Free HTML5 Multipurpose Portfolio Page Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">


<link rel="stylesheet" href="assets/css/fonticons.css">
<link rel="stylesheet" href="assets/css/stylesheet.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">


<!--For Plugins external css-->
<link rel="stylesheet" href="assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<style>
img{
	max-width: 100%; 
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

						<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
						<script src="assets/js/vendor/bootstrap.min.js"></script>

						<script src="assets/js/jquery.easing.1.3.js"></script>

						<script src="assets/js/plugins.js"></script>
						<script src="assets/js/main.js"></script>
						
						


	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<header id="main_menu" class="header navbar-fixed-top">
		<div class="main_menu_bg">
			<div class="container">
				<div class="row">
					<div class="nave_menu">
						<nav class="navbar navbar-default" id="navmenu">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="collapse"
										data-target="#bs-example-navbar-collapse-1"
										aria-expanded="false">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>
									<a class="navbar-brand" href="index_test.jsp"> <img src="assets/images/logo.png"/>
									</a>
								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->

								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav navbar-right">
										<!-- 회원정보 -->
										<c:choose>
											<c:when test="${empty loginMember}">
												<!--if절 (조건작성!) - if~else문  -->
												<li><a href="join2.jsp">회원가입</a></li>
												<li><a href="login2.jsp">로그인<img src ="assets/images/empty_sm.png"></a></li>
											</c:when>

											<c:otherwise>
												<!--else절  -->
												<li><a>${loginMember.nick}님 환영합니다.</a></li>
												<li><a href="LogoutCon">로그아웃</a></li>
												<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true">마이페이지</a>
													<ul class="dropdown-menu">
												<c:if test="${loginMember.id eq 'admin'}">
													<!-- 단순 if문 -->
													<li><a href="select1.jsp">전체회원정보</a></li>
												</c:if>
														<li><a href="Favorites.jsp">즐겨찾기</a></li>
														<li><a href="update2.jsp">회원정보 수정</a></li>
														<li><a href="DeleteCon?id=${loginMember.id}">회원
																탈퇴</a></li>
													</ul></li>
											</c:otherwise>
										</c:choose>
									</ul>


								
									<ul class="nav navbar-nav navbar-right" style = clear:both;>

										<li><a href="aboutus.jsp">슬기로운 혼술생활은?</a></li>
										<li><a href="recipe_home.jsp">마셔볼래</a></li>
										<li><a href="toast1.jsp">같이마실래?</a></li>
										<li><a href="soto1.jsp">같이볼래?</a></li>
										<li><a href="contact.jsp">문의</a></li>
												</ul>
								</div>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--End of header -->

	<!-- Service Section -->



	<section id="service" class="service sections margin-top-120">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="head_title text-center">
						<h1>
							<a href="recipe_home.jsp">my recipe</a>
						</h1>
					</div>
					<!-- End of head title -->
					<!-- <div> -->
						<div class="base_btn">
							<!-- <div class="base_controls">
								<button type="button" class="base_soju">
									<a href="recipe_base20.jsp">소주</a>
								</button>
								<button type="button" class="base_macju">
									<a href="recipe_base10.jsp">맥주</a>
								</button>

							</div> -->
							<br>
						</div>
						<div class="main_service_area">
							<div class="single_service_area">


								<!-- 레시피 반복 스따뚜 -->
								
						
								<c:forEach var="rc" items="${infoList}">
								<c:if test="${rc.member_id eq loginMember.id}">
									<div class="row">
										<div class="col-sm-6">
											<div class="signle_service_left">
												<img src='<c:out value="${rc.recipe_img}" />'
													alt="recipe_name" />
											</div>
										</div>
										<div class="col-sm-5 col-sm-push-1">
											<div class="single_service">
												<br> <br>
												<c:if test="${rc.status eq null}">
													<button type="button" class="hatu" id="hatu">
														<img src="assets/images/hatu.png" />
														</button>
												</c:if>
												<c:if test="${rc.status eq '1'}">
													<button type="button" class="hatu" id="hattu">
														<img src="assets/images/hattu.png" />
														</button>
												</c:if>
												

												<input type = "hidden" value = '<c:out value="${rc.recipe_no}" />'></input>
												
												<h3>
													<span class="recipe_name"><c:out
															value="${rc.recipe_name}" /></span>
												</h3>
												<h5>
													base : <span class="recipe_base"><c:if
															test="${rc.recipe_base eq '10'}">
															<span>맥주</span>
														</c:if> <c:if test="${rc.recipe_base eq '20'}">
															<span>소주</span>
														</c:if> <c:if test="${rc.recipe_base eq '30'}">
															<span>혼합</span>
														</c:if></span>
												</h5>
												<div class="separator2"></div>
												<span>♡ 준비물 ♡</span><br> <span class="recipe_ing"><c:out
														value="${rc.recipe_ing}" /></span><br> <br> <span>♥
													제조방법 ♥</span><br>
												<p class="recipe_how">
													<c:out value="${rc.recipe_how}" />
												</p> 
											</div>

										</div>
									</div>
									</c:if>
								</c:forEach>
			
			<script>					
		//즐겨찾기
        $(document).on("click", "#hatu", function(){ 
        	
        	console.log($(this).next().val());
        	
        	$.ajax({
        		data: {status: "0", recipe_no : $(this).next().val()},
        		url: "FavoriteAjaxCon",
        		method: "get",
        		method : "GET",
    			dataType : "text",
    			context : this,  //success 안에서 this(#like)를 사용하고 싶은 경우
    			success: function(data){
    				//$('#like+span').text(data)
    				$(this).html("<img src='assets/images/hattu.png'>")
					//$("#hatu").add("onClick", "location.href='FavoriteAjaxCon?status="hattu"'")
    	            $(this).attr("id", "hattu")
    			},
    			error: function(){
    				alert("통신실패!")
    			} 
    		})
        	
        	
        });
		
      //즐겨찾기 취소
        $(document).on("click", "#hattu", function(){ 
        	$.ajax({
        		data: {status: "1", recipe_no : $(this).next().val()},
        		url: "FavoriteAjaxCon",
        		method: "get",
        		method : "GET",
    			dataType : "text",
    			context : this, 
    			success: function(data){   				
    				$(this).html("<img src='assets/images/hatu.png'>")
    	            $(this).attr("id", "hatu")
					
    			},
    			error: function(){
    				alert("통신실패!")
    			}
            
    		})
        });
		

	</script>					
										
							</div>
							<!-- End of single service area -->

						</div>


							<!-- footer Section -->
<footer id="footer" class="footer">
        <div class="container">
            <div class="main_footer">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="copyright_text text-center">
                            <p class=" wow fadeInRight" data-wow-duration="1s">Made with 같이마시조 <i class="fa fa-heart"></i> by <a target="_blank" href="https://shrcampus.com/">스마트인재캠퍼스</a>2022. All Rights Reserved</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
						<!-- End of footer -->



						<!-- START SCROLL TO TOP  -->

						<div class="scrollup">
							<a href="#"><i class="fa fa-chevron-up"></i></a>
						</div>
						<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

						<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
						<script src="assets/js/vendor/bootstrap.min.js"></script>

						<script src="assets/js/jquery.easing.1.3.js"></script>

						<script src="assets/js/plugins.js"></script>
						<script src="assets/js/main.js"></script>
						
						<script>
						$(document).on("click", "#hatu", function(){            
							$.ajax({
								data : {status : "hatu", recipe_no : ${rc.recipe_no}},
								url : "LikeAjaxCon",
								method : "GET",
								dataType : "text",
								context : this,  //success 안에서 this(#like)를 사용하고 싶은 경우
								success: function(data){
									$('#like+span').text(data)
									$(this).text('좋아요 취소')
						            $(this).attr('id','dislike')	
								},
								error: function(){
									alert("통신실패!")
								}
							})
						</script>	 -->
		<!-- <script>					
		//하뚜로 바꾸자
        /* $(document).on("click", "#hatu", function(){            
            $("#hatu").html("<img src='assets/images/hattu.png'>")
			$(this).attr("id", "hattu")
        })
		
		$(document).on("click", "#hattu", function(){            
            $("#hattu").html("<img src='assets/images/hatu.png'>")
			$(this).attr("id", "hatu") */
        })
	</script> -->	
	
						
						
</body>
</html>