<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/view/common/header.jsp" />
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/css/FaqList.css"/>" />

<script type="text/javascript"
	src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
	<script type="text/javascript">
	
	$().ready(function(){
		$(".answer").hide();
		
		$(".subject").click(function() {
			$(".subject").css({
				"background": "url('/DreamProject/img/FaqList/bg_subject_close.gif') no-repeat 703px 8px"
			});
			
			$(this).css({
			"background": "url('/DreamProject/img/FaqList/bg_subject_open.gif') no-repeat 703px 8px"});
			$(".answer").hide();
			$(this).parent().next(".answer").slideDown( "slow", function() {});

		}); 
		
		
	      /*  $(".subject>a").click(function(){
	        $(this).next().toggleClass("answer");
	    }); */
	});
	</script>

</head>
<body>

	<div class="toggle_list_wrap subsection">
			
		<div class="row-wrap">
		
			<div class="row">
				<div class="num" title="번호">89</div>
				<div class="sort" title="구분">차량구매</div>
				<div class="subject" title="제목">
					<a href="#none" onclick="updateCount(0)">자동차 리스에 대해 알고 싶어요</a>
				</div>
			</div>
			
			<div class="answer answer-on">
				자동차 리스란, 캐피탈사가 고객이 원하는 자동차를 대신 구매하여 고객에게 
				<br/>
				
				차량을 임대하여 제공하여 주고 고객은 캐피탈사에 매월 이용료를 납부하는 방식의
				<br/>
				
				자동차 금융 상품입니다.
				<br/>
				<br/>
				
				고객의 다양한 Needs에 맞는 맞춤형 상품 구성이 가능하며,
				<br/>
				
				자동차 리스도 할부나 현금 구매와 동일하게 현대자동차 영업사원에게 문의 하시면
				
				<br/>
				됩니다.				
			</div>
			
		</div>
		
		
		<div class="row-wrap">
		
			<div class="row">
				<div class="num" title="번호">88</div>
				<div class="sort" title="구분">홈페이지</div>
				<div class="subject" title="제목">
				<a href="#none" onclick="updateCount(0)">비밀번호 5회 입력 시 '비밀번호 5회 오류로 이 아이디는 사용하실 수 없습니다.'라는 메시지를 받았는데 어떻게 해야 되나요?</a>
				</div>
			</div>
			
			<div class="answer answer-on">
				이메일 아이디와 비밀번호로 로그인 시, 비밀번호가 5회 입력 오류가 발생하면,
				<br/>
				
				보안 조치로 인해 당분간은 로그인 할 수 없습니다.
				<br/>
				<br/>
				
				로그인 창 하단에 '비밀번호 찾기'를 누른 뒤, 임시비밀번호를 발급 받으시면,
				<br/>
				
				이메일 아이디 잠금이 해지되고, 발급박은 임시비밀 번호로 로그인하실 수 있습니다.
				<br/>
				<br/>
				
				비밀번호를 변경하시는 것을 권장합니다.
			</div>
			
		</div>
		
		<div class="row-wrap">
		
			<div class="row">
				<div class="num" title="번호">87</div>
				<div class="sort" title="구분">홈페이지</div>
				<div class="subject" title="제목">
				<a href="#none" onclick="updateCount(0)">홈페이지 가입 시 '이메일 인증'이란 무엇인가요?</a>
				</div>
			</div>
			
			<div class="answer answer-on">
				홈페이지 가입은 아래와 같은 절차로 이뤄집니다.
				<br/>
				
				
				1. 홈페이지 이용 약관에 동의
				<br/>
				
				2. 가입 필수 정보 입력 (이메일(ID), 이름, 휴대전화번호 등)
				<br/>
				
				3. 입력하신 이메일 주소 인증 절차
				<br/>
				
				4. '이메일 인증' 후 부가 정보 입력
				<br/>
				
				5. 홈체이지 회원가입 절차 완료
				<br/>
				<br/>
				
				
				여기서 '이메일 인증'이란, 가입하신 이메일(이메일 주소 자체가 홈체이지 ID 입니다. 예)OOOO@OOOO.com)
				<br/>
				
				주소가 실제 고객님께서 사용하시는 이메일임을 확인하는 절차입니다.
				<br/>
				<br/>
				
				
				이메일 인증 확인 페이지가 나오면, 해당 이메일을 확인하실 수 있는 곳에서 '현대자동차'가 보낸
				<br/>
				
				이메일 인증 확인 메일을 열람하시고, 가운데에 있는 이메일 인증 확인 버튼을 누르시면 됩니다.
				<br/>
				<br/>
				
				
				버튼을 누르시고 정상적으로 인증이 되면, 현대자동차 홈페이지 회원가입 절차 페이지로 돌아오며,
				<br/>
				
				나머지 가입 절차를 마무리하게 됩니다.
				<br/>
				
				
				※ 다음 한메일(@hanmail.net), 야후 (@yahoo.co.kr / @yahoo.com) 메일 사용 불가 
				<br/>			
			</div>
		</div>
	
	
		<div class="row-wrap">
		
			<div class="row">
				<div class="num" title="번호">86</div>
				<div class="sort" title="구분">홈페이지</div>
				<div class="subject" title="제목">
				<a href="#none" onclick="updateCount(0)">홈페이지의 아이디와 비밀번호를 분실하였습니다. 어떻게 해야 되나요?</a>
				</div>
			</div>
			
			<div class="answer answer-on">
				현대자동차 홈페이지의 아이디는 '이메일 아이디'로 운영됩니다. 
				<br/>
				
				회원가입 시 등록하신 이메일 주소가 아이디로 사용됩니다.
				<br/>
				<br/>
				
				
				아이디와 비밀번호를 분실하였을 경우에는, 로그인 페이지 하단에
				<br/>
				
				'아이디 찾기' / '비밀번호 찾기' 메뉴를 활용하시어 찾으실 수 있습니다.
				<br/>
				<br/>
				
				
				홈페이지 가입 시 입력하셨던 '이름' / '이메일 주소' / '핸드폰 번호' 등을
				<br/>
				
				입력하시어 찾기 버튼을 누르시면, 입력하신 '이메일 주소'로 아이디 정보 또는
				<br/>
				
				임시 비밀번호가 발급됩니다.
				<br/>
				<br/>
				
				
				찾으신 아이디와 임시발급된 비밀번호로 로그인 하신 뒤에는 가급적 개인정보
				<br/>
				
				보호를 위하여, [마이페이지]에서 비밀번호를 변경하시는게 좋습니다.
				<br/>
			</div>
		</div>	
		
		
		<div class="row-wrap">
		
			<div class="row">
				<div class="num" title="번호">86</div>
				<div class="sort" title="구분">홈페이지</div>
				<div class="subject" title="제목">
				<a href="#none" onclick="updateCount(0)">보안경고 창이 뜨고 페이지에서 이미지가 보이지않습니다. 어떻게 해야 하나요?</a>
				</div>
			</div>
			
			<div class="answer answer-on">
				회원님의 로그인 정보(개인정보)와 관련된 페이지에서는 보안접속 기능을 시행하고 있습니다.
				<br/>
				
				보안경고 창이 호출 될 경우 아래와 같이 아니요 버튼을 클릭해 주세요.
				<br/>
				<br/>
				
				<img src="/DreamProject/img/FaqList/imagePathView.jpg" alt="보안 경고창, 안전하게 제공된 콘텐츠만 보시겠습니까? 이 웹 페이지는 보안 HTTPS 연결을 사용하여 제공할 수 없는 콘텐츠를 포함하고있어 전체 웹 페이지의 보안을 손상시킬 수 있습니다. 아니오 버튼을 클릭하세요.">
						
			</div>
				
		</div>
	
	</div>	
		
		
		<div class="paging">
		
		</div>	
	
	
	<div class="list-search-form">
		<select name="lgrpCdTemp" id="lgrpCdTemp" title="검색 항목 선택">
			<option value="total">전체</option>
			<option value="CARBUY">차량구매</option>
			<option value="CARREP">차량정비</option>
			<option value="REPRES">정비예약</option>
			<option value="HOMEP">홈페이지</option>
			<option value="CTLGCL">카탈로그초기화</option>
			<option value="COMPLIM">칭찬하기</option>
			<option value="ELECTR">전기차</option>
		</select>
				
		<input type="text" class="text" name="searchKeywordTemp" id="searchKeywordTemp" style="width:227px;" title="검색어 입력">
					
		<input type="image" src="/DreamProject/img/FaqList/btn_search03.gif"  alt="검색"  onclick="javascript:void(0)" >
	</div>
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</body>
</html>