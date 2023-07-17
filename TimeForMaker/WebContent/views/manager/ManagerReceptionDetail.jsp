<%@ page import="reception.model.vo.Reception, reception.model.vo.ReceptionFile" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();

	// loginUser 세션에서 가져와야 함
	// loginUser에서 관리자인지 회원인지 구분 필요
	// Member loginUser = request.getSession().getAttribute("loginUser");
	Reception r = (Reception)request.getAttribute("r");
	ReceptionFile rfile = (ReceptionFile)request.getAttribute("rfile");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Reception</title>

<!-- load css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="/TimeForMaker/assets/css/templatemo.css" type="text/css">
<link rel="stylesheet" href="/TimeForMaker/assets/css/customer-center.css" type="text/css">

<!-- load fonts style -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap" type="text/css">
<link rel="stylesheet" href="/TimeForMaker/assets/css/fontawesome.min.css" type="text/css">

<!-- load script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

	<!-- 헤더 페이지 추가 필요 -->
	
	<!-- Close 헤더 파트 -->

	<!-- Start 회원문의글 페이지 -->
    <div class="reception-side-container" style="position: relative;">
        
        <!-- Start Side-Menu -->
        <div class="side-menu">
            <ul class="list-group list-group-flush">
                <li class="list-group-item list-group-title"><span>고객센터</span></li>
                <li class="list-group-item list-group-sub"><a href="<%=contextPath%>/noticeBoard">공지사항</a></li>
                <li class="list-group-item list-group-sub side-menu-selected"><a href="<%=contextPath%>/manageReception">회원 문의</a></li>
            </ul>
        </div>
        <!-- Close Side-Menu -->
        
        <!-- Start Manager Recept Board Detail Container 문의확인 -->
        <div class="recept-part"> 
            <!-- Start Recept Page Title -->
            <h3 align="center" class="customer-center-title">회원 문의</h3>
            <!-- Close Recept Page Title -->

            <div class="recpet-part1">
                <div class="recept-content">
                    <h4 class="recept-content-title"><%=r.getTitle() %></h4>
                    <div class="recpet-content-part">
                        <div class="recpet-content-header">
                            <p>회&nbsp;&nbsp;&nbsp;&nbsp;원<span><%=r.getUserId() %></span></p>
                            <p>접수일<span><%=r.getUploadDate() %></span></p>
                        </div>
                        <textarea class="recpet-content-text" id="recpet-content-text" rows="15" onclick="this.select()" onfocus="this.select()" readonly></textarea>
                    	
                    	<% if(rfile!=null){ %>
	                    	<div class="reception-file-area">
	                            <label for="reception-file">
	                                <div class="recept-file-upload-btn">
	                                    <a class="reception-file-down-btn" href="<%=contextPath %>/<%=rfile.getPath() %>/<%=rfile.getChangeName() %>" download>다운로드</a>
	                                </div>
	                            </label>
	                            <p class="recept-file-originName" style="display : inline-block"><%=rfile.getOrgName() %></p>
	                        </div>
                        <% } %>
                    </div>
                </div>
                <hr>
                <div class="recept-answer-content">
                    <h4 class="recept-answer-content-title">답변작성란</h4>
                    <div class="recpet-answer-content-part">
                        <textarea class="recpet-answer-content-text" id="recpet-answer-content-text" rows="7" onclick="this.select()" onfocus="this.select()" required></textarea>
                    	
                    	<script>
                    		let text = "<%=r.getText()%>".replaceAll("<br>", "\r\n");
			        		$("#recpet-content-text").val(text);
		               		
		               		<% if(r.getReply()!=null){ %>
		               			let text2 = "<%=r.getReply()%>".replaceAll("<br>", "\r\n");
		               			$("#recpet-answer-content-text").val(text2);
		               		<% } %>
		               	</script>
		               	
                    </div>
                </div>
                <button class="btn btn-outline-warning recept-reply-btn">등록하기</button>
            </div>
        </div>
        <!-- Close Manager Recept Board Detail Container -->

        <!-- Start Alert Box -->
        <div class="recept-alert-box" style="display:none;">
            <button type="button" class="btn btn-outline-dark recept-alert-box-close">X</button>
            <span></span>
        </div>
        <!-- Close Alert Box -->
    </div>
    
    <!-- Close 회원문의글 페이지 -->
	
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
    <script src="<%=contextPath %>/assets/js/templatemo.js"></script>
    <script src="<%=contextPath %>/assets/js/customer-center.js"></script>
    <script>
	    /* 답변이 있을 경우 스타일 변경 */
	    $(function(){
	        if($("#recpet-answer-content-text").val()!=""){
	            $("#recpet-answer-content-text").css("background-color","lightgray");
	            $("#recpet-answer-content-text").attr("readonly", true);
	            $(".recept-reply-btn").attr("disabled",true);
	        }
	    });
	
	    $(".recept-alert-box-close").click(()=>$(".recept-alert-box").css("display","none"));
	    
	    /* 답변 등록 제출 */
	    $(".recept-reply-btn").click(function(){
            //console.log($(".recpet-answer-content-text").val());
            let text = $(".recpet-answer-content-text").val();
            $.ajax({
                url:"replyReception",
                type:"post",
                data:{
                    no:"<%=r.getReceptionNo()%>",
                    text:text
                },
                success:function(result){
                	let msg = JSON.stringify(result.message);
                	$(".recept-alert-box").css("display","block");
                	$(".recept-alert-box>span").text(msg);
                	
                	$(".recept-alert-box>button").click(function(){
	               		location.href="<%=contextPath%>/manageReception";                		
                	});
                	
                }/* ,
                error : function(){
                	$(".recept-alert-box").css("display","block");
                	$(".recept-alert-box>span").text("등록에 실패했습니다. 다시 시도해주세요.");
                } */
            })
        });
    </script>
    <!-- End Script -->

</body>
</html>