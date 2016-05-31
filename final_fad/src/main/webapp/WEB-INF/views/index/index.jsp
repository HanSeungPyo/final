<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/index/index.css"  type=text/css rel=stylesheet>

<title>
	
	검색과 예약을 동시에! FOOD ADVISOR
</title>
<!-- <script type="text/javascript">
function in_tab(event, tabName){
	var i;
	var in_tabContents;
	var in_menuTab;
	
	in_tabContents = document.getElementsByClassName("in_tabContents");
	for(i =0 ; i <in_tabContents.length; i++){
		in_tabContents[i].style.display = "none";
	}
	in_menuTab = document.getElementsByClassName("in_menuTab");
	for(i=0 ; i < in_tabContents.length; i++){
		in_menuTab[i].className = in_menuTab[i].className.replace("active","");
	}
	document.getElementById(tabName).style.display = "block";
	evt.currentTarget.className += " active";
} 
</script> -->
<!-- <script type="text/javascript">
$(function(){
	$('#myTab a').click(function (e) {
		  e.preventDefault();
		  $(this).tab('show');
		});
});

</script> -->
<script src="${pageContext.request.contextPath}/resources/js/index/index.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<section>
		<!-- 메인화면 전체 -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  	
		  	<!-- 사진 가운데 로고 -->
		  	<div id="in_middleTop">
				<div id="in_middleTop_1">
					<img id="in_logo_semi" src="${pageContext.request.contextPath}/resources/img/index/in_logo_semi_2.png">
				</div>
			</div>
			
			
			
			<!-- 하단 메뉴 -->
		  	<div id="in_middleBottom" role="tabpanel">
		  		<ul class="nav nav-tabs in_menuTab" role="tablist">
				    <li role="presentation" id="in_tab1" class="active in_tab" ><a href="#home" class="in_a"  role="tab" data-toggle="tab">RANKING</a></li>
				    <li role="presentation" class="in_tab"><a class="in_a" href="#profile"  role="tab" data-toggle="tab">EVENT</a></li>
				    <li role="presentation" class="in_tab"><a class="in_a" href="#messages"  role="tab" data-toggle="tab">RECOMMEND</a></li>
				    <li role="presentation" class="in_tab"><a class="in_a" href="#settings"  role="tab" data-toggle="tab">SERVICE CENTER</a></li>
				</ul>

		  		 <div class="tab-content">
				    <div role="tabpanel" class="tab-pane active in_tabCon" id="home">
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon1.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">음식별</div>
				    	</div>
				    	</a>
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon2.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">지역별</div>
				    	</div>
				    	</a>
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon3.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">최신순</div>
				    	</div>
				    	</a>
				    </div>
				    <div role="tabpanel" class="tab-pane in_tabCon" id="profile">
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon4.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">할인 행사</div>
				    	</div>
				    	</a>
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon5.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">당첨 행사</div>
				    	</div>
				    	</a>
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon6.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">당일 쿠폰</div>
				    	</div>
				    	</a>
				    </div>
				    <div role="tabpanel" class="tab-pane in_tabCon" id="messages">
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon7.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">추천 동영상</div>
				    	</div>
				    	</a>
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon8.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">추천 정보</div>
				    	</div>
				    	</a>
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon9.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">추천 블로그</div>
				    	</div>
				    	</a>
				    </div>
				    <div role="tabpanel" class="tab-pane in_tabCon" id="settings">
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon10.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">공지사항</div>
				    	</div>
				    	</a>
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon11.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">1대1 문의</div>
				    	</div>
				    	</a>
				    	<a href="#">
				    	<div class="in_content">
				    		<div class="in_content_1">
				    			<div class="in_content_11">
				    				<img class="in_icon" src="${pageContext.request.contextPath}/resources/img/index/in_icon12.png">
				    			</div>
				    		</div>
				    		<div class="in_content_2">F A Q</div>
				    	</div>
				    	</a>
				    </div>
				</div>
		  	</div>
	
				
			  <ol class="carousel-indicators in_indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
			  </ol>
			
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			    <div class="item active">
			      <img class="in_mainPic" src="${pageContext.request.contextPath}/resources/img/index/in_main_1.jpg">
			      <div class="carousel-caption in_text">
			       	<h2><b>이탈리안 레스토랑</b></h2>
			      </div>
			    </div>
			    <div class="item">
			      <img class="in_mainPic" src="${pageContext.request.contextPath}/resources/img/index/in_main_2.jpg">
			      <div class="carousel-caption in_text">
			      	<h2><b>BEER FESTIVAL</b></h2>		
			      </div>
			    </div>
			    <div class="item">
			      <img class="in_mainPic" src="${pageContext.request.contextPath}/resources/img/index/in_main_3.PNG">
			      <div class="carousel-caption in_text">
			      	<h2><b>삼겹살,<br> 맛있게 먹기!</b></h2>
			      </div>
			    </div>
			    <div class="item">
			      <img class="in_mainPic" src="${pageContext.request.contextPath}/resources/img/index/in_main_4.jpg">
			      <div class="carousel-caption in_text">
			        <h2><b>수제버거, 얼마나 알고 계신가요?</b></h2>
			      </div>
			    </div>
			    <div class="item">
			      <img class="in_mainPic" src="${pageContext.request.contextPath}/resources/img/index/in_main_5.jpg">
			      <div class="carousel-caption in_text">
			      	<h2><b>김치볶음밥 열전!</b></h2> 
			      </div>
			    </div>
			  </div>
			
			
			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left in_btn" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right in_btn" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>