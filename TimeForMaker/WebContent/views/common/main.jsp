<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" type="icon" href="../assets/img/TFM_icon.png">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/templatemo.css">
    
    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="../assets/css/fontawesome.min.css">

    <!-- 메인에서 지역, 추천 슬라이드 바 만드는 슬릭 링크 시작 (황슬기 추가)-->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick-theme.css">

    <!--슬릭 링크 끝(슬기)-->
    <!--메인 css링크 (슬기) 위에 슬릭 링크 뒤에 있어야 마지막 버튼 스타일이 먹힘..!-->
    <link rel="stylesheet" href="../assets/css/user-header.css"><!--유저 헤드+푸터 부분css-->
    <link rel="stylesheet" href="../assets/css/main.css"><!--이건 메인 바디부분 css-->
</head>
<style>
</style>
<body>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow main_nav_all">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="main.html">
                <img src="../assets/img/메인로고.png" class="main_logo">
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav justify-content-end">
                        <li class="nav-item">
                            <a class="nav-link" href="<%= contextPath %>/views/member/LoginMain.jsp">로그인</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= contextPath %>/views/member/SignUpCondition.jsp">회원가입</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= contextPath %>/views/mypage/MyPageEditInfo.jsp">고객센터</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                    </a>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

    <!-- Modal 헤드에 검색 누르면 나오는 모달  -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="main_banner">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="../assets/img/찐메인배너1.png" alt="" >
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="main_banner">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="../assets/img/찐메인배너2.png" alt="">
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="main_banner">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 align-items-center">
                            <img class="img-fluid" src="../assets/img/찐메인배너3.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="main_banner">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 align-items-center">
                            <img class="img-fluid" src="../assets/img/찐메인배너4.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->

    <div class="main_all"><!-- 배너 뒤로 이어지는 부분-->
        <!-- 여기서부터 지역별  -->
        <section class="container py-5">
            <div class="main_loca">
                    <div class="main_loca_title">
                        <h4>어느 지역을 찾으시나요?</h4>
                    </div>
                    <div class="main_loca_item_bar">
                        <div class="main_loca_item">
                            <a href="" style="background-image: url(&quot;https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706apgujeong.jpg?small200&quot;);">
                                <span class="label">압구정 
                                                    청담</span>
                            </a>
                        </div>
                        <div class="main_loca_item">
                            <a href="" style="background-image: url(&quot;https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706itaewon.jpg?small200&quot;);">
                                <span class="label">이태원 
                                                    한남</span>
                            </a>
                        </div>
                        <div  class="main_loca_item">
                            <a href="" style="background-image: url(&quot;https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706sungsoo.jpg?small200&quot;);">
                                <span class="label">성수</span>
                            </a>
                        </div>
                        <div class="main_loca_item">
                            <a href="" style="background-image: url(&quot;https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706gwanghwamun.jpg?small200&quot;);">
                                <span class="label">광화문 
                                                    종로</span>
                            </a>
                        </div>
                        <div class="main_loca_item">
                            <a href="" style="background-image: url(&quot;https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706euljiro_0331.jpg?small200&quot;);">
                                <span class="label">을지로</span>
                            </a>
                        </div>
                        <div class="main_loca_item">
                            <a href="" style="background-image: url(&quot;https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706gangnam.jpg?small200&quot;);">
                                <span class="label">강남 
                                                    역삼</span>
                            </a>
                        </div>
                        <div class="main_loca_item">
                            <a href="" style="background-image: url(&quot;https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md_2022/0609_location_hapjeong,mangwon.png?small200&quot;);">
                                <span class="label">합정 
                                                    망원</span>
                            </a>
                        </div>
                        <div class="main_loca_item">
                            <a href="" style="background-image: url(&quot;https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706hongdae.jpg?small200&quot;);">
                                <span class="label">홍대 
                                                    신촌</span>
                            </a>
                        </div>
                        <div class="main_loca_item">
                            <a href="" style="background-image: url(&quot;https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706yeouido.jpg?small200&quot;);">
                                <span class="label">여의도</span>
                            </a>
                        </div>
                        <div class="main_loca_item">
                            <a href="" style="background-image: url(&quot;https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706bukchon_0331.jpg?small200&quot;);">
                                <span class="label">북촌 
                                                    삼청</span>
                            </a>
                        </div>
                    
                    </div>
            </div>
        </section>
        <!-- 지역별 끝 -->


        <!-- 추천 -->
        <section class="container py-5">
            <div class="main_recom">
                <div class="main_recom_title">
                    <h4>고객님께 추천드리는 클래스~!</h4>
                </div>
                <div class="main_recom_item_bar">
                    <div class="main_recom_item_wap">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_10_1.jpg">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>       
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                           <a href="">
                               <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_11_1.jpg">
                           </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <br>
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>       
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_9_1.JPG">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div> 
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_7_1.jpg">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_12_4.jpg">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>                   
                </div>
            </div>
        </section>
        <!--추천2-->
        <section class="container py-5">
            <div class="main_recom">
                <div class="main_recom_title">
                    <h4>고객님께 추천드리는 클래스~!</h4>
                </div>
                <div class="main_recom_item_bar">
                    <div class="main_recom_item_wap">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_12_1.jpg">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>       
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                           <a href="">
                               <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_13_1.jpg">
                           </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>       
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_9_1.JPG">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div> 
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_13_1.jpg">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_13_1.jpg">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>                   
                </div>
            </div>
        </section>
        <section class="container py-5">
            <div class="main_recom">
                <div class="main_recom_title">
                    <h4>고객님께 추천드리는 클래스~!</h4>
                </div>
                <div class="main_recom_item_bar">
                    <div class="main_recom_item_wap">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_9_1.JPG">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>       
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                           <a href="">
                               <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_2_1.jpg">
                           </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>       
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_3_1.jpg">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div> 
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_4_2.jpg">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>
                    <div class="main_recom_item_wap ">
                        <div class="main_recom_item_img">
                            <a href="">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/클래스이미지/c_20_3.jpg">
                            </a>
                        </div>
                        <div class="main_recom_item_body">
                            <br>
                            <a href="" class="main_class_name">클래스이름111</a>
                            <ul class="main_class_key">
                                <li>키워드</li>
                                <li>위치키워드</li>
                            </ul>
                            <p class="main_class_price">50,000₩</p>
                        </div>
                    </div>                   
                </div>
            </div>
            <div class="main_allclass_btnarea">
                <button class="main_allbtn" href="">더 많은 클래스 보기</button>

            </div>
        </section>
        <!-- 추천끝 -->
    </div>

    <!-- Start Footer -->
    <footer class="main_footer" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <img src="../assets/img/메인로고.png" class="main_logo">
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            서울특별시 강남구 테헤란로14길6
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="w-100 py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left">
                            &copy; 2023 떡잎방범대 박수진 박지현 이아인 임재린 황슬기
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="../assets/js/jquery-1.11.0.min.js"></script>
    <script src="../assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="../assets/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/js/templatemo.js"></script>
    <!-- End Script -->

    <!-- 메인 지역별, 추천별 슬라이드 스크립트 시작(슬기)-->
    <script src="../assets/js/slick.min.js"></script>
    <script>
       //이건 지역별
       $('.main_loca_item_bar').slick({
            lazyLoad: 'ondemand',
            slidesToShow: 6,
            slidesToScroll: 1,
		    nextArrow : '<i class="fas fa-chevron-right"></i>',
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                }
            ]
        });

       //이건 추천별

       $(function(){
			$('.main_recom_item_bar').slick({
				slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
				infinite : true, 	//무한 반복 옵션	 
				slidesToShow : 4,		// 한 화면에 보여질 컨텐츠 개수
				slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
				speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
				arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
				autoplay : true,			// 자동 스크롤 사용 여부
				autoplaySpeed : 5000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
				pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
				prevArrow : '<i class="fas fa-chevron-left"></i>',		// 이전 화살표 모양 설정
				nextArrow : '<i class="fas fa-chevron-right"></i>',		// 다음 화살표 모양 설정
				draggable : true, 	//드래그 가능 여부 
				
				responsive: [{
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 1
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 1
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                        }
                    }
                ]

			});
  		})
    </script>
    
</body>

</html>