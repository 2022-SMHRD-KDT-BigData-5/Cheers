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
        <div class='preloader'><div class='loaded'>&nbsp;</div></div>
        <header id="main_menu" class="header navbar-fixed-top">            
            <div class="main_menu_bg">
                <div class="container">
                    <div class="row">
                        <div class="nave_menu">
                            <nav class="navbar navbar-default" id="navmenu">
                                <div class="container-fluid">
                                    <!-- Brand and toggle get grouped for better mobile display -->
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
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
	</header> <!--End of header -->



        <!-- Contact Section -->
        <section id="contact" class="contactus margin-top-120">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="main_contact sections">
                            <div class="head_title text-center">
                                <h1>고객 센터</h1>
                            </div>

                            <div class="row">
                                <div class="contact_contant">
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="single_message_right_info">
                                            <ul>
                                                <li><i class="fa fa-map-marker"></i> 
                                                    <span>광주광역시 동구 예술길 31-15 광주아트센터 <br />
                                                            3층 빅데이터 B반 🍺김주란🍺 팀장</span></li>

                                                <li><i class="fa fa-mobile-phone"></i> <span>010-1234-5678</span></li>

                                                <li><i class="fa fa-envelope-o"></i> <span>ranru@gmail.com</span></li>

                                                <li>기프티콘 선물 환영😀</li>
                                            </ul>

                                            <div class="work_socail transition">
                                                <a href="https://t1.daumcdn.net/cfile/tistory/14019E3E4FEC3FAC03"><i class="fa fa-facebook img-circle"></i></a>
                                                <a href="https://ppss.kr/wp-content/uploads/2015/12/1-31-540x298.jpg"><i class="fa fa-twitter img-circle"></i></a>
                                                <a href="https://t1.daumcdn.net/cfile/tistory/214B87485593B5291F"><i class="fa fa-google-plus img-circle"></i></a>
                                                <a href="https://t1.daumcdn.net/cfile/tistory/214B87485593B5291F"><i class="fa fa-pinterest img-circle"></i></a>
                                                <a href="https://t1.daumcdn.net/cfile/tistory/214B87485593B5291F"><i class="fa fa-instagram img-circle"></i></a>
                                            </div>
                                        </div>
                                    </div><!-- End of col-sm-6 -->

                                    <div class="col-sm-6 col-xs-12">
                                        <div class="single_contant_left margin-top-60">
                                            <form action="#" id="formid">
                                                <!--<div class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">-->

                                                <div class="form-group">
                                                    <label>로그인한 이메일</label>
                                                    <c:otherwise>
												<li><a>${loginMember.id}님</a></li>
                                                    </c:otherwise>
                                                </div>

                                                <div class="btn">
                                                    <a href="https://naver.me/xcut3oNm">문의하러가기</a>
                                                    
                                                </div>
                                                <!--</div>--> 
                                            </form>
                                        </div>
                                    </div>
                                </div> <!-- End of messsage contant-->
                            </div>
                        </div>
                    </div>
                </div><!-- End of row -->
            </div><!-- End of container -->
        </section><!-- End of contact Section -->

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
    </footer><!-- End of footer Section-->



        <!-- START SCROLL TO TOP  -->

        <div class="scrollup">
            <a href="#"><i class="fa fa-chevron-up"></i></a>
        </div>

        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>
        <script src="assets/js/jquery.easing.1.3.js"></script>

        </script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>
