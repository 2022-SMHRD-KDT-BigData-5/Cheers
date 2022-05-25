<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script type="text/javascript" src="assets/js/vendor/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
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
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="index_test.jsp"> <img src="assets/images/logo.png"/>
									</a>
								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->

								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									

								
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
                        <h1>LOGIN</h1>
                    </div><!-- End of head title -->
                    <div class="login_note"></div>
                    <!-- login -->
                    <div class="login">
                    <form action="LoginCon" method="post" >
                        <table class="login_table" align="center">
                            <tr style="height: 40px;">
                                <td width="30%" align="center">email</td>
                                <td style="width: 80px;"><input type="text" name="id" placeholder="email을 입력하세요" style="border:none;"></td>
                            </tr>
                            <tr style="height: 60px;">
                                <td align="center">pw</td>
                                <td><input type="password" name="pw" placeholder="pw를 입력하세요" style="border:none;"></td>
                            </tr>
                            <tr style="height: 70px;">
                                <td  align="center" colspan="2" height="50px" style="color:white;"><input type="submit" value="로그인" style="border:none;" class="insert_btn"> </td>
                            </tr>
                        </table>
                    </form>
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
                            <p class=" wow fadeInRight" data-wow-duration="1s">Made with 같이마시조 <i class="fa fa-heart"></i> by <a target="_blank" href="https://shrcampus.com/">스마트인재캠퍼스</a>2022. All Rights Reserved</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>><!-- End of footer -->



    <!-- START SCROLL TO TOP  -->

    <div class="scrollup">
        <a href="#"><i class="fa fa-chevron-up"></i></a>
    </div>

    <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
    <script src="assets/js/vendor/bootstrap.min.js"></script>

    <script src="assets/js/jquery.easing.1.3.js"></script>
    <script src="assets/js/masonry/masonry.min.js"></script>
    <script type="text/javascript">
        $('.mixcontent').masonry();
    </script>

    <script src="assets/js/jquery.sliderPro.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function ($) {
            $('#example3').sliderPro({
                width: 960,
                height: 200,
                fade: true,
                arrows: false,
                buttons: true,
                fullScreen: false,
                shuffle: true,
                smallSize: 500,
                mediumSize: 1000,
                largeSize: 3000,
                thumbnailArrows: true,
                autoplay: false,
                thumbnailsContainerSize: 960

            });
        });
    </script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>