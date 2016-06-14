<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/views/common/bootstrap.jsp"></jsp:include>

<link href="${pageContext.request.contextPath}/resources/css/customer/ct_notice/ct_notice.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/customer/ct_chatt.js" type="text/javascript"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
		<section>
			<div id="middleBox">
				<div id="middle_top">
					<div id="middle_top_left">
						<div id="middle_t_l_top">
							<img id="ct_img1" src="${pageContext.request.contextPath}/resources/img/customer/cscenter_title.png">
						</div>
						<div id="middle_t_l_bottom">
						<nav class="navbar navbar-inverse" id="ct_search">
							<form class="navbar-form navbar-left" role="search" action="${pageContext.request.contextPath}/customer/ct_searchList" method="get">
						        <div class="form-group">
						          <input type="text" class="form-control" name="searchWord" placeholder="FAQ 검색" id="search_text">
						        </div>
						        <button type="submit" class="btn btn-default" id="search_btn">검색</button>
						    </form>
						</nav>						
						</div>
					</div>
					<div id="middle_top_right">
					<div id="middle_t_r_left" >
						<img data-toggle="modal" data-target="#exampleModal" class="hover1 effect1" id="ct_img2" 
						src="${pageContext.request.contextPath}/resources/img/customer/cscenter_1.png"
						onMouseOut="this.src='${pageContext.request.contextPath}/resources/img/customer/cscenter_1.png'"
						onMouseOver="this.src='${pageContext.request.contextPath}/resources/img/customer/cscenter_1_on.png'"
						 >
						</div>
						<div id="middle_t_r_center">
						<a href="${pageContext.request.contextPath}/customer/ct_faq/faqList">
						<img  class="hover1 effect1" id="ct_img3" src="${pageContext.request.contextPath}/resources/img/customer/cscenter_faq.png"
						onMouseOut="this.src='${pageContext.request.contextPath}/resources/img/customer/cscenter_faq.png'"
						onMouseOver="this.src='${pageContext.request.contextPath}/resources/img/customer/cscenter_faq_on.png'"
						>
						</a>
						</div>
						<div id="middle_t_r_right">
						<a href="${pageContext.request.contextPath}/customer/ct_notice/noticeList">
						<img  class="hover1 effect1" id="ct_img4" src="${pageContext.request.contextPath}/resources/img/customer/cscenter_notify.png"
						onMouseOut="this.src='${pageContext.request.contextPath}/resources/img/customer/cscenter_notify.png'"
						onMouseOver="this.src='${pageContext.request.contextPath}/resources/img/customer/cscenter_notify_on.png'"
						>
						</a>
						</div>
					</div>
				</div>
				<div id="middle_center">
					<p id="board_title">
					<br><br>
					공지사항
					<br><br>
					푸드어드바이저의 따끈따끈하고 알찬 소식을 전해드립니다.</p>
					<br><br>  
					  <table class="table" id="notice_table">
					      <tr>
					        <th>번호</th>
					        <th>제목</th>
					        <th>조회수</th>
					        <th>공지일</th>
					      </tr>
					    <tbody>
					    <c:forEach items="${notice}" var="i">
					
					      <tr>
					        <td align="center">${i.num}</td>
					        <td align="left"><a href="noticeView?num=${i.num}">${i.title}</a></td>
					        <td align="center">${i.counts}</td>
					        <td align="center">${i.reg_date}</td>
					      </tr>
					    
					    </c:forEach>
					    
					    </tbody>
					  </table>
		
						<div id="middle_center_list">
							<ul class="pagination" id="notice_list">
							 <li class="disabled" id="notice_pre"><a href="noticeList?curPage=${noticePage.startNum-1}">&laquo;</a></li>
								<c:if test="${noticePage.curBlock > 1}">
										[이전]
									</c:if>
									<c:forEach begin="${noticePage.startNum}" end="${noticePage.lastNum}" step="1" var="num">
										<li class="active"><a href="noticeList?curPage=${num}">${num}</a></li>
									</c:forEach>
									<c:if test="${noticePage.curBlock < noticePage.totalBlock}">
								  <li id="notice_after"><a href="noticeList?curPage=${noticePage.lastNum+1}">&raquo;</a></li>
									</c:if>
								</ul>
								
							<c:if test="${member.id eq 'admin'}">
								<div id="middle_center_btn">
									<a href="noticeWriteForm"><button type="button" class="notice_btn">공지사항작성</button></a>
								</div>
							</c:if>
							
						</div>
					</div>
			</div>

		</section>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/customer/ct_chattModal.jsp"></jsp:include>

</div>
<c:if test="${member.id == null}">
	<script src="${pageContext.request.contextPath}/resources/js/customer/ct_logIn.js" type="text/javascript"></script> 
</c:if>
</body>
</html>