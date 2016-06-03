<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/header.css">
	
	<header>	
		<div id="hd_topBox">
			<div id="hd_topContent">
				<div id="hd_topLeft">
					<div id="hd_topLogo">
						<a href="${pageContext.request.contextPath}/index/index">
						<img src="${pageContext.request.contextPath}/resources/img/common/hd_logo.png" id="hd_Logo">
						</a>
					</div>
				</div>
				<div id="hd_topCenter">
					<div id="hd_searchGroup">
						<form action="#" method="post">
							<input type="text" class="form-control hd_search" placeholder="상호명 또는 지역을 검색하세요">
							<input type="image" src="${pageContext.request.contextPath}/resources/img/common/hd_search_btn.jpeg" id="hd_searchBtn">														
						</form>
					</div>
				</div>
				<div id="hd_topRight">
					<div id="hd_topInfo">
						<c:if test="${member eq null}">
							<ul id="hd_info">
								<li><a href="#" class="hd_joinLink"  data-toggle="modal" data-target="#hd_loginform">로그인</a></li><span> / </span>
								<li><a href="/fad/member/me_agree" class="hd_joinLink">회원가입</a></li>
							</ul>
						</c:if>
						<c:if test="${member ne null}">
							<div id="hd_topInfo">
								<div class="dropdown hd_dropdown">
								  <a id="dLabel" class="hd_joinLink"  data-target="#" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									   <span id="hd_meberId">한승표 님</span>
								    <span class="caret"></span>
								  </a>
								  <ul class="dropdown-menu" aria-labelledby="dLabel">
								    <li>서브메뉴</li>
								    <li>서브메뉴</li>
								    <li>세브메뉴</li>
								  	<li><a href="#" >로그아웃</a>
								  </ul>
								</div>
							</div>
					    </c:if>
					</div>
				</div>			
			</div>
		</div>
		<div class="modal fade" id="hd_loginform" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="modal-centerlogo">
					<img src="../resources/img/login/foodadvisorlogo.png" width="400" height="80">
					</div>
					<form action="${pageContext.request.contextPath}/member/me_login" method="post">
					<div id="modal-id">
						<input type="text" class="form-control" placeholder="사용자 아이디">
					</div>
					<div id="modal-password">
						<input type="password" class="form-control" placeholder="비밀번호">
					</div>
					</form>
					<center>
					<div id="modal-loginbutton">
						<a href=""><button type="button" class="btn btn-danger"><b>로그인</b></button></a>
					</div>
					
					</center>
				</div>
				<div class="modal-footer">
					<a href="/fad/member/me_agree"><button type="button" class="btn btn-default" data-dismiss="modal">가입하기</button></a>
				</div>
			</div>
		</div>
		</div>	
	</header>