<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/customer/ct_notice/ct_notice.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#middle_center{
		width: 80%;
		height: 80%;
		margin: 0 auto;
		
	}
	
	.writebtn{
		color: white;
	    border-color: #F55E61;
	    background-color: #F55E61;
	}

</style>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/SE2/js/HuskyEZCreator.js">
</script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>

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
	
	<section>
		<div id="middleBox">
			<div id="middle_center">
			
				<form class="form-horizontal" id="frm" action="noticeWrite" method="post">
				  <fieldset>
				    <legend>공지사항 작성하기</legend>
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
				        <textarea class="form-control" rows="20" id="textArea" name="contents"></textarea>
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
	
</div>


</body>
</html>