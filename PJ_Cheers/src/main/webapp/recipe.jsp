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
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="index.html">
                                        <img src="assets/images/logo.png" />
                                    </a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->



                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
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
                        <h1><a href="recipe.html">home recipe</a></h1>
                    </div><!-- End of head title -->
                    <div>
                        <div class="base_btn">
                            <div class="base_controls">
                                <button type="button" class="base_soju"><a href="recipe_soju.html">소주</a></button>
                                <button type="button" class="base_macju"><a href="recipe_macju.html">맥주</a></button>
                            </div><br>
                        </div>
                        <div class="main_service_area">
                            <div class="single_service_area" id ="r1">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/더티호.jpg" alt="더티호" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 더티호</h3>
                                            <h5>base : 맥주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                호가든, 기네스, 숟가락 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. 호가든을 잔에 50%정도 거품이 나도록 따른다. <br>
                                                2. 숟가락을 뒤집어서 조심히 기네스를 50%정도 따른다.<br>
                                                3. 이때, 층이 생기면 끝!
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/메로나소주.jpg" alt="메로나소주" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 메로나 소주 칵테일</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                사이다, 소주, 메로나, 소주잔(계량컵), 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. 세팅잔에 소주 1~2잔을 넣는다.<br>
                                                2. 사이다는 소주의 2배로 넣는다.<br>
                                                3. 섞인 곳에 메로나를 쏘옥~ 넣는다.<br>
                                                4. 메로나를 콩콩 눌러서 녹이면 끝!
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/모구모구스파클링.jpg" alt="모구모구스파클링" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 모구모구스파클링</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                모구모구복숭아, 소주, 트로피카나 복숭아, 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. 세팅잔에 모구모구복숭아 1~2잔을 넣는다.<br>
                                                2. 트로피카나 복숭아를 동일한 비율로 넣는다.<br>
                                                3. 섞인 곳에 소주 1잔을 넣는다.<br>
                                                4. 모구모구에는 젤리가 들어있기 때문에 잘 섞어주면 끝 !
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/밀키스주.jpg" alt="밀키스주" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 밀키스주</h3>
                                            <h5>base : 맥주,소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                소주, 맥주, 사이다, 소주잔(계량용), 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/백종원모히또.jpg" alt="백종원모히또" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3>백종원모히또</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                레몬, 깻잎, 소주, 사이다, 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/복숭아자몽칵테일.jpg" alt="복숭아자몽칵테일" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 복숭아자몽칵테일</h3>
                                            <h5>base : 이슬톡톡</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                자몽주스, 이슬톡톡, 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/블레밀주.jpg" alt="블레밀주" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 밀레밀주</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                소주, 밀키스, 블루레몬에이드, 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/뽕따하와이.jpg" alt="뽕따하와이" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 뽕따하와이</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                소주, 사이다, 레몬반개, 뽕따아이스크림, 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/사과에이슬.jpg" alt="사과에이슬" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 사과에이슬</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                소주, 트로피카나사과맛, 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/쏘메리카노.jpg" alt="쏘메리카노" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3>쏘메리카노</h3>
                                            <h5>base : 맥주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                소주, 커피<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/야매럼콕.jpg" alt="야매럼콕" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 야매럼콕</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                콜라, 소주, 레몬에이드, 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/에너자이저주.jpg" alt="에너자이저주" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 에너자이저주</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                소주, 핫식스, 파워에이드, 소주잔(계량용), 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/예거피치가이.jpg" alt="예거피치가이" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 예거피치가이</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                소주, 사이다, 레몬반개, 뽕따, 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/오렌지블랑.jpg" alt="오렌지블랑" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 오렌지블랑</h3>
                                            <h5>base : 맥주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                1664블랑, 오렌지주스, 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/잎솔루트.jpg" alt="잎솔루트" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 잎솔루트</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                잎새주, 솔의눈, 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/자몽리타.jpg" alt="자몽리타" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 자몽리타</h3>
                                            <h5>base : 맥주,소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                호가든, 자몽에이슬, 소주잔(계량용), 세팅잕<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/죠스바칵테일.jpg" alt="죠스바칵테일" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 죠스바칵테일</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                소주, 사이다, 죠스바, 소주잔(계량용), 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/태극주.jpg" alt="태극주" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 태극주</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                홍초, 소주, 파워에이드<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                            <div class="single_service_area">
                                <!-- 레시피 스따뚜 -->
                                <div class="row">
                                    <button class="hatu"><img src="assets/images/hatu.png"></a></button>
                                    <div class="col-sm-6">
                                        <div class="signle_service_left">
                                            <img src="assets/images/홍익인간주.jpg" alt="홍익인간주" />
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-push-1">
                                        <div class="single_service">
                                            <br><br><br>
                                            <h3> 홍익인간주</h3>
                                            <h5>base : 소주</h5>
                                            <div class="separator2"></div>
                                            <p>♡ 준비물 ♡<br>
                                                홍초, 소주, 소주잔(계량용), 세팅잔<br><br>
                                                ♥ 제조방법 ♥<br>
                                                1. <br>
                                                2. <br>
                                                3. <br>
                                                4.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of single service area -->
                        </div>

                        <!-- footer Section -->
                        <footer id="footer" class="footer">
                            <div class="container">
                                <div class="main_footer">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="copyright_text text-center">
                                                <p class=" wow fadeInRight" data-wow-duration="1s">Made with <i
                                                        class="fa fa-heart"></i> by <a target="_blank"
                                                        href="http://bootstrapthemes.co">Bootstrap Themes</a>2016. All
                                                    Rights Reserved</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End of container -->
                        </footer><!-- End of footer -->



                        <!-- START SCROLL TO TOP  -->

                        <div class="scrollup">
                            <a href="#"><i class="fa fa-chevron-up"></i></a>
                        </div>

                        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
                        <script src="assets/js/vendor/bootstrap.min.js"></script>

                        <script src="assets/js/jquery.easing.1.3.js"></script>

                        <script src="assets/js/plugins.js"></script>
                        <script src="assets/js/main.js"></script>

</body>

</html>