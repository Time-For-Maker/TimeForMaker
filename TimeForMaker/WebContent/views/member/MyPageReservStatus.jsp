<%@ import="java.util.ArrayList mypage. %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage   = pi.getStartPage();
	int endPage     = pi.getEndPage();
	int maxPage     = pi.getMaxPage(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="/___vscode_livepreview_injected_script"></script>
 
 <meta name="viewport" content="width=device-width, initial-scale=1">

 <link rel="apple-touch-icon" href="../../assets/img/apple-icon.png">
 <link rel="shortcut icon" type="image/x-icon" href="../../assets/img/favicon.ico">

 <link rel="stylesheet" href="../../assets/css/user-header.css">
 <link rel="stylesheet" href="../../assets/css/mypage_main.css">
 <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
 <link rel="stylesheet" href="../../assets/css/templatemo.css">

 <!-- Load fonts style after rendering the layout styles -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
  <link rel="stylesheet" href="../../assets/css/fontawesome.min.css">
 
</head>

     <!-- Header -->
   <nav class="navbar navbar-expand-lg navbar-light shadow main_nav_all">
    <div class="container d-flex justify-content-between align-items-center">

        <a class="navbar-brand text-success logo h1 align-self-center" href="main.html">
            <img src="../../assets/img/메인로고.png" class="main_logo">
        </a>

        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
            <div class="flex-fill">
                <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <a class="nav-link" href="../../공통/main.html">로그아웃</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../customer-center/reception-board.html">고객센터</a>
                    </li>
                </ul>
            </div>
            <div class="navbar align-self-center d-flex">
                <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                    <i class="fa fa-fw fa-search text-dark mr-2"></i>
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

    <!-- start body -->
 
 <div class="mypage-main-wrapper">
     <!-- 마이페이지 왼쪽 사이드, 시작 -->
     <div class="mypage-main-sidemenu">
         <div class="mypage-sidemenu-title">
             <h5>마이페이지</h5>
             <span><a href="MyPageReservStatus.html">나의 예약</a></span><br>
             <span><a href="MyPageEditInfo.html">내 정보 수정</a></span><br>
             <span><a onclick="mypage_Withdrawal()">회원탈퇴</a></span><br>
         </div>
         <div class="mypage-sidemenu-title">
             <h5>고객센터</h5>
             <span><a href="">공지사항</a></span><br>
             <span><a href="">1:1문의</a></span><br>
         </div>

     </div>
     <!-- 마이페이지 왼쪽 사이드, 끝 -->

     <!-- 마이페이지 중앙 몸덩어리 시작-->
     <div class="mypage-main-container">
         <!-- 마이페이지 프로필 시작-->
         <div class="mypage-profile">
             <img class="mypage-profile-image" src="../../assets/img/category_img_01.jpg" alt="프로필 사진">
             <!-- <img class="mypage-profile-image" src="path/to/profile-image.jpg" alt="프로필 사진"> -->
             <div class="mypage-profile-content">
                 <h5>안녕하세요</h5>
                 <span>김아무개님 <span>😊</span></span>
             </div>
            
         </div>
          <!-- 마이페이지 프로필 끝-->

          <!-- 마이페이지 메뉴바 시작-->
          <div class="mypage-main-list">
             <div class="mypage-list-title">
                 <div class="mypage-list-menu"><a href="MyPageMain.html">방문 내역</a>
                     <div class="mypage-list2-line1"></div>
                 </div>
                 <div class="mypage-list-menu"><a href="MyPageReservStatus.html">나의 예약</a>
                     <div class="mypage-list2-line2"></div>
                 </div>
                 <div class="mypage-list-menu"><a href="MyPageEditInfo.html">내 정보 수정</a>
                     <div class="mypage-list2-line3"></div>
                 </div>
             </div>
             
         </div>
         <!-- 마이페이지 메뉴바 끝-->

         <!-- 예약 결제 리스트 시작-->
         <div class="mypage-appointment-list-wrapper">
             <div class="mypage-appointment-list-container">
                 <span> <h4>예약 및 결제 현황</h4></span>
                 <div class="mypage-appointment-list">
                      <% for(list != null){ %>
                          <% for(Board b : list){ %>
                         <div class="mypage-appointment-list-img">
                             <img src="../../assets/img/brand_01.png">
                         </div>                       
                         <div class="mypage-appointment-text-container">
                             <span class="mypage-appointment-list-title">청바지롤 꼬매고 또 꼬매고</span>
                             <span class="mypage-reserv-status" style="color: green;">결제대기</span>
                             <!-- 임의로 컬러 넣었는데 기능 추가할때 지우기 2023.07.08 -->
                             <br>
                             <span class="mypage-appointment-list-keyword">키워드림</span>
                             <span class="mypage-appointment-list-keyword">키워드림</span>
                             <br>
                             <span class="mypage-appointment-list-time">2023-07-07 (금) 오후 5:30 </span>
                             <span class="mypage-appointment-list-rpeople"> 2명</span>
                         </div>
                         <div class="mypage-appointment-list-cancel">
                             <button class="mypage-btn-payment" onclick="mypage_payment();" >결제</button>
                             <!-- 임의로 노출시킴 기능 넣을때 style="display: none;" 넣기-->
                             <button class="mypage-btn-cancel" onclick="mypage_delete();" style="display: none;">결제취소</button>
                             
                         </div>
                             
                             <% } %>
                         <% }else{ %>
                            <p>등록된 방문 예약이 없습니다.</p>
                         <% } %> 
                 </div>
                 <div class="mypage-appointment-list">
                     <!-- <% for(list != null){ %> -->
                         <!-- <% for(Board b : list){ %> -->
                         <div class="mypage-appointment-list-img">
                             <img src="../../assets/img/brand_02.png">
                         </div>                       
                         <div class="mypage-appointment-text-container">
                             <span class="mypage-appointment-list-title">나만의 수제 운동화 만들기</span>
                             <span class="mypage-reserv-status" style="color: #FF8551;">승인대기</span>
                             <!-- 임의로 컬러 넣었는데 기능 추가할때 지우기 2023.07.08 -->
                             <br>
                             <span class="mypage-appointment-list-keyword">키워드림</span>
                             <span class="mypage-appointment-list-keyword">키워드림</span>
                             <br>
                             <span class="mypage-appointment-list-time">2023-07-07 (금) 오후 5:30 </span>
                             <span class="mypage-appointment-list-rpeople"> 2명</span>
                         </div>
                         <div class="mypage-appointment-list-cancel">
                             <button class="mypage-btn-payment" onclick="mypage_payment();" style="display: none;">결제</button>
                             <button class="mypage-btn-cancel" onclick="mypage_delete();" >결제취소</button>
                             <!-- 임의로 노출시킴 기능 넣을때 style="display: none;" 넣기-->
                         </div>
                             
                             <!-- <% } %> -->
                         <!-- <% }else{ %> -->
                             <!-- 등록된 방문 예약이 없습니다. -->
                         <!-- <% } %> -->
                         
                 </div>
             </div>
                 <!-- 예약 결제 리스트 끝-->

              <!-- 취소 내역 리스트 시작 -->
             <div class="mypage-appointment-list-container">
                 <span> <h4>예약 취소 내역</h4></span>
                 <div class="mypage-appointment-list">
                     <!-- <% for(list != null){ %> -->
                         <!-- <% for(Board b : list){ %> -->
                         <div class="mypage-appointment-list-img">
                             <img src="../../assets/img/brand_02.png">
                         </div>                       
                         <div class="mypage-appointment-text-container">
                             <span class="mypage-appointment-list-title">나만의 수제 운동화 만들기</span>
                             <span class="mypage-reserv-status" style="color: #4e4e99;">결제취소</span>
                             <!-- 임의로 컬러 넣었는데 기능 추가할때 지우기 2023.07.08 -->
                             <br>
                             <span class="mypage-appointment-list-keyword">키워드림</span>
                             <span class="mypage-appointment-list-keyword">키워드림</span>
                             <br>
                             <span class="mypage-appointment-list-time">2023-07-07 (금) 오후 5:30 </span>
                             <span class="mypage-appointment-list-rpeople"> 2명</span>
                         </div>
                         <div class="mypage-appointment-list-cancel">
                             <button class="mypage-btn-cancel-details" onclick="mypage_cancel_details();" >상세보기</button>
                             <!-- 임의로 노출시킴 기능 넣을때 style="display: none;" 넣기-->
                         </div>
                             
                             <!-- <% } %> -->
                         <!-- <% }else{ %> -->
                             <!-- 등록된 방문 예약이 없습니다. -->
                         <!-- <% } %> -->  
                 </div>
             </div>
             <!-- 취소 내역 리스트 끝 -->

              <!-- 추천 상품 리스트 시작-->
              <div class="mypage-popular-list">
                 <span><h5 style="font-weight: 600;">김아무개님을 위한 추천 클래스</h5></span>
                 <div class="mypage_most_slide_wrapper">
                     <ul class="mypage_most_slides flex">
                       <li><img src="../../assets/img/brand_01.png" alt=""></li>
                       <li><img src="../../assets/img/brand_02.png" alt=""></li>
                       <li><img src="../../assets/img/brand_03.png" alt=""></li>
                       <li><img src="../../assets/img/brand_04.png" alt=""></li>
                       <li><img src="../../assets/img/brand_01.png" alt=""></li>
                       <li><img src="../../assets/img/brand_02.png" alt=""></li>
                       <li><img src="../../assets/img/brand_03.png" alt=""></li>
                       <li><img src="../../assets/img/brand_04.png" alt=""></li>
                       <li><img src="../../assets/img/brand_01.png" alt=""></li>
                       <li><img src="../../assets/img/brand_02.png" alt=""></li>
                     </ul>
                     <p class="mypage_most_slide_controls">
                       <span class="prev"><img  class="mypage_most_slide_controld-btn-prev" src="../../assets/img/free-icon-font-angle-left-3916912.png"></img></span>
                       <span class="next"><img  class="mypage_most_slide_controld-btn-next" src="../../assets/img/free-icon-font-angle-right-3916907.png"></img></span>
                     </p>
                 </div>

              </div>
              <!-- 추천 상품 리스트 끝-->

              <!-- 결제 취소 모달창 시작-->
              <div class="mypage_delete_more">
                 <div class="mypage_delete_more_check"><br>
                     <b>예약을 취소합니까?</b><br>
                     <button class="mypage_delete_more_check_yes" onclick="mypage_delete_more_check_yes();">예</button>
                     <button class="mypage_delete_more_check_no" onclick="mypage_delete_more_check_no();">아니요</button>
                 </div>
             </div>

              <!-- 결제 취소 모달창 끝-->

             <!-- 결제 모달창 시작-->
             <div class="mypage_payment_more">
                 <div class="mypage_payment_more_check"><br>
                     <b>결제를 진행합니까?</b><br>
                     <button class="mypage_payment_more_check_yes" onclick="mypage_payment_more_check_yes();">예</button>
                     <button class="mypage_payment_more_check_no" onclick="mypage_payment_more_check_no();">아니요</button>
                 </div>
             </div>

              <!-- 결제 모달창 끝-->
             <!-- 완료한 클래스 모달창 시작-->
             <div class="mypage_details_more">
                 <div class="mypage_details_more_check"><br>
                     <b>상세 결제 내역</b>
                     <div style="text-align: start; margin: 50px 30px 0 ;">
                     <p>예약번호 : AA3D6SF5FAQ</p> 
                     <P>성함 　　: 김아무개</P>
                     <P>클래스명 : 나만의 수제 운동화 만들기</P>
                     <P>결제일시 : 2023-07-07/17:30</P>
                     <p>결제금액 : 70,000 원</p>
                     <br>
                     </div>
                     
                     <button class="mypage_details_more_check_yes" onclick="mypage_details_more_check_yes();">확인</button>
                 </div>
             </div>
             <!-- 완료한 클래스 모달창 끝-->

             <!-- 회원 탈퇴 모달창 시작 -->
             <div class="mypage_Withdrawal_more">
                 <div class="mypage_Withdrawal_more_check"><br>
                     <b>정말 회원 탈퇴하시나요?</b><br>
                     <span class="mypage_Withdrawal_contents">
                         <h6>회원 탈퇴 전, 유의사항을 확인해 주시기 바랍니다.</h6>
                         <p>- 회원 탈퇴시 회원전용 웹 서비스 이용이 블가합니다.<br>- 거래정보가 있는 경우, 전자상거래 등에서의 소비자 보호에 관한 법률에따라 계약 또는 청약 청회에 관한 기록, 대금결제 및 재화 등의  기록은 5년동안 보존됩니다.<br>- 이미 결제가 완료된 건은 탈퇴로 취소되지 않습니다.</p>
                     </span>
                     <button class="mypage_Withdrawal_more_check_yes" onclick="mypage_Withdrawal_more_check_yes();">예</button>
                     <button class="mypage_Withdrawal_more_check_no" onclick="mypage_Withdrawal_more_check_no();">아니요</button>
                 </div>

             </div>
             
                 <!-- 회원 탈퇴 안내 성공 모달창 -->
                 <div class="mypage_Withdrawal_final">
                 <div class="mypage_Withdrawal_final_check"><br>
                     <b>정말 회원 탈퇴하시나요?</b><br>
                     <span class="mypage_Withdrawal_contents">
                         <img src="../../assets/img/탈퇴아이콘-removebg-preview.png" width="100px" height="100px" style="margin-bottom: 15px;">
                         <h3>회원 탈퇴 성공</h3>
                         <h6>회원 탈퇴가 완료되었습니다.</h6>
                     </span>
                     <button class="mypage_Withdrawal_final_check_yes" onclick="mypage_Withdrawal_final_check_yes();">로그인 페이지로 돌아가기</button>
 
                 </div>
             </div>
                 <!-- 회원 탈퇴 안내 성공 모달창 -->
         </div>
        
     </div>
     <!-- 마이페이지 중앙 몸덩어리 끝-->
 
 </div>
 <!-- close body -->


 <!-- Start Footer -->
 <footer class="main_footer" id="tempaltemo_footer">
     <div class="container">
         <div class="row">

             <div class="col-md-4 pt-5">
                 <img src="../../assets/img/메인로고.png" class="main_logo">
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


<!-- 결제 예약 현황 스트립트 시작-->
 <script>
 // db에서 받아온 값
 var status = ""; // 결제대기 또는 승인대기

 // span 요소 선택
 var statusElement = document.querySelector(".mypage-reserv-status");
 var payBtn = document.querySelector(".mypage-btn-payment");
 var cancelBtn = document.querySelector(".mypage-btn-cancel");

 // db에서 받아온 값에 따라 텍스트와 스타일 변경
 if (status === "결제대기") {
     statusElement.textContent = "결제대기";
     statusElement.style.color = "green";
     payBtn.style.display = "block";
 } else if (status === "승인대기") {
     statusElement.textContent = "승인대기";
     statusElement.style.color = "orange";
     cancelBtn.style.display = "block";
 } else if (status === "승인완료"){
     statusElement.style.display = "none";
 }
 </script>


<!-- 슬라이드 관련 스크립트 시작-->
<script>
 var slides = document.querySelector('.mypage_most_slides'),
 slide = document.querySelectorAll('.mypage_most_slides li'),
 currentIdx = 0,
 slideCount = slide.length,
 slideWidth = 200,
 slideMargin = 30,
 prevBtn = document.querySelector('.prev'),
 nextBtn = document.querySelector('.next');

 slides.style.width =
 (slideWidth + slideMargin) * slideCount - slideMargin + 'px';

 function moveSlide(num) {
 slides.style.left = -num * 231 + 'px';
 currentIdx = num;
 }

 nextBtn.addEventListener('click', function () {
 if( currentIdx < slideCount - 3){
     moveSlide(currentIdx + 1);
 }else{
     moveSlide(0);
 }   
 });

 prevBtn.addEventListener('click', function () {
 if( currentIdx > 0){
     moveSlide(currentIdx - 1);
 }else{
     moveSlide(slideCount - 3);
 }   
 });
</script>
<!-- 슬라이드 관련 스크립트 끝-->

<script src="../../assets/js/mypage_withdrawal_modal.js"></script>
<script src="../../assets/js/jquery-1.11.0.min.js"></script>
<script src="../../assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<script src="../../assets/js/templatemo.js"></script>
<!-- End Script -->
  
  
</body>
</html>