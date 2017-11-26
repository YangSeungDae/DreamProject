<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/common/header.jsp" />
<title>현대자동차 공식 홈페이지</title>
<script tyle="text/javascript" src="<c:url value='/js/dream_slider.js'/>"></script>
<script type="text/javascript">
	var mainSlideInterval1;
	var mainSlideInterval2;
	$().ready(function () {
		initSlideListTransition($("#main-center-banner1 ul"));
		changeMainCenterImage2(0);
		
		$("#main-center-banner2 ul").each(function(idx, selfObj){
			if ($(selfObj).children("li").length > 1) {
				initSlideListTransition($(selfObj));
			}
		});
		
		mainSlideInterval1 = setInterval(function() {
			slideListTransition($("#main-center-banner1 ul"), -1, 500, function() {
				changeMainCenterImage2($("#main-center-banner1 ul").data("curr-idx"));
			}, function(){});
		}, 3000);
		
		changeMainCenterBanner2();
		
		//seungdae
		
		//personallybar 제이쿼리 시작
		$(".mainnavbtn").each(function(idx,obj){
			$(obj).hover(function(){
				$(obj).find(".mainNavBtnSpan").show();
			}, function(){
				$(".mainNavBtnSpan").hide();
			});
		});
		$(".personally-box-inner .per-btn-close").click(
			function() {
				$(".snai-session:visible").hide();
				$(".personally-box:visible").slideUp("fast");
			});
	});
	
	function handleSlideList(ulObj, dir){
		// -1 : left, +1 : right;
		slideListTransition(ulObj, dir, 500, function(){
			changeMainCenterImage2(ulObj.data("curr-idx"));
		}, function(){});
	}
	
	function handleMainCenterImage2(clickIdx) {
		var underAnime = parseInt($("#main-center-banner1 > ul").data("under-animation"));
		if(underAnime==0) {
			var currIdx = parseInt($("#main-center-banner1 > ul").data("curr-idx"));
			if(clickIdx != currIdx) { 
				$("#main-center-banner1 > ul").data("under-animation", "1");

				var liWidth = parseInt($("#main-center-banner1 > ul > li").eq(0).css("width").replace("px", ""));
				var ulPosLeft = parseInt($("#main-center-banner1 > ul").css("left").replace("px", ""));
				
				changeMainCenterImage2(clickIdx);
				$("#main-center-banner1 > ul").data("curr-idx", clickIdx);
				$("#main-center-banner1 > ul").animate({"left":ulPosLeft + (currIdx - clickIdx) * liWidth + "px"}, 500, function(){
					$("#main-center-banner1 > ul").data("under-animation", "0");
				});
			}
		}
	}
	
	function changeMainCenterImage2(clickIdx){
		$("#main-center-banner-control2 > div").each(function(idx, obj){
			if(idx== clickIdx) {
				$("#main-center-banner-control2 .page0" + (idx + 1)).css("background-image","url('${pageContext.request.contextPath}/img/main/monthly0"+ (idx + 1) + "_thumbs_on.gif')");		
			} else {
				$("#main-center-banner-control2 .page0" + (idx + 1)).css("background-image","url('${pageContext.request.contextPath}/img/main/monthly0"+ (idx + 1) + "_thumbs_off.gif')");
			}
		});
	}
	
	
	function changeMainCenterBanner2() {
		var selectedIndex = $("#main-center-banner2-control input[name='promotionBanner']:checked").val()
		
		$("#main-center-banner2 ul").hide();
		var selectedList = $("#main-center-banner2 ul").eq(selectedIndex);
		selectedList.css("left", "0px");
		selectedList.show();
		clearInterval(mainSlideInterval2);
		
		if (selectedList.children("li").length > 1) {
			$("#control-left2").show();
			$("#control-right2").show();
			$("#control-play2").show();
			mainSlideInterval2 = setInterval(function() {
				slideListTransition(selectedList, -1, 500, function() {
				}, function(){
				});
			}, 3000);
		} else {
			$("#control-left2").hide();
			$("#control-right2").hide();
			$("#control-play2").hide();
		}
	}
	
	function playMainCenterBanner2(selfObj) {
		clearInterval(mainSlideInterval2);
		if ($(selfObj).data("play")=="play") {
			$(selfObj).data("play", "pause");
			$(selfObj).children("img").attr("src", "<c:url value='/img/main/btn_play.gif'/>");
		} else {
			var selectedList = $("#main-center-banner2 ul:visible");
			
			$(selfObj).data("play", "play");
			mainSlideInterval2 = setInterval(function() {
				slideListTransition(selectedList, -1, 500, function() {
				}, function(){
				});
			}, 3000);
			$(selfObj).children("img").attr("src", "<c:url value='/img/main/btn_pause.gif'/>");
		}
	}
	
	function openAccordion(selfObj) {
		$(selfObj).closest(".close-accordion").hide();
		$(selfObj).closest(".close-accordion").siblings(".open-accordion").show();	
	}
	function closeAccordion(selfObj) {
		$(selfObj).closest(".open-accordion").hide();
		$(selfObj).closest(".open-accordion").siblings(".close-accordion").show();
	}
	
	$(function(){
	$(".mainNavBtnSpan").click(function() {
		  var scrollPosition = $($(this).attr("promotion")).offset().top;
		 
		  $("body").animate({
		        scrollTop: scrollPosition
		  }, 500);
		
	});
	$(".moveBtn").click(function(e) {
		var movePage = "#showroom-cont-" + $(this).data("page");
		
		var topPosition = $("#showroom-cont-" + $(this).data("page")).offset().top;
		
		$("html, " + movePage).stop().animate({scrollTop : topPosition + "px"});
	});
	});
	
