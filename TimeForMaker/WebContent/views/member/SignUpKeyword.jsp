<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUpKeyword</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="apple-touch-icon" href="../../assets/img/apple-icon.png">
  <link rel="shortcut icon" type="image/x-icon" href="../../assets/img/favicon.ico">

  <link rel="stylesheet" href="../../assets/css/user-header.css">
  <link rel="stylesheet" href="../../assets/css/mypage_signup.css">
  <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../assets/css/templatemo.css">

  <!-- Load fonts style after rendering the layout styles -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
  <link rel="stylesheet" href="../../assets/css/fontawesome.min.css">
 
</head>
<body>

	<script>
		const msg = "<%= (String)session.getAttribute("alertMsg") %>";
		if(msg != "null"){
			alert(msg);
			// 알림창을 띄워준 후 session에 담긴 해당 메세지는 지워줘야한다.
			// 안그럼, menubar.jsp가  로딩될때마다 항상 메세지가 뜰것..
			<% session.removeAttribute("alertMsg"); %>
		}
	</script>

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
        <!-- 회원 가입 상단바 시작-->
        <ul class="nav justify-content-center">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#" > <span style="color:gray; font-size: 12px;">________________________　　　쉽고 간단한 로그인 및 회원 가입　　　________________________</span></a>
          </li>
        </ul>
        <div class="user-login-chapter">
          <span class="user-login2-chap1">
           1
          </span>
          <span style="color: gray; font-size: 15px;">ㅡ</span>
          <span class="user-login2-chap2">
            2
          </span>
          <span style="color: gray; font-size: 15px;">ㅡ</span>
          <span class="user-login2-chap3">
            3
          </span>
        </div>
        <h5 style="margin-top: 15px;">키워드 입력하기</h5>
        <!-- 회원 가입 상단바 끝-->

        <!-- 키워드 체크박스 전체 디브 시작-->
        <div class="user-login-keyword-wapper">

          <form method="POST" action="form-action.html">
            <!-- 첫번쨰 대분류의 키워드 시작-->
            <div class="user-login-keyword-title">
              <h6>키워드 대분류</h6>
              
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key1" style="display: none;">
                <label for="key1">일</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key2" style="display: none;">
                <label for="key2">이</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key3" style="display: none;">
                <label for="key3">삼</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key4" style="display: none;">
                <label for="key4">사</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key5" style="display: none;">
                <label for="key5">오</label>
              </span>
              <br>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key1" style="display: none;">
                <label for="key1">일</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key2" style="display: none;">
                <label for="key2">이</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key3" style="display: none;">
                <label for="key3">삼</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key4" style="display: none;">
                <label for="key4">사</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key5" style="display: none;">
                <label for="key5">오</label>
              </span>
              <br>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key1" style="display: none;">
                <label for="key1">일</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key2" style="display: none;">
                <label for="key2">이</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key3" style="display: none;">
                <label for="key3">삼</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key4" style="display: none;">
                <label for="key4">사</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key5" style="display: none;">
                <label for="key5">오</label>
              </span>

            </div>
             <!-- 첫번쨰 대분류의 키워드 끝-->

            <!-- 두번쨰 대분류의 키워드 시작-->
            <div class="user-login-keyword-title">
              <h6>키워드 대분류</h6>
              
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key1" style="display: none;">
                <label for="key1">일</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key2" style="display: none;">
                <label for="key2">이</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key3" style="display: none;">
                <label for="key3">삼</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key4" style="display: none;">
                <label for="key4">사</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key5" style="display: none;">
                <label for="key5">오</label>
              </span>
              <br>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key1" style="display: none;">
                <label for="key1">일</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key2" style="display: none;">
                <label for="key2">이</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key3" style="display: none;">
                <label for="key3">삼</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key4" style="display: none;">
                <label for="key4">사</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key5" style="display: none;">
                <label for="key5">오</label>
              </span>
              <br>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key1" style="display: none;">
                <label for="key1">일</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key2" style="display: none;">
                <label for="key2">이</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key3" style="display: none;">
                <label for="key3">삼</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key4" style="display: none;">
                <label for="key4">사</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key5" style="display: none;">
                <label for="key5">오</label>
              </span>

            </div>
            <!-- 두번쨰 대분류의 키워드 끝-->

            <!-- 세번쨰 대분류의 키워드 시작-->
            <div class="user-login-keyword-title">
              <h6>키워드 대분류</h6>
              
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key1" style="display: none;">
                <label for="key1">일</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key2" style="display: none;">
                <label for="key2">이</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key3" style="display: none;">
                <label for="key3">삼</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key4" style="display: none;">
                <label for="key4">사</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key5" style="display: none;">
                <label for="key5">오</label>
              </span>
              <br>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key1" style="display: none;">
                <label for="key1">일</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key2" style="display: none;">
                <label for="key2">이</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key3" style="display: none;">
                <label for="key3">삼</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key4" style="display: none;">
                <label for="key4">사</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key5" style="display: none;">
                <label for="key5">오</label>
              </span>
              <br>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key1" style="display: none;">
                <label for="key1">일</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key2" style="display: none;">
                <label for="key2">이</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key3" style="display: none;">
                <label for="key3">삼</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key4" style="display: none;">
                <label for="key4">사</label>
              </span>
              <span class="user-login-keyword-box">
                <input type="checkbox" id="key5" style="display: none;">
                <label for="key5">오</label>
              </span>

            </div>
            <!-- 세번쨰 대분류의 키워드 끝-->

            <!-- 확인 및 넘어가기 버튼 시작-->
            <div class="user-login-keyword-contents">
              <span class="user-loginbtn">
                <button type="button" class="user-backbtn" onclick="location.href='../../공통/main.html'">넘어가기</button>
                <input type="submit" value="확인" class="user-gobtn">
              </span>
            </div>
            <!-- 확인 및 넘어가기 버튼 끝-->
            
          </form>

      </div>
      <!-- 키워드 체크박스 전체 디브 끝-->
    </div>
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
  
  <!-- End Footer -->

  <!-- Start Script -->
  <script src="../../assets/js/jquery-1.11.0.min.js"></script>
  <script src="../../assets/js/jquery-migrate-1.2.1.min.js"></script>
  <script src="../../assets/js/bootstrap.bundle.min.js"></script>
  <script src="../../assets/js/templatemo.js"></script>
<!-- 체크박스 클릭시 색상 변경되거나 해제되는 이벤트 스크립트 시작-->
  <script>
    const checkboxes = document.querySelectorAll('.user-login-keyword-box input');

    checkboxes.forEach(function(checkbox) {
      checkbox.addEventListener('change', function() {
        const label = this.nextElementSibling;
        if (this.checked) {
          label.style.backgroundColor = '#fadcbd';
        } else {
          label.style.backgroundColor = '';
        }
      });
    });
  </script>
  <!-- 체크박스 클릭시 색상 변경되거나 해제되는 이벤트 스크립트 끝-->
  <!-- 확인 클릭시 다음 페이지로 넘어가기 스크립트 시작-->
  <script>
    document.querySelector(".user-gobtn").addEventListener("click", function(event) {
    event.preventDefault(); // 기본 동작인 폼 제출 방지
    location.href = "../../공통/main.html"; // 링크로 이동
  });
  </script>
   <!-- 확인 클릭시 다음 페이지로 넘어가기 스크립트 끝-->
    <!-- End Script -->
</body>
</html>