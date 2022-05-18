<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.Recipe"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.RecipeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
RecipeDAO dao = new RecipeDAO();
List<Recipe> recipeList = dao.getAllRecipe();
pageContext.setAttribute("recipeList", recipeList);
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

								<!-- Collect the nav links, forms, and other content for toggling -->



								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav navbar-right">
										<li><a href="aboutus.html">about us</a></li>
										<li class="dropdown"><a href="recipe.html">마셔볼래</a></li>
										<li class="dropdown"><a href="toast.html">같이마실래?</a></li>
										<li class="dropdown"><a href="soto.html">같이볼래?</a></li>
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
							<a href="recipe_home.jsp">home recipe</a>
						</h1>
					</div>
					<!-- End of head title -->
					<div>
						<div class="base_btn">
							<div class="base_controls">
								<button type="button" class="base_soju">
									<a href="recipe_base20.jsp">소주</a>
								</button>
								<button type="button" class="base_macju">
									<a href="recipe_base10.jsp">맥주</a>
								</button>
							</div>
							<br>
						</div>
						<div class="main_service_area">
							<div class="single_service_area">


								<!-- 레시피 반복 스따뚜 -->
								<c:forEach var="rc" items="${recipeList}">
								<c:if test="${rc.recipe_base eq '20'}">
									<div class="row">
										<button class="hatu">
											<img src="assets/images/hatu.png">
										</button>
										<div class="col-sm-6">
											<div class="signle_service_left">
												<img src='<c:out value="${rc.recipe_img}" />'
													alt="recipe_name" />
											</div>
										</div>
										<div class="col-sm-5 col-sm-push-1">
											<div class="single_service">
												<br> <br> <br>
												<h3>
													<span class="recipe_name"><c:out
															value="${rc.recipe_name}" /></span>
												</h3>
												<h5>
													base : <span class="recipe_base"><c:if
															test="${rc.recipe_base eq '20'}">
															<span>소주</span>
														</c:if> 
														
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
												<p class=" wow fadeInRight" data-wow-duration="1s">
													Made with <i class="fa fa-heart"></i> by <a target="_blank"
														href="http://bootstrapthemes.co">Bootstrap Themes</a>2016.
													All Rights Reserved
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
						<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

						<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
						<script src="assets/js/vendor/bootstrap.min.js"></script>

						<script src="assets/js/jquery.easing.1.3.js"></script>

						<script src="assets/js/plugins.js"></script>
						<script src="assets/js/main.js"></script>
</body>
</html>