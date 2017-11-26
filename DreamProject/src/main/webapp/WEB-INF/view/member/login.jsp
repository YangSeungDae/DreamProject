<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/common/header_gray.jsp" />
<title>로그인 | 현대자동차</title>
<link rel="stylesheet" href="<c:url value="/css/loginHd.css"/>"/>
<script type="text/javascript">
	$().ready(function() {
		if (getCookie("mode1")) {
			$("#mode1").val(getCookie("mode1"));
			$("#checkSave")[0].checked = true;
		}
		if (getCookie("mode2")) {
			$("#mode2").val(getCookie("mode2"));
		}
		if (${param.errCode eq 1}) {
			$(".kjyerror").show();
		}
	});


	function setCookie(cname, cvalue, exdays) {
	      var d = new Date();
	    d.setTime(d.getTime() + (exdays*24*60*60*1000));
	    var expires = "expires="+ d.toUTCString();
	    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
	} 
	
	function getCookie(cname) {
	    var name = cname + "=";
	    var decodedCookie = decodeURIComponent(document.cookie);
	     var ca = decodedCookie.split(';');
	    for(var i = 0; i <ca.length; i++) {
	        var c = ca[i];
	        while (c.charAt(0) == ' ') {
	            c = c.substring(1);
	         }
	         if (c.indexOf(name) == 0) {
	            return c.substring(name.length, c.length);
	         }
	     }
	    return "";
	} 
	
	function loginCheck(){
		if ($("#mode1").val().trim()=="") {
			alert("이메일 아이디를 입력하십시요");
			$("#mode1").focus();
		} else if ($("#mode2").val().trim()=="") {
			alert("이메일 아이디를 입력하십시요");
			$("#mode2").focus();
		} else if ($("#password").val().trim()==""){
			alert("비밀번호를 입력하십시요");
			$("#password").focus();
		} else {
			if ($("#checkSave")[0].checked) {
				setCookie("mode1", $("#mode1").val().trim());
				setCookie("mode2", $("#mode2").val().trim());
			}
			$("#memberId").val($("#mode1").val().trim() + "@" + $("#mode2").val().trim());
			$("#loginForm").attr({"action" : "/DreamProject/member/doLogin", "method" : "post"});
			$("#loginForm").submit();
		}
	}
</script>
	<div class="sub-header-wrap">
		<div class="sub-header">
			<h3 style="padding-bottom: 10px;">
				<img src="/DreamProject/img/global_menu/h3_global_menu_login.gif" alt="로그인">
			</h3>
			<p class="title-desc">
				<img src="/DreamProject/img/global_menu/h3_global_menu_login_desc.gif" alt="현대자동차 홈페이지의 로그인 페이지입니다.">
			</p>
		</div>
	</div>
	
	<hr>	
	
	<div class="container">
		<div class="subtitle-area">
			<div class="subtitle-area-inner">
				<div class="location">
					<a  href="#">홈</a> <span class="span">▶</span>
					<a  href="#">로그인</a><span class="span">▶</span>
					<em class="em">아이디/비밀번호</em>
				</div>
			</div>		
		</div>	
		
		<div class="article">
			<div class="start">
				<img src= "/DreamProject/img/loginHd/txt_global_menu_login01.gif" alt="로그인을 위하여 아래 아이디와 패스워드를 입력해주세요. 처음 방문하셨다면 회원가입 후에 서비스를 이용하실 수 있습니다.">
			</div>
			<div class="input-wrap">
				<div class="input">
						<div class="idpw">
							<form id="loginForm" method="post">
								<div class="emailLine">							
									<div>
									<div class="emilid">
										<img src="/DreamProject/img/loginHd/txt_global_menu_login02.gif" alt="이메일 아이디">
									</div>
									<input type="hidden" id="memberId" name="memberId" value="" />
									<input type="text" class="txt" style="width:115px" name="mode" id="mode1" title="이메일 아이디 입력"/>							
									@						
									<input type="text" class="txt" style="width:115px" name="mode" id="mode2" title="이메일 도메인 입력" />
									</div>							
								</div>
								<div class="emailLine">
									<div class="emilid">
										<img src="/DreamProject/img/loginHd/txt_global_menu_login03.gif" alt="비밀번호">
									</div>
									<div class="password">
										<input type="password" class="txt" style="width:261px" name="password" id="password"/>
									</div>
								</div>
							</form>							
						</div>
					
					<div>
							
							<div class="idsave">
							<label for="checkSave">
								<input type="checkbox" class="checkbox" id="checkSave" name="checkSave" /> 아이디 저장
							</label>		
								<span class="bar">|</span>
								<a href ="#" >아이디찾기</a> , <a href ="#" >비밀번호찾기</a>
							</div>
					</div>
					<div class="kjyerror" style="display:none;">
						현재 입력하신 아이디가 등록되어 있지 않거나 <br/>
						아이디 또는 비밀번호를 잘못입력하셨습니다.
					</div>
						<input type="image" src="/DreamProject/img/btn/btn_confirm02.gif" style="position: absolute; top: 0px; right: 0px;" onclick="javascript:loginCheck();"/>
				</div>	
			</div>
			
						
			<div class="join-function">
				<a href="/DreamProject/member/agreement"><img src="/DreamProject/img/btn/btn_join.gif"></a>
				<img src="/DreamProject/img/loginHd/txt_global_menu_login04.gif" alt="회원가입을 통해 현대자동차의 다양한 서비스를 이용할 수 있습니다." class="space">
			</div>
			
		</div>	
	</div>
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</body>
</html>