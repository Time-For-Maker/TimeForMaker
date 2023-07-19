<%@page import="reservation.controller.searchResults"%>
<%@page import="common.PageInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="reservation.model.vo.Reservation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Reservation> searchResults = (ArrayList<Reservation>)request.getAttribute("searchResults");
	Reservation r = new Reservation();
	
//  int currentPage = pi.getCurrentPage();
// 	int startPage 	= pi.getStartPage();
// 	int endPage		= pi.getEndPage();
// 	int maxPage		= pi.getMaxPage(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약관리</title>
    <link rel="stylesheet" href="assets/css/reservation_content.css">
    <link rel="stylesheet" href="assets/css/reservation_readmore.css">
    <link rel="stylesheet" href="assets/css/reservation_info_more.css">
    <link rel="stylesheet" href="assets/css/reservation_delete.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	
	<%@ include file="/views/common/header.jsp" %>
    
	<div class="reservation_content">
	 <div class="reservation">
	     <div class="search_head_title" style="font-weight: bold;">
	         <img src="assets/img/관리.png" style="width: 3%;">예약관리
	     </div>
	     
	     <div class="search_condition">
	         <div class="search_condition_options">
				<form action="<%= request.getContextPath() %>/searchResults.sc" method="get">
			         <ul>
			             <li>
			                 예약 기간&nbsp;&nbsp;&nbsp;&nbsp;
			                 <input type="date" name="startDate" id="search_calendar">&nbsp;
			                 ~&nbsp;
			                 <input type="date" name="endDate" id="search_calendar">
			             </li>
			             <li>
							검색 항목&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" name="searchReservationNo" id="search_reservation_no"
							placeholder="예약번호를 입력하세요.">
						 </li>
			             <li>
			                 예약 상태&nbsp;&nbsp;&nbsp;&nbsp;
			                 <input type="radio" name="searchStatus" id="search_all" checked>
			                 <label for="search_all">전체</label>&nbsp;&nbsp;&nbsp;&nbsp;
			                 <input type="radio" name="searchStatus" id="search_done">
			                 <label for="search_done">예약완료</label>&nbsp;&nbsp;&nbsp;
			                 <input type="radio" name="searchStatus" id="search_waiting">
			                 <label for="search_waiting">승인대기</label>&nbsp;&nbsp;&nbsp;
			                 <input type="radio" name="searchStatus" id="search_cancel">
			                 <label for="search_cancel">예약취소</label>
			             </li>
			         </ul>
			      <div class="search_value_btn">
			          <input type="submit" value="검색" id="search_value_btn">
			      </div>
			     </form>
	         </div>
	     </div>
	     
	     <div class="search_result_head">
<%-- 	     	<form action="<%= contextPath %>/NewRegister.rs" method="GET"> --%>
<!-- 	         	<input type="submit" name="new_register" value="예약 등록" id="new_register_btn"> -->
<!-- 	     	</form>  -->
	     </div>
	
	     <div class="search_result">
	         <table align="center" class="search_list_area" id="search_result_table">
	             <thead>
	                 <tr>
	                     <th width="100">예약번호</th>
	                     <th width="70">예약자이메일</th>
	                     <th width="80">예약정보보기</th>
	                     <th width="80">결제현황</th>
	                     <th width="80">처리현황</th>
	                     <th width="100">관리</th>
	                 </tr>
	             </thead>
	             <tbody style="font-size: 15px;">
	             
	             	<% if(searchResults != null && !searchResults.isEmpty()) { %>
					    <% for(Reservation re : searchResults) { %>
					        <tr>
					            <td><%= re.getReservationNo() %></td>
					            <td><%= re.getUserId() %></td>
					            <td>
								    <form action="<%= contextPath %>/MoreInfo.rs" method="GET">
								        <input type="hidden" name="reservationNo" value="<%= re.getReservationNo() %>">
								        <button type="submit" name="reservation_info" id="reservation_info">상세보기</button>
								    </form>
								</td>
					            <td><%= re.getPaymentStatus() %></td>
					            <td><%= re.getReservationStatus() %></td>
					            <td>
						            <div class="button-container">
										<form action="<%= contextPath %>/accept.rs" method="GET">
										    <input type="hidden" name="reservationNo" value="<%= re.getReservationNo() %>">
										    <button type="submit" id="result_accept">승인</button>
										</form>
										<form action="<%= contextPath %>/delete.rs" method="GET">
										    <input type="hidden" name="reservationNo" value="<%= re.getReservationNo() %>">
										    <button type="submit" id="result_delete">취소</button>
										</form>
						            </div>
								</td>
					        </tr>
					    <% } %>
					<% } else { %>
					    <tr>
					        <td colspan="6"> 조회된 예약이 없습니다. </td>
					    </tr>
					<% } %>
	                 
	             </tbody>
	         </table>
	     </div>
	
	     <br>
	     
<!-- 		<!-- 페이징 바 -->
<!-- 		<div align="center" class="paging-area"> -->
<%-- 		    <% if(currentPage > 1) { %> --%>
<%-- 		        <button onclick="location.href= '<%=contextPath %>/list.bo?currentPage=<%= currentPage - 1 %>' ">&lt;</button> --%>
<%-- 		    <% } %> --%>
		    
<%-- 		    <% for(int p = startPage; p <= endPage; p++) { %> --%>
<%-- 		        <% if(p != currentPage) { %> --%>
<%-- 		            <button onclick="location.href='<%=contextPath %>/list.bo?currentPage=<%= p %>'"><%= p %></button> --%>
<%-- 		        <% } else { %> --%>
<!-- 		            현재 내가 보고 있는 페이지일 경우 클릭이 안되게끔  -->
<%-- 		            <button disabled><%= p %></button> --%>
<%-- 		        <% } %> --%>
<%-- 		    <% } %> --%>
		    
<%-- 		    <% if(currentPage < maxPage) { %> --%>
<%-- 		        <button onclick="location.href='<%=contextPath %>/list.bo?currentPage=<%= currentPage + 1 %>'">&gt;</button> --%>
<%-- 		    <% } %> --%>
<!-- 		</div> -->
	    </div>
	</div>

	     

</body>
</html>