</script>
<style type="text/css">
.center-in-view {
	width: 930px;
	margin: 0px auto 0px;
	position: relative;
}

#main-center-banner1-wrapper {
	height: 250px;
	padding: 40px 0px 60px;
	position: relative;
}

#main-center-banner1-wrapper li {
	width:420px;
}

#main-center-banner1 {
	width: 420px;
	height: 100%;
	overflow: hidden;
	position: relative;
}

#main-center-banner1 ul, #main-center-banner2 ul {
	list-style: none;
	padding: 0px;
	margin: 0px;
}

#main-center-banner-control1 a:first-child {
	width: 71px;
	height: 38px;
	background-image: url("<c:url value="/img/slide/main/controls_left.png"/>");
}

#main-center-banner-control1 a:last-child {
	width: 71px;
	height: 38px;
	background-image: url("<c:url value="/img/slide/main/controls_right.png"/>");
}

#main-center-banner-control1 a:first-child:hover {
	background-image: url("<c:url value="/img/slide/main/controls_left_over.png"/>");
}

#main-center-banner-control1 a:last-child:hover {
	background-image: url("<c:url value="/img/slide/main/controls_right_over.png"/>");
}

#main-center-banner2-wrapper1 {
	height: 267px;
	padding: 40px 0px 20px;
}

#main-center-wrapper3 {
	height: 340px;
	padding: 40px 0px 20px;
}

#main-center-banner-control2 {
	position: absolute;
	top: 0px;
	left: 420px;
	width: 510px;
	height: 250px;
	cursor: pointer;
}

#main-center-banner-control2 > div {
	position: relative;
	background-repeat: no-repeat;
	background-position: bottom center;
	width: 33%;
	height: 40%;
	float: left;
}

#main-center-banner-control2 .page01 {
	margin-bottom: 20px;
	border-right: gray solid 1px;
	background-image:
		url('<c:url value="/img/main/monthly01_thumbs_off.gif"/>');
}

#main-center-banner-control2 .page02 {
	margin-bottom: 20px;
	border-right: gray solid 1px;
	background-image:
		url('<c:url value="/img/main/monthly02_thumbs_off.gif"/>');
}

