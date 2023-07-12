<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	String contextPath = request.getContextPath();

	Member loginUser = (Member) session.getAttribute("loginUser");
	// 로그인전이라면 loginUser에는 null값이 담겨있을 것이고
	// 로그인성공 후라면, loginUser에는 로그인한 회원의 정보가 담긴 Member객체가 들어가 있을것.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="apple-touch-icon" href="../../assets/img/apple-icon.png">
  <link rel="shortcut icon" type="image/x-icon" href="../../assets/img/favicon.ico">

  <link rel="stylesheet" href="../../assets/css/user-header.css">
  <link rel="stylesheet" href="../../assets/css/mypage_login.css">
  <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../assets/css/templatemo.css">

  <!-- Load fonts style after rendering the layout styles -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
  <link rel="stylesheet" href="../../assets/css/fontawesome.min.css">
 
 
</head>
<body>

	

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
                        <a class="nav-link" href="LoginMain.html">로그인</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="SignUpCondition.html">회원가입</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">고객센터</a>
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

    <!-- start body -->
    <div class="user-login-wrapper">
      <div class="user-login-container">
        <!-- 회원가입 상단 바 시작 -->
        <ul class="nav justify-content-center">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#" > <span style="color:gray; font-size: 12px;">________________________　　　쉽고 간단한 로그인 및 회원 가입　　　________________________</span></a>
          </li>
          <br>
        </ul>
        <div style="color:black; font-weight: bold; text-align: center; margin-top: 50px;"><h5 style="font-weight: 400;">로그인 방법 선택</h5></div>
        <!-- 회원가입 상단 바 끝 -->

        <!-- 로그인 버튼 시작-->
        <div class="user-login-list">
          <!-- 카카오톡 로그인 시작-->
          <div class="user-login-kakaoWapper">
            <div onclick="kakaoLogin();" class="user-login-kakaodiv">
                <a class="user-login-astyle" href="javascript:void(0)" >
                    <span class="user-login-kakaospan">카카오톡으로 로그인</span>
                </a>
              </div>
          </div>
          <!-- 카카오톡 로그인 끝-->
          <!-- 구글 로그인 시작-->
          <div class="user-login-googleWapper">
            <div class="user-login-GgCustomLogin">
              <a class="user-login-astyle" href="javascript:void(0)">
              <span class="user-login-googlespan">구글 이메일로 로그인</span>
              </a>
            </div>
          </div>
          <!-- 구글 로그인 끝-->

          <!-- 자사 로그인 시작 -->
          <div class="user-login-membership-wapper">
            <div class="user-login-memberdiv">
              <a class="user-login-astyle" href="LoginTFM.jsp">
              <span class="user-login-memberspan">다른 방법으로 로그인</span>
              </a>
            </div>
          </div>
          <!-- 자사 로그인 끝 -->

          <!-- 회원가입 유도 버튼 시작-->
          <div class="membershipGuideWapper">
              <span style="font-size: 13px; color: darkgrey; font-weight: 600;">아이디가 없으신가요? <a href="SignUpCondition.jsp" style="color: rgb(99, 99, 255); text-decoration-line: none; font-weight: 600 !important; font-size: 13px !important;" >회원가입</a>하기</span>
          </div>
           <!-- 회원가입 유도 버튼 끝-->
        </div>
        <!-- 로그인 버튼 끝-->


       
        <!-- jsQuery 및 기능 구현 시작-->
        
        <!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
        <meta name ="google-signin-client_id" content="217755353555-3msma49ckq4fa47k0tg5tkshatcdh8c9.apps.googleusercontent.com">

        
         <script>
         
         //처음 실행하는 함수
         function init() {
           gapi.load('auth2', function() {
             gapi.auth2.init();
             options = new gapi.auth2.SigninOptionsBuilder();
             options.setPrompt('select_account');
                 // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
             options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
                 // 인스턴스의 함수 호출 - element에 로그인 기능 추가
                 // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
             gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
           })
         }
         
         function onSignIn(googleUser) {
           var access_token = googleUser.getAuthResponse().access_token
           $.ajax({
               // people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
             url: 'https://people.googleapis.com/v1/people/me'
                 // key에 자신의 API 키를 넣습니다.
             , data: {personFields:'birthdays', key:'AIzaSyBOdmeC4SOSzXmPGLEM2vZueqiBSWKg3wk', 'access_token': access_token}
             , method:'GET'
           })
           .done(function(e){
                 //프로필을 가져온다.
             var profile = googleUser.getBasicProfile();
             console.log(profile)
           })
           .fail(function(e){
             console.log(e);
           })
         }
         function onSignInFailure(t){		
           console.log(t);
         }
         </script>
          <!-- 구글 api 사용을 위한 스크립트-->
         <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>

         <script>
         
         //기존 로그인 상태를 가져오기 위해 Facebook에 대한 호출
         function statusChangeCallback(res){
           statusChangeCallback(response);
         }
         
         function fnFbCustomLogin(){
           FB.login(function(response) {
             if (response.status === 'connected') {
               FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
                 console.log(r);
               })
             } else if (response.status === 'not_authorized') {
               // 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
               alert('앱에 로그인해야 이용가능한 기능입니다.');
             } else {
               // 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
               alert('페이스북에 로그인해야 이용가능한 기능입니다.');
             }
           }, {scope: 'public_profile,email'});
         }
         
         window.fbAsyncInit = function() {
           FB.init({
             appId      : '1588150011384568', // 내 앱 ID를 입력한다.
             cookie     : true,
             xfbml      : true,
             version    : 'v10.0'
           });
           FB.AppEvents.logPageView();   
         };
         </script>
         
         <!--반드시 중간에 본인의 앱아이디를 입력하셔야 합니다.-->
         <script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1588150011384568" nonce="SiOBIhLG"></script>

       </div>
        
        <!-- 카카오 스크립트 -->
        <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
        <script>
        Kakao.init('8890a67c089173194979845f9389950d'); //발급받은 키 중 javascript키를 사용해준다.
        console.log(Kakao.isInitialized()); // sdk초기화여부판단
        //카카오로그인
        function kakaoLogin() {
            Kakao.Auth.login({
              success: function (response) {
                Kakao.API.request({
                  url: '/v2/user/me',
                  success: function (response) {
                    console.log(response)
                  },
                  fail: function (error) {
                    console.log(error)
                  },
                })
              },
              fail: function (error) {
                console.log(error)
              },
            })
          }
        //카카오로그아웃  
        function kakaoLogout() {
            if (Kakao.Auth.getAccessToken()) {
              Kakao.API.request({
                url: '/v1/user/unlink',
                success: function (response) {
                  console.log(response)
                },
                fail: function (error) {
                  console.log(error)
                },
              })
              Kakao.Auth.setAccessToken(undefined)
            }
          }  
        </script>

        <!-- jsQuery 및 기능 구현 끝-->


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
  <script src="../../assets/js/jquery-1.11.0.min.js"></script>
  <script src="../../assets/js/jquery-migrate-1.2.1.min.js"></script>
  <script src="../../assets/js/bootstrap.bundle.min.js"></script>
  <script src="../../assets/js/templatemo.js"></script>
  <!-- End Script -->

</body>
</html>