<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<c:url value="/css/JunYoung/common2.css"/>">
<link rel="stylesheet" href="<c:url value="/css/JunYoung/slide2.css"/>">
   
<script type="text/javascript" src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/js/JunYoung/controller2.js"/>" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.3/TweenMax.min.js"></script>

<script type="text/javascript">
	$().ready(function() {
		var width = $(window).width();
		
		$(".main-spot-item-background").css({
			"width": width + 10
		}); 
		
		
		$(".mask").css({ 
			"width": (width + 10) + "px",
			overflow: "hidden"
		});
		$(".slide").css({
			"width": ((width * 2) + 20) + "px"  
		});
		$(".li-slide").css({ 
			"width": (width + 10) + "px"
		}); 
		$(".btn-list").css({
			"width": width + 10
		});
		
	}); 
	  
	$(window).resize(function() {
		var width = $(window).width();
		
		$(".main-spot-item-background").css({
			"width": width + 10
		});
		
		$(".mask").css({
			"width": (width+ 10) + "px",
			overflow: "hidden"
		});
		$(".slide").css({
			"width": ((width *2) + 20) + "px" 
		});
		$(".li-slide").css({ 
			"width": (width + 10) + "px"  
		}); 
		$(".btn-list").css({
			"width": width + 10
		});
		
	});  
</script>


  
</head>   
<body>  
	<div class="mask" style="position: relative;">
	
		<div class="slide" style="height: 571px; ">
			<!-- <div class="main-spot-item-wrapper"> -->
			<button class="prev" type="button"><img src="<c:url value='/img/slide/main/controls_left.png'/>" /></button>
			<button class="next" type="button"><img src="<c:url value='/img/slide/main/controls_right.png'/>" /></button>
			 
			<ul style="list-style: none; border: none; line-height: 0;">
			  
			<!-- kona 슬라이드 -->
			<li class="li-slide" style="display:inline-block; margin: 0; padding: 0;">
				<div class="main-spot-item-background" style="background-image: url('<c:url value='/img/slide/main/kona_background.jpg'/>')">
					<div class="main-spot-item-wrapper"> 
						<p class="main-spot-item-carfont">
							<a href="javascript:void(0)">
								<img src="<c:url value='/img/slide/main/kona_font.png'/>"/>
							</a>  
						</p>
						<div class="main-spot-item-img"> 
							<a href="javascript:void(0)">
								<img src="<c:url value='/img/slide/main/kona_car.png'/>">
							</a>
						</div>
					</div>
				</div>
				
			</li><!--
			
			  --><li class="li-slide" style="display:inline-block; ">
				<div class="main-spot-item-background" style="background-image: url('<c:url value='/img/slide/main/SonataHybrid_background.jpg'/>')";>
					<div class="main-spot-item-wrapper"> 
						<p class="main-spot-item-carfont">
							<a href="javascript:void(0)">
								<img src="<c:url value='/img/slide/main/SonataHybrid_font.png'/>"/>
							</a>   
						</p>
						<div class="main-spot-item-img"> 
							<a href="javascript:void(0)">
								<img src="<c:url value='/img/slide/main/SonataHybrid_car.png'/>"/>
							</a> 
						</div>
					</div>
				</div>
			</li>
			
			</ul> 
			  
		</div> 
		<!-- 	
  	 --><div class="btn-list" style="min-width: 930px">
			<div style="position: relative; width: 221px; height: 16px; margin: 0px auto 0px;">
				<div style="text-align: center;">
					<div style="display: inline-block;">
						<a class="bx-start" href="javascript:void(0)">
							<img src="<c:url value='/img/slide/main/stop_button.png'/>"/>
						</a>   
					</div>  
					<div style="display: inline-block; margin-left: 13px;">  
						<a href="javascript:void(0)" class="slide1"> 
							<img src="<c:url value='/img/slide/main/blue_button.png'/>"/>
						</a>	  
					</div> 
					<div style="display: inline-block; padding-bottom: 2px; margin-left: 5px;">  
						<a href="javascript:void(0)" class="slide2">
							<img src="<c:url value='/img/slide/main/white_button.png'/>"/>
						</a>	
					</div>
				</div>
			</div>
		</div>	
		
	</div>
</body>
</html>
