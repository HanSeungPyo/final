/**
 * 
 */
$(function() {
	$("#me_textid").blur(function() {
		if ($(this).val() == "") {
			$("#checkMsgID").text("아이디를 입력해주세요.");
		} else {
			$("#checkMsgID").text("");
		} 
	});
});
$(function() {
	$("#me_textpassword").blur(function() {
		if ($(this).val() == "") {
			$("#checkMsgPASSWORD").text("비밀번호를 입력해주세요.");
		} else {
			$("#checkMsgPASSWORD").text("");
		} 
	});
});
$(function() {
	$("#me_textpassword1").blur(function() {
		if ($(this).val() == "") {
			$("#checkMsgPASSWORD1").text("비밀번호를 확인해주세요.");
		} else {
			$("#checkMsgPASSWORD1").text("");
		} 
	});
});
$(function() {
	$("#me_textname").blur(function() {
		if ($(this).val() == "") {
			$("#checkMsgNAME").text("이름을 확인해주세요.");
		} else {
			$("#checkMsgNAME").text("");
		} 
	});
});
$(function() {
	$("#me_textphone").blur(function() {
		if ($(this).val() == "") {
			$("#checkMsgPHONE").text("휴대폰 번호를 확인해주세요.");
		} else {
			$("#checkMsgPHONE").text("");
		} 
	});
});
$(function() {
	$("#sample6_address").blur(function() {
		if ($(this).val() == "") {
			$("#checkMsgaddress").text("주소를 확인해주세요.");
		} else {
			$("#checkMsgaddress").text("");
		} 
	});
});



