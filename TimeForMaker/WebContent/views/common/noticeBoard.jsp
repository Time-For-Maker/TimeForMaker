<%@ page import="java.util.ArrayList, notice.model.vo.Notice, common.model.vo.PageInfo, common.model.vo.Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();

	// loginUser 세션에서 가져와야 함
	// loginUser에서 관리자인지 회원인지 구분 필요
	Member loginUser = (Member)request.getSession().getAttribute("loginUser");
	//System.out.println(loginUser.getManagerType()); --M
	
	// imList, list : 중요공지리스트, 일반공지리스트 -request로부터 받아야함
	ArrayList<Notice> imList = (ArrayList<Notice>)request.getAttribute("imList");
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
	
	// 페이지 정보
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	int currentPage = pi.getCurrentPage();
	int startPage   = pi.getStartPage();
	int endPage     = pi.getEndPage();
	int maxPage     = pi.getMaxPage(); 
	int pageLimit = pi.getPageLimit();
	
	String category = request.getParameter("category")==null? "전체" : request.getParameter("category");
	String keyword = request.getParameter("keyword");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Notice Board</title>

<!-- load css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="<%=contextPath %>/assets/css/templatemo.css" type="text/css">
<link rel="stylesheet" href="<%=contextPath %>/assets/css/customer-center.css" type="text/css">

<!-- load fonts style -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap" type="text/css">
<link rel="stylesheet" href="<%=contextPath %>/assets/css/fontawesome.min.css" type="text/css">

