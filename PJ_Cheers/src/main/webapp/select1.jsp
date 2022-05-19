<%@page import="com.smhrd.domain.Member"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	MemberDAO dao = new MemberDAO();
	List<Member> memberList = dao.selectAll();
	pageContext.setAttribute("memberList", memberList);
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

<script type="text/javascript" src="assets/js/vendor/bootstrap.js"></script>
<script type="text/javascript" src="assets/js/vendor/bootstrap.min.js"></script>
<script type="text/javascript"
	src="assets/js/vendor/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script type="text/javascript" src="assets/js/vendor/npm.js"></script>

<link rel="stylesheet" href="assets/css/fonticons.css">
<link rel="stylesheet" href="assets/css/slider-pro.css">
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
td {
	text-align: center;
}
</style>

</head>
<body data-spy="scroll" data-target=".navbar-collapse">
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
									<a class="navbar-brand" href="index.html"> <img
										src="assets/images/logo.png" />
									</a>
								</div>

								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-test">
									<ul class="nav navbar-nav navbar-right">
										<li><a href="Join.html">회원가입</a></li>
										<li><a href="Login.html">로그인</a></li>
									</ul>
								</div>



								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav navbar-right">
										<li><a href="aboutus.html">about us</a></li>
										<li><a href="recipe.html">마셔볼래</a></li>
										<li><a href="완)toast1.html">같이마실래?</a></li>
										<li><a href="완)soto1.html">같이볼래?</a></li>
										<li><a href="contact.html">contact</a></li>
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
							<a href="완)toast1.html">회원정보관리</a>
						</h1>
						<div style="height: 30px;"></div>
					</div>
					<!-- End of head title -->

					<div class="main_service_area">
						<div id="wrapper" class="single_service_area" align="center">
							<nav id="Update">
								<table width="80%" border="1px soild">
									<tr>
										<td style="width: 45%;"><b>email</b></td>
										<td style="width: 45%;"><b>닉네임</b></td>
										<td><b>삭제</b></td>
									</tr>
									<c:forEach var="m" items="${memberList}">
										<tr>
											<td><c:out value="${m.id}" /></td>
											<td><c:out value="${m.nick}" /></td>
											<td><a href="DeleteCon?id=${m.id}">삭제</a></td>
										</tr>
									</c:forEach>
								</table>
							</nav>
							<p></p>
								<button style="border:none;background-color:white;">
									<a href="index_test.jsp" class="button next scrolly">되돌아가기</a>
								</button>
						</div>
					</div>
				</div>
				<!-- 게시물 끝 -->
			</div>
		</div>
	</section>



	<!-- footer Section -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="main_footer">
				<div class="row">
					<div class="col-sm-12">
						<div class="copyright_text text-center">
							<p class=" wow fadeInRight" data-wow-duration="1s">
								Made with <i class="fa fa-heart"></i> by <a target="_blank"
									href="http://bootstrapthemes.co">Bootstrap Themes</a>2016. All
								Rights Reserved
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End of container -->
	</footer>
	<!-- End of footer -->



	<!-- START SCROLL TO TOP  -->

	<div class="scrollup">
		<a href="#"><i class="fa fa-chevron-up"></i></a>
	</div>


	<!-- jQuery -->
	<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>

	<!-- jQuery Bootstrap js  -->
	<script src="assets/js/vendor/bootstrap.min.js"></script>

	<!-- jQuery easing js  -->
	<script src="assets/js/jquery.easing.1.3.js"></script>

	<!-- jQuery masonry js  -->
	<script src="assets/js/masonry/masonry.min.js"></script>
	<script type="text/javascript">
        $('.mixcontent').masonry();
    </script>

	<!-- jQuery Mixitup  -->
	<script src="assets/js/jquery.mixitup.min.js"></script>
	<script type="text/javascript">
//            jQuery('#').mixItUp({
//                selectors: {
//                    target: '.tile',
//                    filter: '.filter'
//                },
//                animation: {
//                    animateResizeContainer: false,
//                    effects: 'fade scale'
//                }
//
//            });

    //           $('.mixitupId').mixItUp();
    </script>



	<!-- jQuery plugins  -->
	<script src="assets/js/plugins.js"></script>

	<!-- jQuery Main js  -->
	<script src="assets/js/main.js"></script>

</body>
</html>