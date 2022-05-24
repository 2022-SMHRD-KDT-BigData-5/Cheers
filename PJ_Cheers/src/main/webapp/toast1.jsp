<%@page import="com.smhrd.domain.PostZzanVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.ToastDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.domain.Toast"%>
<%@page import="com.smhrd.domain.Toast_com"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
   ToastDAO dao = new ToastDAO();

   List<Toast> postList = dao.selectPost();
   pageContext.setAttribute("postList",postList);
   
%>
<%
List<PostZzanVO> zzanList = dao.allZn();
pageContext.setAttribute("zzanList",zzanList);
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
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>

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
												<c:if test="${loginMember.id eq 'admin'}">
													<!-- 단순 if문 -->
													<a href="select1.jsp">전체회원정보</a>
												</c:if>
												<li><a>${loginMember.nick}님 환영합니다.</a></li>
												<li><a href="LogoutCon">로그아웃</a></li>
												<li class="dropdown"><a href="#"
													class="dropdown-toggle" data-toggle="dropdown"
													role="button" aria-haspopup="true">마이페이지</a>
													<ul class="dropdown-menu">
														<li><a href="Favorites.jsp">즐겨찾기</a></li>
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
							<a href="toast1.jsp">같이마실래?</a>
						</h1>
						<div style="height: 30px;"></div>
					</div>
					<!-- End of head title  -->
					<div align=right>
						<button type="button" class="insert_btn">
							<a href=toast2.jsp style="color: white;">작성</a>
						</button>
					</div>
					<div>
						<div class="main_service_area">
							<div class="single_service_area" align="center">
								<c:set var="tempname" value="" />
								<c:forEach var="p" items="${postList}">
									<hr style="border: 0px; border-top: 2px dashed">
									<table width="100%">
										<tr>
											<td align="left" width="45%">no.<c:out
													value="${p.toast_no}" /></td>
											<td align="right">
												<button style="border: none; background-color: #fff;">
													<form action="toast3.jsp">
														<input type="hidden" name="t_file_path_update"
															value='<c:out value="${p.t_file_path}" />'> <input
															type="hidden" name="t_file_name_update"
															value='<c:out value="${p.t_file_name}" />'> <input
															type="hidden" name="toast_no_update"
															value="${p.toast_no}"> <input type="hidden"
															name="contents_update" value="${p.contents}"> <input
															type="submit" value="수정"
															style="border: none; background: white; color: black;">
													</form>
													<!-- <a href="toast3.jsp">수정</a> -->
												</button> <span> | </span>
												<button style="border: none; background-color: #fff;">
													<a href="DeleteCon?toast_no=${p.toast_no}">삭제</a>
												</button>
											</td>
										</tr>
										<tr>
											<td colspan="2" align="right"><b><c:out
														value="${p.member_id}" /></b><span> | <c:out
														value="${p.toast_date}" /></span></td>
										</tr>
										<tr>
											<td style="height: 300px;" align="center"><img
												src='<c:out value="${p.t_file_path}/${p.t_file_name}" />'
												alt="게시물이미지"></td>
											<td style="vertical-align: top; padding: 2%"><c:out
													value="${p.contents}" /></td>
										</tr>
										<tr>
											<!-- 짠위치 -->
											<c:choose>
												<c:when test="${p.zzan_count ne 0}">

													<c:forEach var="pz" items="${zzanList}">


														
														<c:choose>
															<c:when
																test="${loginMember.id eq pz.member_id and pz.toast_no eq p.toast_no}">
																<td align="right" >
																	<button id="post_zzan" style="border:none; background-color:white;text-align:right;">
																		<img src="assets/images/zzan.png" width=4%  />
																	</button> <input type="hidden"
																	value='<c:out value="${p.toast_no}" />'> </td>
																	<td><span
																	id="post_zzan_no"><c:out value="${p.zzan_count}" /></span>
																</td>
															</c:when>

															<c:otherwise>
																<c:if
																	test="${p.toast_no != tempname and loginMember.id ne pz.member_id}">
																	<td align="right">
																		<button id="post_zzan_un" style="border:none; background-color:white;text-align:right;">
																			<img src="assets/images/zzan_un.png" width=4% />
																		</button> <input type="hidden"
																		value='<c:out value="${p.toast_no}" />'> </td>
																	<td><span
																		id="post_zzan_no"><c:out
																				value="${p.zzan_count}" /></span>
																	</td>
																</c:if>
																<c:set var="tempname" value="${p.toast_no}" />
															</c:otherwise>
														</c:choose>




													</c:forEach>
												</c:when>

												<c:otherwise>
													<td align="right" >
														<button id="post_zzan_un" style="border:none; background-color:white;text-align:right;">
															<img src="assets/images/zzan_un.png" width=4% />
														</button> <input type="hidden"
														value='<c:out value="${p.toast_no}" />'></td>
																	<td> <span
														id="post_zzan_no"><c:out value="${p.zzan_count}" /></span>
													</td>
												</c:otherwise>
											</c:choose>
										</tr>
									</table>

									<!-- 댓글 작성 및 조회 -->
									<p></p>
									<form class="toast_com_insert" method="post"
										action="AddCommentCon" align="right">
										<input type="text" name="tc_contents"
											placeholder="댓글을 작성해주세요." style="border: 5mm; width: 400px;">
										<input type="hidden" name="toast_no" value="${p.toast_no}">
										<input type="submit" value="등록" style="border: none;">

									</form>
									<details align="left">

										<!-- <input type="hidden" id="t_no" value="${p.toast_no}"> -->



										<summary id="context" style="color: brown; cursor: pointer;">♥
											댓글 ♥</summary>
										<%
                                String toast_no="";
                              for(int i=0;i<postList.size();i++){
                                 toast_no = postList.get(i).getToast_no().toString();
            
                              List<Toast_com> commList = dao.selectComment(toast_no);
                                pageContext.setAttribute("commList",commList);
                                                          
                                
                                
                             %>

										<c:forEach var="c" items="${commList}">
											<c:choose>
												<c:when test="${p.toast_no eq c.toast_no}">
													<input type="hidden" id="t_no" value="${c.toast_no}">
													<hr color='#c06c84'>
													<table width="100%">
														<tr>
															<td width="5%" align="center"><button
																	style="border: none; background-color: white;">🥂</button></td>
															<td width="20%"><c:out value="${c.tc_date}" /><br>
																<b><c:out value="${c.member_id}" /></b></td>
															<td><span id="tc_contents_span"><c:out value="${c.tc_contents}" /></span>
																		<!-- <input type="hidden" name="tc_no" value="${c.tc_no}">
                                               	<input type="hidden" id="tc_contents" name="tc_contents" value="${c.tc_contents}"> -->
															</td>
															<td><span><c:out value="${c.tc_contents}" /></span></td>
															<td width="7%" align="right">
																<!-- 댓글 수정 현재 페이지에서 구현 --> <!-- <form action="updateComment.jsp">
                                                   <input type="hidden" name="tc_no" value="${c.tc_no}">
                                                   <input type="hidden" name="tc_contents" value="${c.tc_contents}"> 
                                                   <input type="submit" value="댓글 수정">
                                                </form> --> <input
																type="hidden" id="tc_no_update" value="${c.tc_no}">
																<input type="hidden" id="tc_contents_update"
																value="${c.tc_contents}">
																<button id="update_comment" type="button"
																	onclick="clickUp()"
																	style="border: none; background-color: white;">수정</button>

															</td>


															<td width="7%" align="right">
																<form method="post" action="DeleteCommentCon">
																	<input type="hidden" name="tc_no" value="${c.tc_no}">
																	<!-- <input type="submit" value="삭제"  style="border: none; background-color: white;"> -->
																	<button id="delete_comment"
																		style="border: none; background-color: white;"
																		onclick="submit">삭제</button>
																</form> <!-- <a href="DeleteCommentCon?tc_no=${c.tc_no} ">삭제</a></td> -->
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
								</c:forEach>
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
							<p class=" wow fadeInRight" data-wow-duration="1s">Made with 같이마시조 <i class="fa fa-heart"></i> by <a target="_blank" href="https://shrcampus.com/">스마트인재캠퍼스</a>2022. All Rights Reserved</p>
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
      function list
   </script>

	<!-- 짠 -->
	<script>
   
	$(document).on("click", "#post_zzan_un", function(){ 
	
	console.log($(this).next().val());
	
   	$.ajax({
			data : {zzan_count : "1", toast_no : $(this).next().val()},
			url : "PostZzanCon",
			method : "GET",
			dataType : "text",
			context : this,  
			success: function(data){
				$('#post_zzan_un+span').text(data)
				$(this).html("<img src = 'assets/images/zzan.png' width = 4% />")
	            $(this).attr('id','post_zzan')	
			},
			error: function(){
				alert("통신실패!")
			}
		}) 
   });
	
	
	 $(document).on("click", "#post_zzan", function(){ 
		
		console.log($(this).next().val());
		
	   	$.ajax({
				data : {zzan_count : "0", toast_no : $(this).next().val()},
				url : "PostZzanCon",
				method : "GET",
				dataType : "text",
				context : this,  
				success: function(data){
					$('#post_zzan+span').text(data)
					$(this).html("<img src = 'assets/images/zzan_un.png' width = 4% />")
		            $(this).attr('id','post_zzan_un')	
				},
				error: function(){
					alert("통신실패!")
				}
			}) 
	   }); 
	
   
   </script>

	<!-- 클릭출력 테스트 -->
	<script>
   $(document).on("click", "#context", function(){ 
          console.log($(this).next().val());

           $.ajax({
              data: {toast_no : $(this).next().val()},
              url: "CountCommentCon",
              method: "get",
              method : "GET",
             dataType : "text",
             context : this,  
             success: function(data){
                 $(this).text("♥ 댓글 ♥ " +data);
             },
             error: function(){
                alert("통신실패!")
             } 
          })        
       
        });
      
      
        </script>
	<!-- 클릭출력 테스트 -->
	<script>
   <%--
   $("#update_comment").on("click", "button[name='add']", function() {
   	event.preventDefault(); // 고유 이벤트 중지
   	
   	// 클릭한 대상의 번호를 모달창에 저장.
   	var rno = $(this).attr("href");
   	$("#modalRno").val(rno);
   	
   	// replyModify 라면 수정창, replyDelete 라면 삭제창의 형태로 사용
   	if( $(this).hasClass("replyModify") ){ // 수정창
   		
   		$(".modal-title").html("댓글수정");
   		$("#update_comment").css("display", "inline"); // 수정버튼은 보여지도록 처리
   		$("#modalDelBtn").css("display", "none"); // 삭제버튼은 숨겨지도록 처리
   		$("#modalReply").css("display", "inline"); // 수정창 보여지도록
   		
   	} else if ( $(this).hasClass("replyDelete") ) { // 삭제창
   		
   		$(".modal-title").html("댓글삭제");
   		$("#update_comment").css("display", "none"); // 수정버튼은 숨겨지도록 처리
   		$("#modalDelBtn").css("display", "inline"); // 삭제버튼은 보여지도록 처리
   		$("#modalReply").css("display", "none"); // 수정창 숨겨지도록
   		
   	}
   	
   	$("#replyModal").modal("show"); // 부트스트랩 모달 함수
   	
   }); // end on --%>
   
   <%-- 댓글 수정 --%>
   
 	function clickUp(){
 		var com = $('input[type=text]').val()
 		
 		var val1 = "";
 		var val2 = "";
 		val1 = $("#tc_no_update").val();
 		val2 = $("#tc_contents_update").val();
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
 	
 	
   /* $(document).on("click", "#", function(){ 
       console.log($(this).next().val());
       
    
    
        $.ajax({
           data: {toast_no : $(this).next().val()},
           url: "CountCommentCon",
           method: "get",
           method : "GET",
          dataType : "text",
          context : this,  
          success: function(data){
              $(this).text("♥ 댓글 ♥ " +data);
              $('.license_input').attr("type", "text");
              console.log("통신!!");
          },
          error: function(){
             alert("통신실패!")
          } 
       })        
    
     }); */
   
   <%-- 짠 연습 --%>
   $(document).on("click", "#context", function(){ 
          console.log($(this).next().val());
          
       
       
           $.ajax({
              data: {toast_no : $(this).next().val()},
              url: "CountCommentCon",
              method: "get",
              method : "GET",
             dataType : "text",
             context : this,  
             success: function(data){
                 $(this).text("♥ 댓글 ♥ " +data);
             },
             error: function(){
                alert("통신실패!")
             } 
          })        
       
        });
      
      
        </script>

	<!-- 동시출력 -->
	<!--   <script type="text/javascript"> 

   function ajaxTest(){
       
       //console.log("콘솔테스트" + $(this));
       
      $.ajax({
       data: {toast_no : $('#t_no').val()},
        type : "GET",
        url : "CountCommentCon",
        dataType : "text",
        context: this,
        error : function() {
          alert('통신실패!!');
        },
        success : function(data) {
          $('.context').text(data);
        }
 
      });
    }
 
    ajaxTest(); 
 
  </script> -->


</body>
</html>