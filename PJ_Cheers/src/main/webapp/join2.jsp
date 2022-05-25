<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                        <h1>JOIN</h1>
                    </div><!-- End of head title -->
                    <div class="join_note"></div>
                    <!-- join -->
                    <div class="join">
                        <form action="JoinCon" method="post">
                            <table class="join_table" align="center">
                                <tr style="height: 30px;">
                                    <td class="table_name"style="width: 80px;" >email</td>
                                    <td><input type="text" name="id" id="email" placeholder="email을 입력하세요" style="border:none;"></td>
                                </tr>
                                <tr style="height:20px;vertical-align: top;" >
                                    <td class="table_name"></td>
                                    <td><b ><span id="check" style="font-size: small;"></span></b></td>
                                </tr>
                                <tr style="height: 30px;">
                                    <td class="table_name">pw</td>
                                    <td><input type="password" name="pw" placeholder="pw를 입력하세요" style="border:none;" ></td>
                                </tr>
                                <tr style="height: 60px;">
                                    <td class="table_name">닉네임</td>
                                    <td><input type="text" name="nick" placeholder="닉네임을 입력하세요" style="border:none;"></td>
                                </tr>
                                <tr style="height: 30px;">
                                    <td class="table_name" colspan="2"><input type="submit" id="id_submit" value="회원가입" class="button fit" style="border:none;"></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

	<!-- Scripts -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
	
	$("#email").blur(function(){
		let id = $("#email").val(); 
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
						
						if(id == "") {
						$("#check").text("이메일을 입력해 주세요:)");
						$("#check").css("color", "red");
						$("#id_submit").attr("disabled" , true);
						}else{
							$("#check").text("사용할 수 있는 이메일 입니다:)")
							$("#check").css("color", "grey");
							$("#id_submit").attr("disabled" , false);
						}
					}else{
						$("#check").text("사용할 수 없는 이메일입니다 :(")
						$("#check").css("color", "red");
						$("#id_submit").attr("disabled" , true);
					}
				},
				error : function(){
					alert("통신실패")
				}
			})
	
	
	})
	</script>
	
	<!-- <script>
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
 -->





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
    </footer><!-- End of footer -->



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