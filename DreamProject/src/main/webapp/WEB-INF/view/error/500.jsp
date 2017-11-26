<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>현대자동차 공식 홈페이지</title>

<script type="text/javascript"
	src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
	
<script type="text/javascript">
	$().ready( function() {
		$(".500_main > img").click(function (){
			window.location.href = "<c:url value='/' />";
		});
		
		$(".500_site > img").click(function () { 
			window.location.href = "<c:url value='/faq/faq' />";
		});
	});
</script>

</head>
<body>
	<div style="width: 100%; background: #fbfbfb; position: relative;">
		<div style="min-width: 930px; position: relative; width: 100%; padding-top: 100px; text-align: center;">
			<p>
				<img src="<c:url value="/img/500/txt_error_page.gif" />" alt="">
			</p>
			<img src="<c:url value="/img/500/img_error_page.jpg" />" alt="">
			<div style="border: 1px solid #e4e4e4; background: #f5f6f8; height: 140px ">
				<a style="" class="500_main">
					<img alt="" src="<c:url value="/img/500/img_error_page02_main.gif" />">
				</a>
				
				<a style="" class="500_site">
					<img alt="" src="<c:url value="/img/500/img_error_page02_site.gif" />">
				</a>
			</div> 
		</div>
	</div>
</body>
</html>