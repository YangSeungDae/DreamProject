
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/common/header_gray.jsp" />
<title>회원가입 | 현대자동차</title>
<link rel="stylesheet" href="<c:url value="/css/jinjoo/signup.css" />" />
<link rel="stylesheet" href="<c:url value="/css/jinjoo/signup2.css" />" />

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
</head>
<body>
	<br>
	<br>
	<br>

	<div>
		<div class="Btn">
			<img src="<c:url value="/img/jinjoo/a5.png" />" />
		</div>
		<div class="Bte">
			<img src="<c:url value="//jinjooimg/a6.png" />" />
		</div>
	</div>
	<hr>
	<div class="subtitle">
		<div class="location">
			<a href="#">홈</a> <span class="span">▶</span> <em class="windvisor">회원가입</em>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>

	<div style="width: 930px; margin: auto;">
		<img src="<c:url value="//img/email.png" />" /> <br> <br> <br>
		<br>
		<div class="email-certification-stats">
			<img src="<c:url value="/img/jinjoo/email_id.png" />" /> <br> <br>
			<img src="<c:url value="/img/jinjoo/service.png" />" /> <br> <br>
			<em> <img src="<c:url value="/img/jinjoo/hyundai.png"/>"
				alt="회원님의 현대자동차 홈페이지 이메일 아이디">${param.email}<img
				src="<c:url value="/img/jinjoo/join.png"/>"
				alt="으로 인증 이메일이 발송 되었습니다.">
			</em>
			<div style="margin-top: 30px;">
				<img src="<c:url value="/img/jinjoo/hyundai1.png"/>"
					alt="회원님의 메일계정으로 수신된 인증 이메일 내용안에 '이메일 인증' 버튼을 클릭하셔야만 회원가입이 완료 됩니다. 현대자동차 홈페이지 이용을 위하여 반드시 필요하오니 이메일 인증을 완료한 후 서비스를 이용하여 주세요. 본인 이메일이 아니거나, 잘못된 이메일인 경우 초기화 버튼을 누른 후 회원가입 절차를 다시 시작하여 주세요"">
			</div>
			<div
				style="margin-left: 137px; text-align: center; margin-top: -17px;">
				<a href="/DreamProject/member/agreement" class="before-complete"
					style="color: #707070; text-decoration: none;"><img
					src="<c:url value="/img/jinjoo/reset02.png"/>"></a>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div style="margin-left: 137px; text-align: center;">
		<br> <br>
		<br> <br>
	</div>
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />

</body>
</html>
