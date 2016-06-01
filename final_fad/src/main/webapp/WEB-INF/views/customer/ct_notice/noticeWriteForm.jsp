<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/common/bootstrap.jsp"></jsp:include>
<link href="${pageContext.request.contextPath}/resources/css/customer/ct_notice/ct_notice.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/customer/ct_notice/ct_noticeWriteForm.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/customer/ct_chatt.js" type="text/javascript"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/SE2/js/HuskyEZCreator.js">
</script>

<script type="text/javascript">$(function(){
    //전역변수선언
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "textArea",
        sSkinURI: "${pageContext.request.contextPath}/resources/SE2/SmartEditor2Skin.html", 
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,             
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,     
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true, 
        }
    });
     
    //전송버튼 클릭이벤트
    $("#writebtn").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        editor_object.getById["textArea"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증
         
        //폼 submit
        $("#frm").submit();
    })
})
</script>



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
				<p id="ct_writeTitle"><br><br>공지사항 작성</p>
				<form class="form-horizontal" id="frm" action="noticeWrite" method="post">
				  <fieldset id="notice_form">
				    <div class="form-group">
				      <label for="inputEmail" class="col-lg-2 control-label">제목</label>
				      <div class="col-lg-10">
				        <input type="text" class="form-control" id="title" name="title" placeholder="제목">
				      </div>
				    </div>
				    
				    <div class="form-group">
				      <label for="inputPassword" class="col-lg-2 control-label">작성자</label>
				      <div class="col-lg-10">
				        <input type="text" class="form-control" id="writer" name="writer">
				      </div>
				    </div>
				    
				    <div class="form-group">
				      <label for="textArea" class="col-lg-2 control-label">내용</label>
				      <div class="col-lg-10">
				        <textarea class="form-control" rows="20" cols="5" id="textArea" name="contents"></textarea>
				      </div>
				    </div>
    
				    <div class="form-group">
				      <div class="col-lg-10 col-lg-offset-2">
				        <button type="reset" class="btn btn-default">취소</button>
				        <button type="submit" class="btn btn-primary writebtn" id="writebtn">작성완료</button>
				      </div>
				    </div>
				    
				  </fieldset>
				</form>
							
			</div>
		
		</div>
	</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/customer/ct_chattModal.jsp"></jsp:include>
	
</div>


</body>
</html>