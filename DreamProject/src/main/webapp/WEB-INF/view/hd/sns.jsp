<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value='/css/sns-style.css' />" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>

	<div class="sns_area">
		<h2>
			<img src="<c:url value='/img/sns_logo.png'/>"/>
		</h2>
		
		<div class="sns_box">
		
			<ul class="sns_list">
			
				<li class="naver-post">				
				<a href="http://post.naver.com/abouthyundai" target="_blank" title="현대자동차 네이버 포스트 바로가기">
				<span><img src="<c:url value='/img/naver.PNG'/>"/></span>
				</a>
				</li>
				
				<li class="facebook">
				<a href="https://www.facebook.com/AboutHyundai" target="_blank" title="현대자동차 페이스북 바로가기">
				<span><img src="<c:url value='/img/facebook.PNG'/>"/></span>
				</a>
				</li>
				
				<li class="plus-facebook">				
				<a href="https://www.facebook.com/AboutHyundaiPlus" target="_blank" title="현대자동차 Plus 페이스북 바로가기">
				<span><img src="<c:url value='/img/faceplus.PNG'/>"/></span>
				</a>
				</li>
				
				<li class="twitter">
				<a href="https://twitter.com/About_Hyundai" target="_blank" title="현대자동차 트위터 바로가기">
				<span><img src="<c:url value='/img/twitter.PNG'/>"/></span>
				</a>
				</li>
				
				<li class="instagram">	
				<a href="https://www.instagram.com/about_hyundai/" target="_blank" title="현대자동차 인스타그램 바로가기">
				<span><img src="<c:url value='/img/insta.PNG'/>"/></span>
				</a>
				</li>
				
				<li class="kakao-story">				
				<a href="https://story.kakao.com/ch/hyundai/" target="_blank" title="현대자동차 카카오스토리 바로가기">
				<span><img src="<c:url value='/img/kakao.PNG'/>"/></span>
				</a>
				</li>
				
				<li class="youtube">				
				<a href="http://www.youtube.com/abouthyundai " target="_blank" title="현대자동차 유투브 바로가기">
				<span><img src="<c:url value='/img/youtube.PNG'/>"/></span>
				</a>
				</li>
				
			</ul>
			
			<div class="sns_plus">
				<a href="#kakaoplus">
					<img src="<c:url value='/img/sns_txt.gif'/>"/>
				</a>
			</div>
		</div>
	</div>

</body>
</html>