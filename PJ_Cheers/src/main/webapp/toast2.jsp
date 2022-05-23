<%@ page language="java" contentType="text/html; charset=UTF-8 " pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.Toast"%>
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
    textarea {
        width: 95%;
        height: 90%;
        border: none;
        resize: none;
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
									<a class="navbar-brand" href="index_test.jsp"> <img
										src="assets/images/logo.png" />
									</a>
								</div>

								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-test">
									<ul class="nav navbar-nav navbar-right">
										<li class="dropdown"><a href="Join2.jsp">회원가입</a></li>
										<li class="dropdown"><a href="login2.jsp">로그인</a></li>
									</ul>
								</div>



								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav navbar-right">
										<li><a href="aboutus.html">about us</a></li>
										<li><a href="recipe.html">마셔볼래</a></li>
										<li><a href="toast1.jsp">같이마실래?</a></li>
										<li><a href="soto1.jsp">같이볼래?</a></li>
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
							<a href="toast1.jsp">같이마실래?</a>
						</h1>
						<div style="height: 30px;"></div>
					</div>
					<!-- End of head title -->
					<div>
						<div class="main_service_area">
							<div class="single_service_area"></div>
							<form action="InsertPostCon" enctype="multipart/form-data" method="post">
								<table width="100%" height="400px" border="1px soild">
									<tr style="height: 10px">
										<td width="45%"><input type="file" name= "upload" id="image"
											accept="image/*" onchange="setThumbnail(event);"></td>
										<td rowspan="2" align="center"><div class="toast_box"><textarea id="wr" cols="50" rows="10" maxlength="500" placeholder="내용을 입력하세요." style="border: none;"></textarea></div>
										</td>
									</tr>
									<tr style="height: 200px">
										<td align="center"><div id="image_container"></div>
											<script> function setThumbnail(event) {
                                                var reader = new FileReader(); reader.onload = function (event) { var img = document.createElement("img"); img.setAttribute("src", event.target.result); document.querySelector("div#image_container").appendChild(img); }; reader.readAsDataURL(event.target.files[0]);
                                            } </script></td>
									</tr>
									<tr>
										<td colspan="2" align="right">
											<p style="color:#000;" id="counter">0자 / 500자</p></td>
									</tr>
									<tr>
										<td colspan="2" align="right"><div  align=right>
												<input type="submit" value="등록" style="color:white;" class="insert_btn">
											</div></td>
									</tr>
								</table>
							</form>
						</div>
						<!-- End of single service area -->
					</div>
				</div>
			</div>
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
	
	<!-- 댓글 카운팅 -->
    <script>
        $('#wr').keyup(function (e){
        var content = $(this).val();
        $('#counter').html(+content.length+"자 / 500자");    //글자수 실시간 카운팅
    
        if (content.length > 500){
            $(this).val(content.substring(0, 500));
            $('#counter').html("( 500 / 500 )");
        }
    });
    </script>
</body>
</html>