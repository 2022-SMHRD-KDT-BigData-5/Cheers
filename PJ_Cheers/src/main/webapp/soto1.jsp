<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.SotoDAO"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="False"%>
<%@page import="com.smhrd.domain.Soto"%>
<%@page import="com.smhrd.domain.Soto_com"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
   SotoDAO dao = new SotoDAO();

   List<Soto> SotoList = dao.selectSoto();
   pageContext.setAttribute("SotoList",SotoList);
   
   System.out.println("SotoList 가져오기 성공!");
   
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
button {
	border: none;
	background-color: #fff;
}
</style>
<script>
        function update(){
            onclick("#update_com")
        }
    </script>
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

								<!-- Collect the nav links, forms, and other content for toggling -->

								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-test">
									<ul class="nav navbar-nav navbar-right">
										<!-- 회원정보 -->
										<c:choose>
											<c:when test="${empty loginMember}">
												<!--if절 (조건작성!) - if~else문  -->
												<li><a href="join2.jsp">회원가입</a></li>
												<li><a href="login2.jsp">로그인</a></li>
											</c:when>

											<c:otherwise>
												<!--else절  -->
												<li><a>${loginMember.nick}님 환영합니다.</a></li>
												<li><a href="LogoutCon">로그아웃</a></li>
												<li class="dropdown"><a href="#"
													class="dropdown-toggle" data-toggle="dropdown"
													role="button" aria-haspopup="true">마이페이지</a>
													<ul class="dropdown-menu">
														<li><a href="Favorites.jsp">즐겨찾기</a></li>
														<c:if test="${loginMember.id eq 'admin'}">
															<!-- 단순 if문 -->
															<li><a href="select1.jsp">전체회원정보</a></li>
														</c:if>
														<li><a href="update2.jsp">회원정보 수정</a></li>
														<li><a href="DeleteCon?id=${loginMember.id}">회원
																탈퇴</a></li>
													</ul></li>
											</c:otherwise>
										</c:choose>
									</ul>


								</div>

								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav navbar-right">

										<li><a href="aboutus.html">about us</a></li>
										<li><a href="recipe_home.jsp">마셔볼래</a></li>
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
							<a href="soto1.jsp">같이볼래?</a>
						</h1>
					</div>
					<!-- End of head title -->
					<div class="Category_area">
						<div class="single_service_area">
							<div class="base_btn">
								<!-- 상단 카테고리 -->
								<div class="base_controls" align="center">
									<a href="https://www.teleparty.com"><img src="assets/images/넷플릭스.jpg" alt="넷플릭스" style="width: 10%; border-radius: 40px;"></a>
									<a href="recipe_macju.html"><img src="assets/images/왓챠.jpg" alt="왓챠" style="width: 10%; border-radius: 40px;"></a>
									<div style="height: 60px;">
								</div>
									<div align=right>
									<div style="height: 30px;"></div>
										<button type="button" class="insert_btn" >
											<a href=soto2.jsp style="color:white;">작성</a>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div class="main_service_area">
							<div class="single_service_area" align="center">
							  <hr style="border:0px; border-top:2px dashed ">
								<ul id="soto_posts">
							 	  <c:forEach var="s" items="${SotoList}">
							 	   <li class="soto_post">
									<table width="100%">
										<tr>
											<td align="left" width="45%">no.<c:out value="${s.soto_no}"/></td>
											<td align="right"><button style="border: none; background-color: #fff;">
													<a href="UpdateSotoCon?soto_no=${s.soto_no} ">수정</a>
												</button> <span> | </span>
												<button style="border: none; background-color: #fff;">
													<a href="DeleteSotoCon?soto_no=${s.soto_no}">삭제</a>
												</button></td>
										</tr>
										<tr>
											<td colspan="2" align="right"><b><c:out
														value="${s.member_id}" /></b><span> | <c:out
														value="${s.soto_date}" /></span></td>
										</tr>
										<tr>
											<td colspan="2"><c:out value="${s.soto_contents}" /></td>
										</tr>
									</table>

									<!-- 댓글 작성 및 조회 -->
									<p></p>
									<form class="soto_com_insert" method="post"
										action="AddSotoCommentCon" align="right">
										<input type="text" name="sc_contents" placeholder="댓글을 작성해주세요." style="border: 5mm; width: 400px;">
										<input type="hidden" name="soto_no" value="${s.soto_no}">
										<input type="submit" value="등록" style="border:none;">
									</form>
									<details align="left">
										<summary style="color: brown; cursor: pointer;">♥ 댓글
											♥</summary>
										<%
                              String soto_no = "";
                              for(int i=0;i<SotoList.size();i++){
                                 soto_no = SotoList.get(i).getSoto_no().toString();
            
                              List<Soto_com> commList = dao.selectSotoComment(soto_no);
                                pageContext.setAttribute("commList",commList);
                             %>

										<c:forEach var="d" items="${commList}">
											<c:choose>
												<c:when test="${s.soto_no eq d.soto_no}">
													<hr color='#c06c84'>
													<table width="100%">
														<tr>
															<td width="5%" align="center"><button style="border: none; background-color: white;">🥂</button></td>
															<td width="20%"><c:out value="${d.sc_date}" /><br>
																<b><c:out value="${d.member_id}" /></b></td>
															<td><span><c:out value="${d.sc_contents}" /></span></td>
															<td width="7%" align="right">
																<span><c:out value="${d.sc_contents}" /></span>
															</td>
															<!-- <a href="UpdateSotoCommentCon?tc_no=${d.sc_no}">수정</a> -->
															 <td width="7%" align="right">
                                               					 <input type="hidden" id="sc_no_update" value="${d.sc_no}">
                                               					 <input type="hidden" id="sc_contents_update" value="${d.sc_contents}">
                                               					 <button id="update_comment" type="button" onclick="clickUp()" style="border: none; background-color: white;" >수정</button>
                                               
                                             				</td>
															
															
															
															<td width="7%" align="right">
															
															<!-- <a href="DeleteSotoCommentCon?tc_no=${d.sc_no}">삭제</a> -->
															<form class="soto_com_insert" method="post" action="DeleteSotoCommentCon" align="right">
																<!-- <input type="hidden" name="sc_contents" placeholder="댓글을 작성해주세요." style="border: 5mm; width: 400px;"> -->
																<input type="hidden" name="sc_no" value="${d.sc_no}">
																<button type="submit" style="border:none;">삭제</button>
															</form>
															</td>
														</tr>
													</table>
												</c:when>
											</c:choose>
										</c:forEach>
										<%
                              }
                              %>
									</details>
									<p></p>
									</li>
								</c:forEach>
							   </ul>
							</div>
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
	
	<script>
	
	<%-- 댓글 수정 --%>
	   
 	function clickUp(){
 		var com = $('input[type=text]').val()
 		
 		var val1 = "";
 		var val2 = "";
 		val1 = $("#sc_no_update").val();
 		val2 = $("#sc_contents_update").val();
 		console.log(val1)
 		console.log(val2)
 		
 		$.ajax({
 			data : {tc_no : val1, tc_contents : val2},
            url: "UpdateCommentCon",
            type : "GET",
            data : "text",
           success: function(){
               console.log("통신!!");
               $("#tc_contents_span").html("<input type='text' value='"+val2+"'/>");

               <%--$('#tc_contents').prop("type", "text");
                   $('#tc_contents').prop("type", "text");--%>
               
           },
           error: function(){
              alert("통신실패!")
           } 
          
        })        
 		
 		
 	}
	</script>
	<%--
	<script>
	<%-- 무한스크롤
		(() => {
		  const $ul = document.querySelector('#soto_posts');
		  let $li;
		  let count = $ul.children.length;

		  document.addEventListener('scroll', () => {
		    if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
		      $li = $ul.appendChild(document.createElement('li'));
		      $li.textContent = ++count;
		    }
		  })
		})();
	</script>
	 --%>

</body>
</html>