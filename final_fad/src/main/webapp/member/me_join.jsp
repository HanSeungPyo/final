<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#me_infoTable {
	width: 600px;
	height: 700px;
	margin: 0 auto;
	border-left: none;
	border-right: none;
	border-bottom: none;
	border-top: none;
	border-collapse: collapse;
	height: 30px;
	font-size: 15px;
	border-color: white;
}

.me_info1 {
	width: 120px;
	height: 50px;
	text-align:center;
}

.me_radio-inline {
	margin-left: 20px;
}

.me_selectfocusOn {
	width: 50px;
	margin-left: 20px;
}
.me_form-control {
	width: 300px;
	margin-left: 20px;
	font-size: 15px;
}
.me_form-control2 {
	width: 300px;
	margin-left: 20px;
	font-size: 15px;
}

#me_middleInfo {
	margin: 0 auto;
	width: 1000px;
}
#me_infobutton {
	width: 150px;
	margin: 0 auto;
	margin-top: 50px;
}
</style>
</head>
<body>
	<div id="wrap">
		<section>
			<div id="me_middleBox">
				<div id="me_middleCenter">
					<div id="me_middleInfo">

						<table border="1" id="me_infoTable">
							<tr>
								<td class="me_info1">아이디</td>
								<td><input type="text" class="me_form-control"
									placeholder="회원 아이디">
									<button class="button">중복확인</button></td>
							</tr>
							<tr>
								<td class="me_info1">비밀번호</td>
								<td><input type="password" class="me_form-control"
									placeholder="비밀번호"></td>
							</tr>
							<tr>
								<td class="me_info1">비밀번호 확인</td>
								<td><input type="text" class="me_form-control"
									placeholder="비밀번호 확인"></td>
							</tr>
							<tr>
								<td class="me_info1">이름</td>
								<td><input type="text" class="me_form-control"
									placeholder="이름"></td>
							</tr>
							<tr>
								<td class="me_info1">성명</td>
								<td><input type="text" class="me_form-control"
									placeholder="성명"></td>
							</tr>
							<tr>
								<td class="me_info1">성별</td>
								<td><label class="me_radio-inline"> 남<input
										type="radio" name="inlineRadioOptions" id="me_inlineRadio1"
										value="option1">
								</label> <label class="me_radio-inline"> 여<input type="radio"
										name="inlineRadioOptions" id="me_inlineRadio2" value="option2">
								</label></td>
							</tr>
							<tr>
								<td class="me_info1">생년월일</td>
								<td><select name="txBirthday1" id="memBirth"
									class="me_selectfocusOn" title="태어난 년도 선택" style="width: 60px;">
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

								</select> 년 <select name="txBirthday2" class="me_selectfocusOn"
									title="태어난 월 선택" style="width: 60px;">

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

								</select> 월 <select name="txBirthday3" class="me_selectfocusOn"
									title="태어난 일 선택" style="width: 60px;">

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

								</select> 일 <label class="me_radio-inline"> 양력<input type="radio"
										name="inlineRadioOptions" id="me_inlineRadio1" value="option1">
								</label> <label class="radio-inline"> 음력<input type="radio"
										name="inlineRadioOptions" id="me_inlineRadio2" value="option2">
								</label></td>

							</tr>
							<tr>
								<td class="me_info1">이메일</td>
								<td><input type="text" class="me_form-control2"
									placeholder="이메일"></td>
							</tr>
							<tr>
								<td class="me_info1">휴대전화</td>
								<td><input type="text" class="me_form-control"
									placeholder="휴대전화"></td>
							</tr>
							<tr>
								<td class="me_info1">우편번호</td>
								<td><input type="text" class="me_form-control"
									placeholder="우편번호"></td>
							</tr>
							<tr>
								<td class="me_info1">주소</td>
								<td><input type="text" class="me_form-control2"
									placeholder="주소"></td>
							</tr>
						</table>
					</div>
					<div id="me_infobutton">
						<input type="button" value="입력완료">
						<input type="button" value="뒤로가기">
					</div>
				</div>
			</div>
		</section>
	</div>

</body>
</html>