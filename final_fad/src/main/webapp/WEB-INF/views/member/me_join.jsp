<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/common/bootstrap.jsp"></jsp:include>
<script
	src="${pageContext.request.contextPath}/resources/js/member/me_join.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/member/me_join.css">
<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample6_address').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('sample6_address2').focus();
					}
				}).open();
	}
	/* 비밀번호 확인 */
	function me_textpassword1(){				
		var check = $("#me_textpassword").val() == $("#me_textpassword1").val();
		var result = true;
		if(check){
			$("#me_textpassword1").css("color", "blue");
			$("#me_textpassword1").html("일치합니다");
			result = true;
		}else{
			$("#me_textpassword1").css("color", "red");
			$("#me_textpassword1").html("불일치합니다");
			result = false;
		}
			return result;
	}
	
	/* 비밀번호 */
	function me_textpassword(){		
		var r = patt.test($("#me_textpassword").val());
		var r2 = patt2.test($("#me_textpassword").val());
		var r3 = patt3.test($("#me_textpassword").val());
		var r4 = patt4.test($("#me_textpassword").val());
		var r5 = $("#me_textpassword").val().length > 7;
		var result = true;
		if(r&&r2&&r3&&r4&&r5){
			$("#checkMsgPASSWORD").css("color", "blue");
			$("#checkMsgPASSWORD").html("사용가능한 패스워드입니다");
		}else{
			$("#checkMsgPASSWORD").css("color", "red");
			$("#checkMsgPASSWORD").html("잘못된 패스워드입니다");
			result = false;
		}		
			return result;
		};

		/* 아이디중복확인 */
		function idcheckbutton(){
		$.ajax({
			url :"<%=application.getContextPath()%>/member/me_idCheck.me",
			type : "GET",
			data : {
				me_id : $("#me_textid").val()
			},
			success : function(result) {
				result = result.trim();
				alert(result);
				if (result == "true") {
					$("#checkMsgID").css("color", "blue");
					$("#checkMsgID").html("사용가능한 아이디입니다");
					return true;
				} else {
					$("#checkMsgID").css("color", "red");
					$("#checkMsgID").html("사용중인 아이디입니다");
					return false;
				}
			}
		})
	}

	function finCheck() {
		var check = true;
		/* 빈칸확인 */
		$(".check_1").each(function() { //for문
			if ($(this).val() == "") {
				check = false;
			}
		});

		/*성별선택확인  */
		var gender = $('input:radio[name="me_gender"]:checked').val();
		var gender2 = gender == undefined;

		if (gender2 == true || check == true) {
			
		}else{
			alert("빈칸또는 입력 형식을 다시 확인해주세요");
			
		}

		return check;
	};
</script>

