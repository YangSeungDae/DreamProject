<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/view/common/header_gray.jsp" />
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/css/emailView.css"/>" />

<script type="text/javascript"
	src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
<script type="text/javascript">
	
	function goPopup(){
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	    var pop = window.open("/DreamProject/juso","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	    
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	/** API 서비스 제공항목 확대 (2017.02) **/
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
							, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		$("#adr").val(roadAddrPart1 + roadAddrPart2);
		$("#atadr").val(addrDetail);
		$("#newzipSn").val(zipNo);
		$("#address").val(zipNo + " " + roadAddrPart1 + roadAddrPart2 + " " + addrDetail);
	}
	
	function saveAddress() {
		$("#signUpForm").attr({"method" : "post", "action" : "/DreamProject/member/saveAddress"}).submit();
	}
</script>

</head>
<body>


	<div class="confirm-header-wrap">
		<div class="confirm-header">
			<h3>
				<img src="/DreamProject/img/emailView/h3_global_menu02.gif"
					alt="회원가입이">
			</h3>

			<p class="title-desK">
				<img src="/DreamProject/img/emailView/h3_global_menu02_desc.gif"
					alt="현대자동차 홈페이지의 신규 회원가입 절차 입니다.">
			</p>
		</div>
	</div>
	
	
	<hr>

	<div class="container">
		<div class="subtitle-area">
			<div class="subtitle-area-inner">
				<div class="location">
					<a href="#">홈</a>
				</div>
			</div>
		</div>

		<div id="article">
			<div class="check">
				<img src="/DreamProject/img/emailView/img_join_process05.gif"
					alt="약관동의, 본인인증, 회원정보 입력, 이메일 인증, 회원가입 완료 5가지 회원가입 절차 중 약관 동의">
			</div>




			<div class="main">
				<div class="collectively">
					<div class="center">
						<div>
							<img
								src="/DreamProject/img/emailView/img_global_menu02_04_01.gif"
								alt="회원가입이 완료되었습니다.">
						</div>
					</div>
					<div class="textz">
					<div class="text">
						<img src="/DreamProject/img/emailView/txt_global_menu02_04_01.gif"
							alt="회원님의 현대자동차 홈페이지이메일 아이디는"> <em class="db">${sessionScope._USER_.memberId}</em> <img
							src="/DreamProject/img/emailView/txt_global_menu02_04_02.gif"
							alt="입니다.">
					</div>
				</div>
				</div>
				

				<div class="intelligenceA">
					<div class="intelligence">
						<div class="jeongbo">
							<img src="/DreamProject/img/emailView/h5_global_menu02_04_01.gif"
								alt="이용편의정보 ">
						</div>

						<div class="jeongboA">
							<img
								src="/DreamProject/img/emailView/txt_global_menu02_04_03.gif"
								alt="미리 입력하여 주시면 현대자동차 홈페이지를 편리하게 이용하실 수 있습니다.">
						</div>
						<br />
						<div class="jeongboA">
							<img src="/DreamProject/img/emailView/h6_global_menu02_04_01.gif"
								alt="기본주소">
						</div>

						<div class="jeongboA">
							<img
								src="/DreamProject/img/emailView/txt_global_menu02_04_04.gif"
								alt="카탈로그 신청, 시승, 이벤트, 구매상담 이용시 활용됩니다.">
						</div>
						<form id="signUpForm" method="post">
							<input type="hidden" name="address" id="address" />
							<div>
								<div class="adress">
									<table>
											<tr>
												<th><img
													src="/DreamProject/img/emailView/txt_global_menu02_04_07.gif"
													alt="우편번호 주소 상세주소">
												</th>
												<td><input type="text" class="txt" style="width: 78px;"
													id="newzipSn" name="newzipSn" readonly="readonly"
													title="우편번호">
	
													<div>
														<a href="javascript:goPopup();" title="새창열림"><img
															src="/DreamProject/img/btn/btn_zipcode.gif" alt="우편번호 검색"></a>
													</div>
	
													<p class="txta">
														<input type="text" class="txt" style="width: 360px"
															id="adr" name="adr" readonly="readonly" title="주소 입력">
													</p>
													<p class="txta">
														<input type="text" class="txt" style="width: 360px"
															id="atadr" name="atadr" title="상세 주소">
													 
													</p>
												</td>
	
											</tr>
									</table>
								</div>
							</div>
						</form>
					</div>
					<div style="width: 930px; margin: 0 auto;">
						<div class="completeBtn">
							<a href="javascript:saveAddress();"><img src="/DreamProject/img/btn/btn_join_complete.gif" alt="회원가입완료 "></a>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</body>
</html>