#main-center-banner-control2 .page03 {
	margin-bottom: 20px;
	background-image:
		url('<c:url value="/img/main/monthly03_thumbs_off.gif"/>');
}

#main-center-banner-control2 .page04 {
	margin-top: 30px;
	border-right: gray solid 1px;
	background-image:
		url('<c:url value="/img/main/monthly04_thumbs_off.gif"/>');
}

#main-center-banner-control2 .page05 {
	margin-top: 30px;
	border-right: gray solid 1px;
	background-image:
		url('<c:url value="/img/main/monthly05_thumbs_off.gif"/>');
}

#main-center-banner-control2 .page06 {
	margin-top: 30px;
	background-image:
		url('<c:url value="/img/main/monthly06_thumbs_off.gif"/>');
}

#main-center-banner2 > ul > li {
	width: 930px;
}

#main-center-banner2 > ul > li > div {
	float: left;
}

#main-center-banner2 > ul > li > div:not(:first-child ) {
	margin-left: 36px;
}

#main-center-banner2-control {
	padding-top: 47px;
}

#main-center-banner2-control input[type='radio'] {
	display: inline-block;
	padding-right: 13px;
	vertical-align: center;
}

#main-center-banner2-control label {
	color: #222222;
	font-size: 9pt;
	display: inline-block;
	vertical-align: center;
}

#main-center-banner2-control label:not(:last-child ) {
	margin-right: 17px;
}

#main-center-wrapper4 {
	height: 366px;
	padding: 40px 0px 20px;
	background-image: url("<c:url value="/img/main/bg_counsel.jpg"/>");
	background-repeat: no-repeat;
}
.background-white {
	background-color: #ffffff;
}

.background-gray {
	background-color: #f0f1f3;
}

.open-accordion .btn-close, .close-accordion .btn-open {
	position: absolute;
	top: 0px;
	right: 0px;
	cursor: pointer
}

.open-accordion .btn-close span, .close-accordion .btn-open span {
	display: block;
	position: absolute;
	top: 0;
	right: 0;
	width: 32px;
	height: 31px;
	background-color: #fff;
}

.open-accordion .btn-close span {
	border: 1px solid #fff;
}

.close-accordion {
	background-color: #ffffff;
	display: none;
	border-top: 1px solid #ccc;
}

.open-accordion .background-white .btn-close span {
	border: 1px solid #ccc;
}

.close-accordion .btn-open span {
	border: 1px solid #ccc;
}

.open-accordion .btn-close span:before {
	content: '';
	position: absolute;
	top: 12px;
	left: 10px;
	width: 11px;
	height: 11px;
	display: block;
	border: 2px solid #444;
	border-left-width: 0;
	border-bottom-width: 0;
	transform: rotate(-45deg);
	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
}

.close-accordion .btn-open span:before {
	content: '';
	position: absolute;
	top: 7px;
	left: 10px;
	width: 11px;
	height: 11px;
	display: block;
	border: 2px solid #444;
	border-left-width: 0;
	border-bottom-width: 0;
	transform: rotate(135deg);
	-webkit-transform: rotate(135deg);
	-moz-transform: rotate(135deg);
	-o-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
}
#main-counsel {
	background:url("<c:url value="/img/main/counsel_txt01.gif"/>") no-repeat 0px 40px;
	width:850px;
	margin: 0px auto 0px;
	padding-top:185px;
}
#main-counsel #agent-search {
	display:inline-block;
	border:2px solid white;
	width:175px;
	height:40px;
	background:url('<c:url value="/img/main/counsel_btn01.gif"/>') no-repeat 22px 11px, url('<c:url value="/img/main/ico_counsel_arrow.gif"/>') no-repeat 140px 13px;
	position:absolute;
	left:481px;
	top:17px;
}
#main-counsel #purchase-counsel {
	display:inline-block;
	border:2px solid white;
	width:158px;
	height:40px;
	background:url('<c:url value="/img/main/counsel_btn02.gif"/>') no-repeat 22px 11px, url('<c:url value="/img/main/ico_counsel_arrow.gif"/>') no-repeat 126px 13px;
	position:absolute;
	left:671px;
	top:17px;	
}
</style>