<!-- load script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

	<!-- 헤더 페이지 추가 필요 -->
	
	<!-- Close 헤더 파트 -->

	<!-- Start 공지게시판 -->
	<!-- /noticeBoard 요청시 공지사항게시판으로 & href 수정 필요 -->
    <div class="notice-side-container" style="position: relative;">

        <!-- Start Side-Menu -->
        <div class="side-menu">
            <ul class="list-group list-group-flush">
                <li class="list-group-item list-group-title"><span>고객센터</span></li>
                <% 
                	// session.removeAttribute("loginUser");
                
                	String[] noticeHref = {"공지사항", "noticeBoard"};
                	String[] receptHref = new String[2];
                	
                	if(loginUser!=null && loginUser.getManagerType().equals("M")){
                		receptHref[0] = "회원 문의";
                		receptHref[1] = contextPath+"/manageReception";
                	}else{
                		receptHref[0] = "1:1 문의";
                		receptHref[1] = contextPath+"/myReception";
                	}
                %>
                <li class="list-group-item list-group-sub side-menu-selected"><a href="<%=contextPath %>/<%=noticeHref[1] %>"><%=noticeHref[0] %></a></li>
                <li class="list-group-item list-group-sub"><a href="<%=receptHref[1] %>"><%=receptHref[0] %></a></li>
              </ul>
        </div>
        <!-- Close Side-Menu -->
    
        <!-- Start Notice Board Container -->
        <div class="container notice-board-area" id="notice-board-area">
            <!-- Start Notice Page Title -->
            <h3 align="center" class="customer-center-title"><%=noticeHref[0] %></h3>
            <!-- Close Notice Page Title -->
			
			<% if(loginUser!=null && loginUser.getManagerType().equals("M")){ %>
	            <!-- 관리자용 버튼 - 임시저장목록 -->
	            <div class="d-grid gap-2 d-md-flex justify-content-md-end notice-save-board-btn notice-manager-btn">
	            
	            	<!-- saveNotice -get : 임시저장 목록 (요청값 없을 때)
	            		 saveNotice -post : 작성중인 공지글 저장
	            	 -->
	                <button class="btn" type="button" onclick="location.href='<%=contextPath%>/saveNoticeBoard'">임시저장 목록</button>
	            </div>
			<% } %>
			

            <table class="table" style="table-layout:fixed">
                <thead>
                    <tr>
                        <th scope="col" width="10%;">No</th>
                        <th scope="col" colspan="2" width="60%;">제목</th>
                        <th scope="col" width="10%">일자</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- db에 중요 공지라고 따로 지정한 컬럼을 통해 우선 중요공지 먼저 출력
                        -> 일반 공지 출력 
                        
                        * 공지 리스트에 필요한 것 : rownum (공지번호글X), 공지 제목, 등록일
                    -->
                    <% int i=0; %>
                    <% if(imList != null){
                   		for(Notice n : imList){ %>
                   			<tr class="important-notice">
		                        <th scope="row"><%=n.getRowNum() %></th>
		                        <td colspan="2"><a href="<%=contextPath %>/notice?no=<%=n.getRowNum() %>&impt=<%=n.getImpt()%>"><%=n.getTitle() %></a></td>
		                        <td><%=n.getDate() %></td>
                   			</tr>
                   		<% i++;
                   			} %>
                   	<%	} %>
                   	<% if(list!=null){ %>
	                   	<% for(Notice n : list){ %>
	                   		<tr>
		                        <th scope="row"><%=n.getRowNum() %></th>
		                        <td colspan="2"><a href="<%=contextPath %>/notice?no=<%=n.getRowNum() %>&impt=<%=n.getImpt()%>"><%=n.getTitle() %></a></td>
		                        <td><%=n.getDate() %></td>
		                    </tr>
		                    <% i++; %>
	                 	<% } %>
                   	<% } %>
                   	
                   	<% for(; i<10; i++) { %>
                   		<tr>
	                        <th scope="row"></th>
	                        <td colspan="2"><a href=""></a></td>
	                        <td></td>
	                    </tr>
                    <% } %>
                </tbody>
                <tfoot>
                </tfoot>
            </table>

            <nav class="navbar navbar-expand-lg" id="notice-search-bar" style="background-color: transparent;">
              <!-- script단에서 요청 (-> /noticeSearch 비동기 처리 필요) 우선 NoticeBoard에서 모든걸 처리 -->
              <div class="container-fluid">
                  <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                      <ul class="navbar-nav">
                          <li class="nav-item dropup dropdown-center">
                              <button class="nav-link dropdown-toggle" type="button" name="notice-category" value="" data-bs-toggle="dropdown" aria-expanded="false" style="border:0.8px solid black; background-color: transparent;">
                                  <span><%=category %></span>
                              </button>
                              <ul class="dropdown-menu dropdown-menu-middle" id="notice-search-category-menu" style="text-align: center;">
                              	  <li class="dropdown-item">전체</li>
                                  <li class="dropdown-item">제목</li>
                                  <li class="dropdown-item">내용</li>
                                  <li class="dropdown-item">제목 및 내용</li>
                              </ul>
                          </li>
                      </ul>
                  </div>
                  <input type="text" maxlength="5" placeholder="검색어입력">
                  <script>
                  	<% if(keyword!=null){ %>
                  		$("#notice-search-bar input").val("<%=keyword%>");
                  	<% } %>
                  </script>

				<% if(loginUser!=null && loginUser.getManagerType().equals("M")){ %>
                   <!-- 관리자용 버튼 - 공지작성 (공지작성폼 페이지 연결 필요) -->
                   <div class="d-grid gap-2 d-md-flex justify-content-md-end notice-write-btn notice-manager-btn">
                       <button type="button" class="btn" onclick="location.href='<%=contextPath%>/uploadNotice'">작성하기</button>
                   </div>
                 <% } %>
               </div>
            </nav>

            <nav id="notice-recept-board-navi" aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                <% if(maxPage != pageLimit) { %>
	                  <li class="page-item notice-page-pre">
	                  	<% if(startPage != 1){ %>
	                  		<a class="page-link" href="<%=contextPath%>/noticeBoard?page=<%=startPage-pageLimit%>$category=<%=category %>&keyword=<%=keyword %>" aria-label="Previous">
		                    	<span aria-hidden="true">&laquo;</span>
		                    </a>
	                    <% }else{ %>
	                    	<a class="page-link" aria-label="Previous" onclick="return false;">
		                    	<span aria-hidden="true">&laquo;</span>
		                    </a>
	                    <% } %>
	                      
	                  </li>
	              <% } %>
	              
	              <% for(int p = startPage; p<= endPage; p++){ %>
		              	<% if(p==currentPage) { %>
			                  <li class="page-item notice-recept-page-clicked"><a class="page-link" href="<%=contextPath%>/noticeBoard?page=<%=p %>$category=<%=category %>&keyword=<%=keyword %>" onclick="return false;"><%=p %></a></li>
		              	<% } else { %>
			                  <li class="page-item"><a class="page-link" href="<%=contextPath%>/noticeBoard?page=<%=p %>$category=<%=category %>&keyword=<%=keyword %>"><%=p %></a></li>	              	
		              	<% } %>
	              <% } %>
                  
                  <% if(maxPage != pageLimit) { %>
	                  <li class="page-item">
	                  <% if(endPage == maxPage){ %>
	                    <a class="page-link notice-page-next" aria-label="Next" onclick="return false;">
	                      <span aria-hidden="true">&raquo;</span>
	                    </a>
	                  <% } else{ %>
	                  	<a class="page-link notice-page-next" href="<%=contextPath%>/noticeBoard?page=<%=startPage+pageLimit%>$category=<%=category %>&keyword=<%=keyword %>" aria-label="Next">
	                      <span aria-hidden="true">&raquo;</span>
	                    </a>
	                  <% } %>
	                  </li>
                  <% } %>
                </ul>
            </nav>
        </div>

        <!-- Close Notice Board Container -->

		<!-- Start Alert Box -->
        <% if(session.getAttribute("msg")!=null){ %>
	        <div class="recept-alert-box">
	            <button type="button" class="btn btn-outline-dark recept-alert-box-close">X</button>
	            <span><%=session.getAttribute("msg") %></span>
	        </div>
	        <% session.removeAttribute("msg"); %>
        <% } %>
        <!-- Close Alert Box -->
    </div>
	<!-- Close 공지게시판 -->
	
	 <!-- Start Footer -->
    <footer class="main_footer" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <img src="<%=contextPath %>/assets/img/메인로고.png" class="main_logo">
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
	<script src="<%=contextPath %>/assets/js/jquery-1.11.0.min.js"></script>
	<script src="<%=contextPath %>/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="<%=contextPath %>/assets/js/templatemo.js"></script>
    <script src="<%=contextPath %>/assets/js/customer-center.js"></script>
    <script>

        /* 게시판에 빈 라인 hover삭제 */
        $("#notice-board-area tbody tr").hover(function(){
            if($(this).children("th").text()!=""){
                $(this).css("background-color","#F7F0D4");
            }
        }, function(){
            if($(this).hasClass("important-notice")){
                $(this).css("background-color","lightgray");
            }else{
                $(this).css("background-color","none");
            }
        });

        /* 게시판 빈칸 속성지정 */
        $("#notice-board-area tbody tr>th").each(function(index){
            if($(this).text()==""){
                $("#notice-board-area tbody tr").eq(index).css("border","white");
                if(index==9){
                    $("#notice-board-area tbody tr").eq(index).css("border-bottom","black");
                }
            }
        });
        
        /* 공지사항 게시판 페이징 버튼 효과 */
        $(".page-item").click(function(){
        	if(!($(this).hasClass("notice-page-pre") || $(this).hasClass("notice-page-next"))){
	            $(this).siblings().removeClass("notice-recept-page-clicked");
	            $(this).addClass("notice-recept-page-clicked"); 
        	}
        });

        /* 공지게시판 카테고리 선택 */
        $("#navbarNavDarkDropdown button span").css("display","inline-block");
        $("#navbarNavDarkDropdown button span").width($("#notice-search-category-menu>li").width());
        $("#notice-search-category-menu>li").click(function(){
            let value=$(this).text();
            $("#navbarNavDarkDropdown button span").text(value);
        });

        /* 공지게시판 검색 -> get으로 요청 */
        /* 선택 대신 기본값을 전체로 세팅 or 컨트롤에서 선택 값을 전체로 인식하게 */
        $("#notice-search-bar input").on("keyup", function(key){
            if(key.keyCode==13){
                let category = $("#navbarNavDarkDropdown button span").text();
                let keyword = $(this).val();
                let url="<%=contextPath%>/noticeBoard?category="+category+"&keyword="+keyword;
                location.href=url;
            }
        });

        /* 공지게시판 검색바 위치 조정 */
        let noticeSearchPos = $("#notice-search-bar button").offset().left;
        $("#notice-search-bar input").offset({left:noticeSearchPos+(noticeSearchPos*0.36)});

        /* 알림창 닫기 이벤트 */
        $(".recept-alert-box-close").click(function(){
            $(".recept-alert-box").css("display","none");
        });
    </script>
    <!-- End Script -->

</body>
</html>