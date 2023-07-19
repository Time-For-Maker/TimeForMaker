<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>headder(Manager ver.)</title>
<link rel="stylesheet" href="assets/css/admin-header.css">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" type="image/x-icon" href="assets/img/TFM_icon.png">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/admin-header.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
</head>
<body>

	<!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow admin_header"><!--admin_header 관리자파트는 얘가 있어야함-->
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="main.html">
                <img src="assets/img/메인로고.png" class="main_logo">
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav justify-content-end">
                        <li class="nav-item">
                            <a class="nav-link" href="">로그아웃</a>
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
        <div class="main_adminbar">
            <div class="main_admin_menu">
                <li class="main_admin_li">
                    <a class="main_admin_link" href="<%= contextPath %>/product.pd">상품관리</a>
                </li>
                <li class="main_admin_li">
                    <a class="main_admin_link" href="<%= contextPath %>/reserve.rs">예약관리</a>
                </li>
                <li class="main_admin_li">
                    <a class="main_admin_link" href="">회원관리</a>
                </li>
                <li class="main_admin_li">
                    <a class="main_admin_link" href="<%= contextPath %>/noticeBoard">고객센터관리</a>
                </li>
            </div>
        </div>
    </nav>
    <!-- Close Header -->
    
    <!-- Modal 헤더 검색창 -->
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
    

</body>
</html>