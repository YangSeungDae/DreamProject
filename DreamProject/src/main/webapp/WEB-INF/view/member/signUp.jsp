
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/common/header_gray.jsp" />
<title>회원가입안내 | 회원가입 | 현대자동차</title>
<link rel="stylesheet" href="<c:url value="/css/jinjoo/signup.css" />" />
<link rel="stylesheet" href="<c:url value="/css/jinjoo/signup2.css" />" />
<%-- <link rel="stylesheet" href="<c:url value="/css/singUp.css" />" /> --%>

<script type="text/javascript"
	src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
<script type="text/javascript">
	$().ready(function() {
		if ("${param.errCode}" == "2") {
			alert("이미 가입되어있는 이메일 입니다.");
		}
		
		$("#registBtn").click(function() {
			if($("#name").val().trim()=="") {
				alert("이름을 입력해 주세요");
				$("#name").focus();
				return false;
			}
			if($("#email1").val().trim() == "") {
				alert("이메일을 입력해 주세요");
				$("#email1").focus();
				return false;
			}
			if($("#email2").val().trim() == "") {
				alert("이메일을 입력해 주세요");
				$("#email2").focus();
				return false;
			}
			if ($("#password").val() == "") {
				alert("비밀번호를 입력해 주세요");
				$("#password").focus();
				return false;
			}
			if ($("#password").val().length < 8
					|| $("#password").val().length > 20
					|| !/^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/.test($("#password").val())) {
				alert("비밀번호는 영문대문자, 영문소문자, 숫자, 특수문자를 혼용하여 8자~20자 입니다.");
				$("#password").focus();
				return false;
			}  
			if ($("#passwordCheck").val() == "") {
				alert("비밀번호를 입력해 주세요");
				$("#passwordCheck").focus();
				return false;
			} 
			if ($("#password").val() != $("#passwordCheck").val()) {
				alert("입력하신 비밀번호가 맞지 않습니다");
				$("#passwordCheck").focus();
				return false;
			}
			if ($("#txtMobile1").val() == "") {
				alert("휴대폰 번호를 선택하시오.");
				$("#txtMobile1").focus();
				return false;
			}
			if ($("#txtMobile2").val().length != 4) {
				alert("가운데 번호는 3자리이상 입력하세요");
				$("#txtMobile2").focus();
				return false;
			}
			if ($("#txtMobile3").val().length != 4) {
				alert("끝자리 번호는 4자리로 입력하세요");
				$("#txtMobile3").focus();
				return false;
			} 
			
			$("#memberId").val($("#email1").val() + "@" + $("#email2").val());
			$("#smsSpamYn").val($("#chkSms")[0].checked ? "Y" : "N");
			$("#emailSpamYn").val($("#chkEml")[0].checked ? "Y" : "N"); 
			$("#mobileSpamYn").val($("#chkCall")[0].checked ? "Y" : "N");
			$("#addressSpamYn").val($("#chkAddr")[0].checked ? "Y" : "N");
			$("#mobileNo").val($("#txtMobile1").val() + $("#txtMobile2").val() + $("#txtMobile3").val());
			$("#signUpForm").attr({
				method : "post",
				action : "<c:url value='/member/doSignUp'/>"
			}).submit();
		});
	});

	function checkemailaddy(selfObj) {
		if ($(selfObj).val() == "1") {
			$(selfObj).siblings("input[name='email2']").val("");
			$(selfObj).siblings("input[name='email2']").attr("readonly", false);
		} else {
			$(selfObj).siblings("input[name='email2']").val($(selfObj).val());
			$(selfObj).siblings("input[name='email2']").attr("readonly", true);
		}

	}

	function changeAgreement(selfObj) {
		if ($(selfObj).val() == "Y" && $(selfObj).is(":checked")) {
			$(".check[type='checkbox']").each(function (idx, obj){
				$(obj)[0].checked = true;
			});
		} else {
			$(".check[type='checkbox']").each(function (idx, obj) {
				$(obj)[0].checked = false;
			});
		}
	}
	function changeReceiveType(event, selfObj) {
		if ($("#agreeChk2").is(":checked") && $(selfObj).is(":checked")) {
			alert("미동의 시에는 선택할 수 없습니다.");
			$(selfObj)[0].checked = false;
			event.preventDefault();
		}
		else if($(selfObj).attr("id")!="chkAll" 
			&& $("#chkSms").is(":checked") && $("#chkEml").is(":checked") 
			&& $("#chkCall").is(":checked") && $("#chkAddr").is(":checked")) {
			$("#chkAll")[0].checked = true;
		}
		else if($(selfObj).attr("id")!="chkAll"
			&& !$("#chkSms").is(":checked") && !$("#chkEml").is(":checked") 
			&& !$("#chkCall").is(":checked") && !$("#chkAddr").is(":checked")) {
			$("#chkAll")[0].checked = false;
		}
		else if($(selfObj).attr("id")=="chkAll" && $(selfObj).is(":checked")) {
			$("#chkSms")[0].checked = true;
			$("#chkEml")[0].checked = true;
			$("#chkCall")[0].checked = true;
			$("#chkAddr")[0].checked = true;
		}
		else if($(selfObj).attr("id")=="chkAll" && !$(selfObj).is(":checked")) {
			$("#chkSms")[0].checked = false;
			$("#chkEml")[0].checked = false;
			$("#chkCall")[0].checked = false;
			$("#chkAddr")[0].checked = false;
		}
	}