</head>
<body>
	<div id="wrap">
		<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

		<section>
			<div id="me_middleBox">
				<div id="me_middleCenter">
					<form action="./me_join" method="post">
						<div id="me_mainname">
							<h2>
								<b>회원가입</b>
							</h2>
							<hr width="950">
						</div>
						<div id="me_middleInfo">
							<table border="1" id="me_infoTable">
								<tr>
									<td class="me_info1"><b>회원 아이디</b></td>
									<td><input type="text"
										class="form-control me_joinform check_1" placeholder="회원 아이디"
										id="me_textid" name="id">
										<button type="button" class="btn btn-warning"
											id="idcheckbutton">중복확인</button> <span id="checkMsgID"
										class="cr6aa7cc lPad10">
											공백없는 3~15자의 영문/숫자를 조합하여 입력해야
											합니다.
									</span></td>

								</tr>
								<tr>
									<td class="me_info1"><b>비밀번호</b></td>
									<td><input type="password"
										class="form-control me_joinform check_1" placeholder="비밀번호"
										id="me_textpassword" name="pw"> <span id="checkMsgPASSWORD"
										class="cr6aa7cc lPad10">
											공백없는 8~16자의 영문/숫자를 조합하여
											입력해야합니다.
									</span></td>
								</tr>
								<tr>
									<td class="me_info1"><b>비밀번호 확인</b></td>
									<td><input type="password"
										class="form-control me_joinform check_1" placeholder="비밀번호 확인"
										id="me_textpassword1" name="pw2"> <span id="checkMsgPASSWORD1"
										class="cr6aa7cc lPad10">
											비밀번호 확인을 위해 다시 한번 입력해주세요.
									</span></td>
								</tr>
								<tr>
									<td class="me_info1"><b>이름</b></td>
									<td><input type="text"
										class="form-control me_joinform check_1" placeholder="이름"
										id="me_textname" name="name"> <span id="checkMsgNAME"
										class="cr6aa7cc lPad10">한글 15자, 영문 30자까지 가능합니다.</span></td>
								</tr>
								<tr>
									<td class="me_info1"><b>성별</b></td>
									<td id="me_joinform3">
										<div class="btn-group genderButton" data-toggle="buttons" name="gender">
											<label class="btn btn-warning " id="genderbuttongirl"> <input class="check_1"
												type="radio" name="me_gender" id="me_girl"
												autocomplete="off"> 여자
											</label> 
											<label class="btn btn-warning " id="genderbuttonman"> <input class="check_1"
												type="radio" name="me_gender" id="me_man" autocomplete="off">
												남자
											</label>
										</div>

									</td>
								</tr>
								<tr>
									<td class="me_info1"><b>생년월일</b></td>
									<td><select name="txBirthday1" id="memBirth"
										class="form-control input-lg check_1" title="태어난 년도 선택" name="year">
											<option value="1940">1940</option>

											<option value="1941">1941</option>

											<option value="1942">1942</option>

											<option value="1943">1943</option>

											<option value="1944">1944</option>

											<option value="1945">1945</option>

											<option value="1946">1946</option>

											<option value="1947">1947</option>

											<option value="1948">1948</option>

											<option value="1949">1949</option>

											<option value="1950">1950</option>

											<option value="1951">1951</option>

											<option value="1952">1952</option>

											<option value="1953">1953</option>

											<option value="1954">1954</option>

											<option value="1955">1955</option>

											<option value="1956">1956</option>

											<option value="1957">1957</option>

											<option value="1958">1958</option>

											<option value="1959">1959</option>

											<option value="1960">1960</option>

											<option value="1961">1961</option>

											<option value="1962">1962</option>

											<option value="1963">1963</option>

											<option value="1964">1964</option>

											<option value="1965">1965</option>

											<option value="1966">1966</option>

											<option value="1967">1967</option>

											<option value="1968">1968</option>

											<option value="1969">1969</option>

											<option value="1970">1970</option>

											<option value="1971">1971</option>

											<option value="1972">1972</option>

											<option value="1973">1973</option>

											<option value="1974">1974</option>

											<option value="1975">1975</option>

											<option value="1976">1976</option>

											<option value="1977">1977</option>

											<option value="1978">1978</option>

											<option value="1979">1979</option>

											<option value="1980">1980</option>

											<option value="1981">1981</option>

											<option value="1982">1982</option>

											<option value="1983">1983</option>

											<option value="1984">1984</option>

											<option value="1985">1985</option>

											<option value="1986">1986</option>

											<option value="1987">1987</option>

											<option value="1988">1988</option>

											<option value="1989">1989</option>

											<option value="1990">1990</option>

											<option value="1991">1991</option>

											<option value="1992">1992</option>

											<option value="1993">1993</option>

											<option value="1994">1994</option>

											<option value="1995">1995</option>

											<option value="1996">1996</option>

											<option value="1997">1997</option>

											<option value="1998">1998</option>

											<option value="1999">1999</option>

											<option value="2000">2000</option>

											<option value="2001">2001</option>

											<option value="2002" selected>2002</option>

									</select> <b>년</b> <select name="txBirthday2"
										class="form-control input-lg check_1" title="태어난 월 선택"
										id="memBirth1" name="month">

											<option value="01">01</option>

											<option value="02">02</option>

											<option value="03">03</option>

											<option value="04">04</option>

											<option value="05">05</option>

											<option value="06">06</option>

											<option value="07">07</option>

											<option value="08">08</option>

											<option value="09">09</option>

											<option value="10">10</option>

											<option value="11">11</option>

											<option value="12">12</option>

									</select> <b>월</b> <select name="txBirthday3"
										class="form-control input-lg check_1"
										title=" 태어난 일
										선택" id="memBirth2" name="day">

											<option value="01">01</option>

											<option value="02">02</option>

											<option value="03">03</option>

											<option value="04">04</option>

											<option value="05">05</option>

											<option value="06">06</option>

											<option value="07">07</option>

											<option value="08">08</option>

											<option value="09">09</option>

											<option value="10">10</option>

											<option value="11">11</option>

											<option value="12">12</option>

											<option value="13">13</option>

											<option value="14">14</option>

											<option value="15">15</option>

											<option value="16">16</option>

											<option value="17">17</option>

											<option value="18">18</option>

											<option value="19">19</option>

											<option value="20">20</option>

											<option value="21">21</option>

											<option value="22">22</option>

											<option value="23">23</option>

											<option value="24">24</option>

											<option value="25">25</option>

											<option value="26">26</option>

											<option value="27">27</option>

											<option value="28">28</option>

											<option value="29">29</option>

											<option value="30">30</option>

											<option value="31">31</option>
									</select> <b>일</b></td>

								</tr>
								<tr>
									<td class="me_info1"><b>E-mail</b></td>
									<td><input type="text"
										class="form-control me_joinform1 check_1" placeholder="E-mail"
										id="me_textemail" name="email"></td>
								</tr>
								<tr>
									<td class="me_info1"><b>휴대전화</b></td>
									<td><input type="text"
										class="form-control me_joinform1 check_1" placeholder="휴대전화"
										id="me_textphone" name="phone"> <span id="checkMsgPHONE"
										class="cr6aa7cc lPad10">휴대폰 번호를 입력해주세요.</span></td>
								</tr>
								<tr>
									<td class="me_info1"><b>주소</b></td>
									<td><input type="text" id="sample6_postcode"
										placeholder="우편번호" class="form-control check_1"
										readonly="readonly" name="address"> <input type="button"
										onclick="sample6_execDaumPostcode()" class="btn btn-default"
										value="우편번호 찾기" id="me_findbutton" name="address"> <br> <input
										type="text" id="sample6_address" class="form-control check_1"
										placeholder="주소" readonly="readonly" name="address"> <span
										id="checkMsgaddress" class="cr6aa7cc lPad10">주소를
											입력해주세요.</span><br> <input type="text" id="sample6_address2"
										class="form-control check_1" placeholder="상세주소" name="address"></td>
								</tr>
							</table>
						</div>
						<div id="me_infobutton">
							<a href="/fad/member/me_joinsuccess"><button type="submit" class="btn btn-warning"
									id="me_btn1" onclick="return finCheck()">
									<b>입력완료</b>
								</button></a> <a href="/fad/member/me_agree"><button type="button"
									class="btn btn-default" id="me_btn2">
									<b>뒤로가기</b>
								</button></a>
						</div>
					</form>
				</div>
			</div>
		</section>

		<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	</div>

</body>
</html>