<div style="position:absolute;top:0px;width:100%;overflow-x:hidden;">
	<jsp:include page="/WEB-INF/view/main/slide.jsp" />
	<link rel="stylesheet" href="<c:url value="/css/service-navigation-area.css"/>" />
	<div class="service-navigation-area">
		<div class="service-navigation-area-inner">
			<div class="mainnavbtn">
				<span class="mainNavBtnSpan"></span>
				<a class="moveBtn" data-page="893" href="javascript:void(0)"><img src="<c:url value="/img/main_2017/nav01_off.gif"/>" /></a>
				<c:if test="${empty sessionScope._USER_ }">
				<span class="snai-session"> <!-- 세션없을 때 -->
				<img src="<c:url value="/img/main_2017/ico_personallyBox.gif"/>" 
					class="snai-seImg" />
				</span>
				</c:if>
			</div>
			<div class="mainnavbtn">
				<span class="mainNavBtnSpan"></span>
				<a class="moveBtn" data-page="894" href="javascript:void(0)"><img
					src="<c:url value="/img/main_2017/nav02_off.gif"/>" /></a>
			</div>
			<div class="mainnavbtn">
				<span class="mainNavBtnSpan"></span>
				<a class="moveBtn" data-page="895" href="javascript:void(0)"><img
					src="<c:url value="/img/main_2017/nav03_off.gif"/>" /></a>
	
			</div>
			<div class="mainnavbtn">
				<span class="mainNavBtnSpan"></span>
				<a class="moveBtn" data-page="896" href="javascript:void(0)"><img
					src="<c:url value="/img/main_2017/nav04_off.gif"/>" /></a>
			</div>
			<div class="mainnavbtn">
			<span class="mainNavBtnSpan"></span>
				<a class="moveBtn" data-page="897" href="javascript:void(0)"><img
					src="<c:url value="/img/main_2017/nav05_off.gif"/>" /></a>
				<c:if test="${not empty sessionScope._USER_ }">
				<span class="snai-session"> <!-- 세션있을 때 -->
				<img src="<c:url value="/img/main_2017/ico_personallyBox.gif"/>" 
					class="snai-seImg"/>
				</span>
				</c:if>
			</div>
			<div style="clear:left"></div>
		</div>
	</div>

	<div class="personally-box" id="showroom-cont-893">
		<c:if test="${empty sessionScope._USER_ }">
		<div class="personally-box-inner"> <!-- 세션없을 때 -->
			<a class="per-btn-close" href="#"> 
			<img src="<c:url value="/img/main_2017/btn_close.gif"/>" />
			</a>
			<a href="#" class="goLoginDiv"></a>
			<a href="#" class="goCona"></a>
			<a href="#" class="goSelectPurCndMgmtList"></a>
			<a href="#" class="goHybrid"></a>
			<a href="#" class="goService"></a>
			<img src="<c:url value="/img/main_2017/imagePathView.jpg"/>" />
		</div>
		</c:if>
		<c:if test="${not empty sessionScope._USER_ }">
		<div class="personally-box-inner"> <!-- 세션있을 때 -->
			<a class="per-btn-close" href="#"> 
			<img src="<c:url value="/img/main_2017/btn_close.gif"/>" />
			</a>
			<span class="PerName">${sessionScope._USER_.name}</span>
			<a href="#" class="goNews"></a>
			<a href="#" class="goNewsTwo"></a>
			<a href="#" class="goRSS"></a>
			<a href="#" class="goPlusFriend"></a>
			<img src="<c:url value="/img/main_2017/imagePathViewLogin.jpg"/>" />	
		</div>
		</c:if>
	</div>
	
	<div id="main-center-banner1-wrapper" class="center-in-view">
		<div style="width: 100%; height: 100%; position: relative;">
			<div id="main-center-banner1">
				<ul>
					<li><a href="<c:url value="/menu/3"/>"> <img
							src="<c:url value="/img/main/monthly01.jpg"/>" />
					</a></li>
					<li><a href="<c:url value="/menu/1"/>"> <img
							src="<c:url value="/img/main/monthly02.jpg"/>" />
					</a></li>
					<li><a href="<c:url value="#"/>"> <img
							src="<c:url value="/img/main/monthly03.jpg"/>" />
					</a></li>
					<li><a href="<c:url value="/menu/8"/>"> <img
							src="<c:url value="/img/main/monthly04.jpg"/>" />
					</a></li>
					<li><a href="<c:url value="/menu/5"/>"> <img
							src="<c:url value="/img/main/monthly05.jpg"/>" />
					</a></li>
					<li><a href="<c:url value="/menu/6"/>"> <img
							src="<c:url value="/img/main/monthly06.jpg"/>" />
					</a></li>
				</ul>
				<div style="clear: left;"></div>
				<div id="main-center-banner-control1"
					style="position: absolute; top: 0px;">
					<div style="position: relative;">
						<a id="control-left"
							style="position: absolute; top: 100px; left: 0px;"
							href="javascript:handleSlideList($('#main-center-banner1 ul'), 1);"></a>
						<a id="control-right"
							style="position: absolute; top: 100px; left: 349px;"
							href="javascript:handleSlideList($('#main-center-banner1 ul'), -1);"></a>
					</div>
				</div>
			</div>
			<div id="main-center-banner-control2">
				<div class="page01" onclick="handleMainCenterImage2(0)"></div>
				<div class="page02" onclick="handleMainCenterImage2(1)"></div>
				<div class="page03" onclick="handleMainCenterImage2(2)"></div>
				<div class="page04" onclick="handleMainCenterImage2(3)"></div>
				<div class="page05" onclick="handleMainCenterImage2(4)"></div>
				<div class="page06" onclick="handleMainCenterImage2(5)"></div>
			</div>
		</div>
	</div>
	<div id="showroom-cont-894">
		<div class="open-accordion background-gray">
			<div id="main-center-banner2-wrapper1" class="center-in-view background-gray">
				<a class="btn-close" onclick="closeAccordion(this);"><span></span></a>
				<div style="text-align: center; position: relative;">
					<div style="padding-top: 20px; padding-bottom: 25px;">
						<h2 style="padding: 0px; margin: 0px;">
							<img src="<c:url value="/img/main/h2_promotion.png"/>" />
						</h2>
						<div style="position: absolute; top: 20px; right: 0px;">
							<a href="<c:url value="/menu/9"/>"><img
								src="<c:url value="/img/main/btn_list_more.gif"/>" /></a>
							<a id="control-play2" style="margin-left: 3px;" href="javascript:void(0)"
								onclick="playMainCenterBanner2(this)" data-play="play"><img
								src="<c:url value="/img/main/btn_pause.gif"/>" /></a>
						</div>
					</div>
					<div id="main-center-banner2" style="height: 76px; width: 930px; overflow: hidden; position: relative;">
						<ul>
							<li>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event01.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event02.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event03.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event04.jpg"/>" /></a>
								</div>
							</li>
							<li>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event05.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event06.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event07.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event08.jpg"/>" /></a>
								</div>
							</li>
							<li>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event09.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event10.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event11.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event12.jpg"/>" /></a>
								</div>
							</li>
							<li>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event13.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event14.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/promotion_none.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/promotion_none.jpg"/>" /></a>
								</div>
							</li>
						</ul>
						<ul>
							<li>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event02.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/promotion_none.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/promotion_none.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/promotion_none.jpg"/>" /></a>
								</div>
							</li>
						</ul>
						<ul>
							<li>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event01.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event03.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event04.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event05.jpg"/>" /></a>
								</div>
							</li>
							<li>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event06.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event07.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event08.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event13.jpg"/>" /></a>
								</div>
							</li>
							<li>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event14.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/promotion_none.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/promotion_none.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/promotion_none.jpg"/>" /></a>
								</div>
							</li>
						</ul>
						<ul>
							<li>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event02.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event09.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/papular_event11.jpg"/>" /></a>
								</div>
								<div>
									<a href="<c:url value="/menu/9"/>"><img
										src="<c:url value="/img/main/promotion_none.jpg"/>" /></a>
								</div>
							</li>
						</ul>
						<div style="clear: both;"></div>
					</div>
					<div id="main-center-banner2-control">
						<a id="control-left2" style="float: left;"
							href="javascript:handleSlideList($('#main-center-banner2 ul:visible'), 1);"><span
							style="display:inline-block;width:33px;height:15px;background-image:url('<c:url value="/img/main/arrow_blue.png"/>');background-position:0px 0px;"></span></a>
						<a id="control-right2" style="float: right;"
							href="javascript:handleSlideList($('#main-center-banner2 ul:visible'), -1);"><span
							style="display:inline-block;width:33px;height:15px;background-image:url('<c:url value="/img/main/arrow_blue.png"/>');background-position:-43px 0px;"></span></a>
						<input type="radio" name="promotionBanner" id="promotionBanner1" value="0" onchange="changeMainCenterBanner2();" checked="checked"></input>
						<label for="promotionBanner1">인기 이벤트</label>
						<input type="radio" name="promotionBanner" id="promotionBanner2" value="1" onchange="changeMainCenterBanner2();"></input>
						<label for="promotionBanner2">시승 이벤트</label>
						<input type="radio" name="promotionBanner" id="promotionBanner3" value="2" onchange="changeMainCenterBanner2();"></input>
						<label for="promotionBanner3">차량 구매 고객</label>
						<input type="radio" name="promotionBanner" id="promotionBanner4" value="3" onchange="changeMainCenterBanner2();"></input>
						<label for="promotionBanner4">모든 고객</label>
						<div style="clear: both;"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="close-accordion">
			<div class="center-in-view" style="height: 30px; padding: 48px 0px 47px; background-color: #ffffff;">
				<div style="text-align: center; position: relative;">
					<h2 style="padding: 0px; margin: 0px;">
						<img src="<c:url value="/img/main/h2_promotion.png"/>" />
					</h2>
					<a class="btn-open" onclick="openAccordion(this);"><span></span></a>
				</div>
			</div>
		</div>
	</div>
	<div id="showroom-cont-895">
		<div class="open-accordion background-white">
			<div id="main-center-wrapper3" class="center-in-view background-white">
				<a class="btn-close" onclick="closeAccordion(this);"><span></span></a>
				<div style="text-align: center; position: relative;">
					<div style="padding-top:20px; padding-bottom:12px;">
						<h2 style="padding:0px; margin:0px;">
							<img src="<c:url value="/img/main/h2_testdrive.png"/>" />
						</h2>
					</div>
					<div style="padding-top:0px; padding-bottom:32px;">
						<img src="<c:url value="/img/main/testdrive_txt.gif"/>"/>
					</div>
					<div>
						<div style="width:320px;height:190px;float:left;margin-right:10px;">
							<a href="<c:url value="/menu/8"/>"><img src="<c:url value="/img/main/bg_testdrive.jpg"/>"/></a>
						</div>
						<div style="position:relative;width:298px;height:190px;float:left;border-left:1px solid #cccccc;border-top:1px solid #cccccc;border-bottom:1px solid #cccccc;">
							<a style="position:absolute;top:30px;left:27px;" href="#"><img src="<c:url value="/img/main/testdrive_bnr01.gif"/>"/></a>
						</div>
						<div style="position:relative;width:298px;height:190px;float:left;border:1px solid #cccccc;">
							<a style="position:absolute;top:30px;left:27px;" href="#"><img src="<c:url value="/img/main/testdrive_bnr02.gif"/>"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="close-accordion background-white">
			<div class="center-in-view" style="height:30px; padding: 48px 0px 47px; background-color: #ffffff;">
				<div style="text-align: center; position: relative;">
					<h2 style="padding: 0px; margin: 0px;">
						<img src="<c:url value="/img/main/h2_testdrive.png"/>" />
					</h2>
					<a class="btn-open" onclick="openAccordion(this);"><span></span></a>
				</div>
			</div>
		</div>
	</div>
	<div id="showroom-cont-896">
		<div class="open-accordion background-white">
			<div id="main-center-wrapper4" class="center-in-view background-white">
				<a class="btn-close" onclick="closeAccordion(this);"><span></span></a>
				<div style="text-align: center; position: relative;">
					<div style="padding-top:20px; padding-bottom:12px;">
						<h2 style="padding:0px; margin:0px;">
							<img src="<c:url value="/img/main/h2_counsel_white.png"/>" />
						</h2>	
					</div>
					<div id="main-counsel">
						<div style="background-color:#444;width:850px;height:75px;position:relative;">
							<img src="<c:url value="/img/main/counsel_txt02.gif"/>" style="position:absolute;top:16px;left:17px;" />
							<a id="agent-search" href='<c:url value="/menu/7"/>' style="" /></a>
							<a id="purchase-counsel" href='<c:url value="/menu/6"/>'></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="close-accordion background-white">
			<div class="center-in-view" style="height:30px; padding: 48px 0px 47px; background-color: #ffffff;">
				<div style="text-align: center; position: relative;">
					<h2 style="padding: 0px; margin: 0px;">
						<img src="<c:url value="/img/main/h2_counsel.png"/>" />
					</h2>
					<a class="btn-open" onclick="openAccordion(this);"><span></span></a>
				</div>
			</div>
		</div>
	</div>
	<link rel="stylesheet" href="<c:url value='/css/sns-style.css' />" />
	<div id="showroom-cont-897">
		<div class="open-accordion background-gray">
			<div id="main-center-banner2-wrapper1" class="center-in-view background-gray">
				<a class="btn-close" onclick="closeAccordion(this);"><span></span></a>
				<div style="text-align: center; position: relative;">
					<div class="sns_area" style="text-align:center">
						<h2>
							<img src="<c:url value='/img/sojin/sns_logo.png'/>"/>
						</h2>
						<div class="sns_box">
							<ul class="sns_list">
								<li class="naver-post">				
								<a href="http://post.naver.com/abouthyundai" target="_blank" title="현대자동차 네이버 포스트 바로가기">
								<span><img src="<c:url value='/img/sojin/naver.PNG'/>"/></span>
								</a>
								</li>
								<li class="facebook">
								<a href="https://www.facebook.com/AboutHyundai" target="_blank" title="현대자동차 페이스북 바로가기">
								<span><img src="<c:url value='/img/sojin/facebook.PNG'/>"/></span>
								</a>
								</li>
								<li class="plus-facebook">				
								<a href="https://www.facebook.com/AboutHyundaiPlus" target="_blank" title="현대자동차 Plus 페이스북 바로가기">
								<span><img src="<c:url value='/img/sojin/faceplus.PNG'/>"/></span>
								</a>
								</li>
								<li class="twitter">
								<a href="https://twitter.com/About_Hyundai" target="_blank" title="현대자동차 트위터 바로가기">
								<span><img src="<c:url value='/img/sojin/twitter.PNG'/>"/></span>
								</a>
								</li>
								<li class="instagram">	
								<a href="https://www.instagram.com/about_hyundai/" target="_blank" title="현대자동차 인스타그램 바로가기">
								<span><img src="<c:url value='/img/sojin/insta.PNG'/>"/></span>
								</a>
								</li>
								<li class="kakao-story">				
								<a href="https://story.kakao.com/ch/hyundai/" target="_blank" title="현대자동차 카카오스토리 바로가기">
								<span><img src="<c:url value='/img/sojin/kakao.PNG'/>"/></span>
								</a>
								</li>
								<li class="youtube">				
								<a href="http://www.youtube.com/abouthyundai " target="_blank" title="현대자동차 유투브 바로가기">
								<span><img src="<c:url value='/img/sojin/youtube.PNG'/>"/></span>
								</a>
								</li>
							</ul>
							<div class="sns_plus">
								<a href="#kakaoplus">
									<img src="<c:url value='/img/sojin/sns_txt.gif'/>"/>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="close-accordion background-white">
			<div class="center-in-view" style="height:30px; padding: 48px 0px 47px; background-color: #ffffff;">
				<div style="text-align: center; position: relative;">
					<h2 style="padding: 0px; margin: 0px;">
						<img src="<c:url value='/img/sojin/sns_logo.png'/>"/>
					</h2>
					<a class="btn-open" onclick="openAccordion(this);"><span></span></a>
				</div>
			</div>
		</div>
	</div>
	<link rel="stylesheet" href="<c:url value='/css/news-style.css' />" />
	<div class="center-in-view background-white">
		<div class="news_notice">
			<div class="news_area">
				<h2>
					<img src="<c:url value='/img/sojin/h2_news.gif'/>"/>
				</h2>
				<ul class="list">
	                 <li><a href="http://www.hyundai.com/kr/news/selectNewsDetail.do?blcSn=14822">제12회 세계 정비사 기능 경진대회 개최<span class="date">2017.10.19</span></a></li>
	                 <li><a href="http://www.hyundai.com/kr/news/selectNewsDetail.do?blcSn=14825">그린카, ‘코나’ 무료 시승 실시<span class="date">2017.10.17</span></a></li>
	                 <li><a href="http://www.hyundai.com/kr/news/selectNewsDetail.do?blcSn=14823">현대 세계 양궁 선수권 대회 개막<span class="date">2017.10.17</span></a></li>
	                 <li><a href="http://www.hyundai.com/kr/news/selectNewsDetail.do?blcSn=14805">‘유니버스’ 안전 사양 무상 업그레이드 지원<span class="date">2017.10.06</span></a></li>
	            </ul>
	            <span class="plus">
		            <a href="http://www.hyundai.com/kr/news/selectNewsPaging.do">
		            <img src="<c:url value='/img/sojin/click.PNG' />"/>
		            </a>
	            </span>
			</div>
			<div class="notice_area">
				<h2>
					<img src="<c:url value='/img/sojin/h2_notice.gif'/>"/>
				</h2>
				<ul class="list">
	                <li><a href="http://www.hyundai.com/kr/news/selectNewsDetail.do?blcSn=14827">현대자동차 공식 SNS 운영대행사 선정 경쟁입찰<span class="date">2017.10.13</span></a></li>
	                <li><a href="http://www.hyundai.com/kr/news/selectNewsDetail.do?blcSn=14826">자동차 전문 정보 콘텐츠 제작/운영 대행사 선정 경쟁...<span class="date">2017.10.11</span></a></li>
	                <li><a href="http://www.hyundai.com/kr/news/selectNewsDetail.do?blcSn=14784">하이패스 통행료 할인(50%)에 따른  ETCS S/W 업데이...<span class="date">2017.09.18</span></a></li>
	                <li><a href="http://www.hyundai.com/kr/news/selectNewsDetail.do?blcSn=14755">2017년 8월 판매실적<span class="date">2017.09.06</span></a></li>
	            </ul>
	            
	            <span class="plus">
	            	<a href="http://www.hyundai.com/kr/news/selectNewsPaging.do">
	            		<img src="<c:url value='/img/sojin/click.PNG' />"/>
	            	</a> 
	            </span>
			</div>
			<div style="clear:both;"></div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</div>
</body></html>