</script>
<style type="text/css">
body {
	user-drag: none;
	user-select: none;
	-moz-user-select: none;
	-webkit-user-drag: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}
</style>
	<form id="signUpForm"  name="signUpForm" method="post">
		<input type="hidden" id='hmpgAgrmntYn' name='hmpgAgrmntYn' value="${memberVO.hmpgAgrmntYn}" />    
		<input type="hidden" id='prsnInfoClctnAgrmntYn' name='prsnInfoClctnAgrmntYn' value="${memberVO.prsnInfoClctnAgrmntYn}" />
		<input type="hidden" id='prsnInfoLeaveAgrmntYn' name='prsnInfoLeaveAgrmntYn' value="${memberVO.prsnInfoLeaveAgrmntYn}" />
		<input type="hidden" id="memberId" name="memberId" />
		<input type="hidden" id="address" name="address" value="" />
		<input type="hidden" id="smsSpamYn" name="smsSpamYn" />
		<input type="hidden" id="emailSpamYn" name="emailSpamYn" />
		<input type="hidden" id="mobileSpamYn" name="mobileSpamYn" />
		<input type="hidden" id="addressSpamYn" name="addressSpamYn" />
		<input type="hidden" id="mobileNo" name="mobileNo" />
		<div style="margin-top: 40px;">
	
			<div class="Btn">
				<img src="<c:url value="/img/jinjoo/a5.png" />" />
			</div>
			<div class="Bte">
				<img src="<c:url value="/img/jinjoo/a6.png" />" />
			</div>
		</div>	
				<!-- <img src="<c:url value="/img/jinjoo/a3.png" />" /> -->
	<hr>
		<div class="subtitle">
			<div class="location">
				<a href="#">홈</a> <span class="span">▶</span>
				<em class="windvisor">회원가입</em>
			</div>
		</div>	
			<br> 
			<br> 
			<br> 
			<br>
	
		<div class="who">
			<img src="<c:url value="/img/jinjoo/ee.png" />" /> 
			<br> 
			<br> 
			<br> 
			<img src="<c:url value="/img/jinjoo/bpn.png" />" /> <br> <br> 
				<br>
				<img src="<c:url value="/img/jinjoo/sc.png" />" /> 
				<br>
				<br>
				<img src="<c:url value="/img/jinjoo/cb.png" />" /> <br> <br>
			<div>
			<br>
			<br>
				<div class="signUpRow">
					<div class="box label">
						<span class="require">√</span> 이름
					</div>
					<div class="box">
						<input type="text" id="name" name="name" />
					</div>
				</div>
				<br>
				<br>
				<div class="signUpRow">
					<div class="box label">
						<span class="require">√</span> 이메일 아이디
					</div>
					<div style="display: inline-block; vertical-align: top;">
						<input name="email1" type="text" class="box" id="email1" size="15">
						@ <input name="email2" type="text" class="box" id="email2"
							size="20" readonly> <select name="email_select"
							class="box" id="email_select" onchange="checkemailaddy(this);">
							<option value="" selected>선택하세요</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="hanmail.com">hanmail.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="outlook.kr">outlook.kr</option>
							<option value="1">직접입력</option>
						</select>
					</div>
					<div class="box, boxa">
						<p>- 현대자동차 홈페이지에서 사용 가능한 이메일 아이디를 입력하여 주세요.</p>
						<p>- 한메일,야후 는 해당 포털 정책으로 인증메일 전송이 불가 할 수 있습니다.</p>

					</div>
					<br>
					<br>
					<div class="signUpRow">
						<div class="box label">
							<span class="require">√</span> 비밀번호 입력
						</div>
						<div class="box">
							<input type="password" id="password" name="password" />
						</div>
					</div>
					<br>
					<div class="signUpRow">
						<div class="box label">

							<span class="require">√</span> 비밀번호 확인
						</div>
						<div class="box">
							<input type="password" id="passwordCheck" name="passwordCheck" />
							<div>
								<p>- 비밀번호는 영문대문자, 영문소문자, 숫자, 특수문자를 혼용하여 8자~20자 입니다.</p>
							</div>
						</div>
					</div>
					<script language="javascript" type="text/javascript">
						function onlyNumber() {
							if ((event.keyCode < 48) || (event.keyCode > 57))
								event.returnValue = false;
						}
					</script>
					<br>
					<br>
					<br>
					<div class="signUpRow">
						<div class="box label">
							<span class="require">√</span> 휴대전화 번호
						</div>
						<select id="txtMobile1">
							<option value="">::선택::</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						<input type="text" id="txtMobile2" size="4" onkeypress="onlyNumber();" />
						<input type="text" id="txtMobile3" size="4" onkeypress="onlyNumber();" />

					</div>
					<div class="signUpRow">
						<div class="box label">
							<img src="<c:url value="/img/jinjoo/pp.png" />" />


						</div>
					</div>
					<div class="signUpRow">
						<div style="padding-left: 200px;">

							<p>
							<br>
							<br>
							<br>
							<br>
							<br>
								<b>광고성 정보 수신에 대한 안내</b>
							</p>
							<ul>
								<li>1. 수집 · 이용목적 : 신규 상품 서비스안내, 이벤트 및 행사 안내, 최신 기업 정보 및 웹진
									안내, 고객별 통계 분석, 시장조사</li>
								<li>2. 수집 항목 : 이메일, 휴대전화 번호, 주소</li>
								<li>3. 보유 및 이용기간 : 홈페이지 회원자격 유지 기간</li>
							</ul>
						</div>
							<br>
							<br>
						<div style="padding-left: 200px;">
							<b>광고성 정보 수신 및 마케팅 활용에 동의합니다.</b> <span class="check-area pl23">
								<label for="agreeChk1"> <input type="radio"
									class="check" id="agreeChk1" name="agreeChk" value="Y"
									checked="" onchange="changeAgreement(this);"> 동의
							</label> <label for="agreeChk2"> <input type="radio"
									class="check" id="agreeChk2" name="agreeChk" value="N"
									onchange="changeAgreement(this);"> 미동의
							</label>
							</span>
							<p>※ 수신여부와 관계없이 회원가입이 가능합니다. 단, 미동의 시 당사에서 제공하는 다양한 정보 및 안내를
								받으실 수 없습니다.</p>
							<br>
							<br>
							<b>수신 방법</b> <span class="check-area"> <!-- 170412 수정 -->
							
							<input type="checkbox" class="check" id="chkAll" name="chkAll" value="0" checked="" onclick="changeReceiveType(event, this);">
							<label for="chkAll" class="pl20">
									전체
							</label>
							<input type="checkbox" class="check" id="chkSms" name="chkSms" value="1" checked="" onclick="changeReceiveType(event, this);">
							<label for="chkSms" class="pl20">
									문자(SMS)
							</label>
							<input type="checkbox" class="check" id="chkEml" name="chkEml" value="2" checked="" onclick="changeReceiveType(event, this);">
							<label for="chkEml">
									이메일
							</label>
							<input type="checkbox"
									class="check" id="chkCall" name="chkCall" value="3" checked="" onclick="changeReceiveType(event, this);">
							<label for="chkCall">
									전화
							</label>
							<input type="checkbox" class="check" id="chkAddr" name="chkAddr" value="4" checked="" onclick="changeReceiveType(event, this);">
							<label for="chkAddr"> 
									주소
							</label>
							</span>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							</div>
							<p>가입 필수정보(이름/휴대전화 번호)는 이벤트/카탈로그/구매상담/찾아가는 시승/Q&A 서비스 이용 시
								활용되는 정보입니다.</p>
							<p>정확한 정보를 입력하지 않으면, 홈페이지 서비스 이용이 제한 될 수 있습니다.</p>
						</div>
					</div>
					<br>
					<br>
					<div class="Btn" onclick="javascript:void(0);">
						<a href="#"><img src="<c:url value="/img/jinjoo/a7.png" />" /> </a>
						<a id="registBtn">
							<img  src="<c:url value="/img/jinjoo/a4.png" />" /></a>
						
					</div>
					
				</div>
				<br> <br>
			</div>
	</form>
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</body>
</html>





