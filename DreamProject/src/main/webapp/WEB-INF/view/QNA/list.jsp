<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/common/header.jsp" />
<script type="text/javascript">
	$(function() {	$('.car-type img').each(function(idx, obj) {$(obj)
									.click(
											function() {
												$(".catab").each(
														function(idx2, obj2) {
															if (idx == idx2) {
																$(obj2).show();
															} else {
																$(obj2).hide();
															}
														});
												if (idx == 0) {
													$(".carImgOne")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_passenger_on.gif'/>");
													$(".carImgTwo")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_rv_off.gif'/>");
													$(".carImgThree")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_eco_friendly_off.gif'/>");
													$(".carImgFour")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_taxi_off.gif'/>");
													$(".carImgFive")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_lcv_off.gif'/>");
													$(".carImgSix")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_truck_off.gif'/>");
													$(".carImgSeven")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_bus_off.gif'/>");
												} else if (idx == 1) {
													$(".carImgOne")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_passenger_off.gif'/>");
													$(".carImgTwo")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_rv_on.gif'/>");
													$(".carImgThree")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_eco_friendly_off.gif'/>");
													$(".carImgFour")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_taxi_off.gif'/>");
													$(".carImgFive")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_lcv_off.gif'/>");
													$(".carImgSix")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_truck_off.gif'/>");
													$(".carImgSeven")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_bus_off.gif'/>");
												} else if (idx == 2) {
													$(".carImgOne")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_passenger_off.gif'/>");
													$(".carImgTwo")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_rv_off.gif'/>");
													$(".carImgThree")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_eco_friendly_on.gif'/>");
													$(".carImgFour")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_taxi_off.gif'/>");
													$(".carImgFive")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_lcv_off.gif'/>");
													$(".carImgSix")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_truck_off.gif'/>");
													$(".carImgSeven")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_bus_off.gif'/>");
												} else if (idx == 3) {
													$(".carImgOne")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_passenger_off.gif'/>");
													$(".carImgTwo")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_rv_off.gif'/>");
													$(".carImgThree")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_eco_friendly_off.gif'/>");
													$(".carImgFour")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_taxi_on.gif'/>");
													$(".carImgFive")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_lcv_off.gif'/>");
													$(".carImgSix")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_truck_off.gif'/>");
													$(".carImgSeven")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_bus_off.gif'/>");
												} else if (idx == 4) {
													$(".carImgOne")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_passenger_off.gif'/>");
													$(".carImgTwo")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_rv_off.gif'/>");
													$(".carImgThree")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_eco_friendly_off.gif'/>");
													$(".carImgFour")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_taxi_off.gif'/>");
													$(".carImgFive")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_lcv_on.gif'/>");
													$(".carImgSix")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_truck_off.gif'/>");
													$(".carImgSeven")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_bus_off.gif'/>");
												} else if (idx == 5) {
													$(".carImgOne")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_passenger_off.gif'/>");
													$(".carImgTwo")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_rv_off.gif'/>");
													$(".carImgThree")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_eco_friendly_off.gif'/>");
													$(".carImgFour")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_taxi_off.gif'/>");
													$(".carImgFive")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_lcv_off.gif'/>");
													$(".carImgSix")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_truck_on.gif'/>");
													$(".carImgSeven")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_bus_off.gif'/>");
												} else if (idx == 6) {
													$(".carImgOne")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_passenger_off.gif'/>");
													$(".carImgTwo")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_rv_off.gif'/>");
													$(".carImgThree")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_eco_friendly_off.gif'/>");
													$(".carImgFour")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_taxi_off.gif'/>");
													$(".carImgFive")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_lcv_off.gif'/>");
													$(".carImgSix")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_truck_off.gif'/>");
													$(".carImgSeven")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_bus_on.gif'/>");
												}
											});
						});
		$('.car-type img')
				.each(
						function(idx, obj) {
							$(obj)
									.hover(
											function() {
												if (idx == 0) {
													$(".carImgOne")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_passenger_on.gif'/>");
												} else if (idx == 1) {
													$(".carImgTwo")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_rv_on.gif'/>");
												} else if (idx == 2) {
													$(".carImgThree")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_eco_friendly_on.gif'/>");
												} else if (idx == 3) {
													$(".carImgFour")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_taxi_on.gif'/>");
												} else if (idx == 4) {
													$(".carImgFive")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_lcv_on.gif'/>");
												} else if (idx == 5) {
													$(".carImgSix")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_truck_on.gif'/>");
												} else if (idx == 6) {
													$(".carImgSeven")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_bus_on.gif'/>");
												}

											},
											function() {
												if (idx == 0
														&& !$(".catab").eq(idx)
																.is(":visible")) {
													$(".carImgOne")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_passenger_off.gif'/>");
												} else if (idx == 1
														&& !$(".catab").eq(idx)
																.is(":visible")) {
													$(".carImgTwo")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_rv_off.gif'/>");
												} else if (idx == 2
														&& !$(".catab").eq(idx)
																.is(":visible")) {
													$(".carImgThree")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_eco_friendly_off.gif'/>");
												} else if (idx == 3
														&& !$(".catab").eq(idx)
																.is(":visible")) {
													$(".carImgFour")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_taxi_off.gif'/>");
												} else if (idx == 4
														&& !$(".catab").eq(idx)
																.is(":visible")) {
													$(".carImgFive")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_lcv_off.gif'/>");
												} else if (idx == 5
														&& !$(".catab").eq(idx)
																.is(":visible")) {
													$(".carImgSix")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_truck_off.gif'/>");
												} else if (idx == 6
														&& !$(".catab").eq(idx)
																.is(":visible")) {
													$(".carImgSeven")
															.attr("src",
																	"<c:url value='/img/gnb/menu_title_bus_off.gif'/>");
												}
											});
						});
		$("#globalnavigation .menu-btn")
				.each(
						function(idx, obj) {
							$(obj)
									.click(
											function() {

												if (!$(".sub-menu-wrap")
														.eq(idx).is(":visible")) {
													$(".sub-menu-wrap").hide();
													$(".sub-menu-wrap").eq(idx).slideDown("fast");
													$("#globalnavigation .menu-btn img").eq(0).attr("src", "<c:url value='/img/gnb/gnb01_out.gif'/>");
													$("#globalnavigation .menu-btn img").eq(1).attr("src", "<c:url value='/img/gnb/gnb02_out.gif'/>");
													$("#globalnavigation .menu-btn img").eq(2).attr("src", "<c:url value='/img/gnb/gnb03_out.gif'/>");
													$("#globalnavigation .menu-btn img").eq(3).attr("src", "<c:url value='/img/gnb/gnb04_out.gif'/>");
													$("#globalnavigation .menu-btn img").eq(4).attr("src", "<c:url value='/img/gnb/gnb07_out.gif'/>");
													if (idx == 0) {
														$("#globalnavigation .menu-btn img").eq(0).attr("src", "<c:url value='/img/gnb/gnb01_over.gif'/>");
													} else if (idx == 1) {
														$("#globalnavigation .menu-btn img").eq(1).attr("src", "<c:url value='/img/gnb/gnb02_over.gif'/>");
													} else if (idx == 2) {
														$("#globalnavigation .menu-btn img").eq(2).attr("src", "<c:url value='/img/gnb/gnb03_over.gif'/>");
													} else if (idx == 3) {
														$("#globalnavigation .menu-btn img").eq(3).attr("src", "<c:url value='/img/gnb/gnb04_over.gif'/>");
													} else if (idx == 4) {
														$("#globalnavigation .menu-btn img").eq(4).attr("src", "<c:url value='/img/gnb/gnb07_over.gif'/>");
													}

												}
											});
						});

		$(".sub-menu-wrap .btn-close").click(
				function() {
					$("#globalnavigation .menu-btn img").eq(0).attr("src",
							"<c:url value='/img/gnb/gnb01_out.gif'/>")
					$("#globalnavigation .menu-btn img").eq(1).attr("src",
							"<c:url value='/img/gnb/gnb02_out.gif'/>")
					$("#globalnavigation .menu-btn img").eq(2).attr("src",
							"<c:url value='/img/gnb/gnb03_out.gif'/>")
					$("#globalnavigation .menu-btn img").eq(3).attr("src",
							"<c:url value='/img/gnb/gnb04_out.gif'/>")
					$("#globalnavigation .menu-btn img").eq(4).attr("src",
							"<c:url value='/img/gnb/gnb07_out.gif'/>")

					$(".sub-menu-wrap:visible").slideUp("fast");
				});
		//헤더 제이쿼리끝
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
</script>
<link rel="stylesheet" href="<c:url value="/css/header.css"/>" />

<div id="util-menu">
	<a href="#"><img
		src="<c:url value="/img/header/utill_menu01.png"/>" /></a> <a href="#"><img
		src="<c:url value="/img/header/utill_menu02.png"/>" /></a> <a href="#"><img
		src="<c:url value="/img/header/utill_menu03.png"/>" /></a> <a href="#"><img
		src="<c:url value="/img/header/utill_menu08.png"/>" /></a> <a href="#"><img
		src="<c:url value="/img/header/utill_menu04.png"/>" /></a> <a href="#"><img
		src="<c:url value="/img/header/utill_menu09_74gray_main.png"/>" /></a>
</div>
<div id="globalnavigation">
	<a href="#"><img style="margin-left: 1px"
		src="<c:url value="/img/gnb/logo.gif"/>" /></a> <a class="menu-btn"
		href="#"><img src="<c:url value="/img/gnb/gnb01_out.gif"/>" /></a> <a
		class="menu-btn" href="#"><img
		src="<c:url value="/img/gnb/gnb02_out.gif"/>" /></a> <a class="menu-btn"
		href="#"><img src="<c:url value="/img/gnb/gnb03_out.gif"/>" /></a> <a
		class="menu-btn" href="#"><img
		src="<c:url value="/img/gnb/gnb04_out.gif"/>" /></a> <a href="#"><img
		src="<c:url value="/img/gnb/gnb05.gif"/>" /></a> <a href="#"><img
		src="<c:url value="/img/gnb/gnb06.gif"/>" /></a> <a class="menu-btn"
		href="#"><img src="<c:url value="/img/gnb/gnb07_out.gif"/>" /></a>
</div>
<div class="sub-camenu sub-menu-wrap">
	<a class="btn-close" href="#"> <img
		src="<c:url value="/img/gnb/btn_close.gif"/>" />
	</a>
	<div class="sub-camenu-wrap">
		<div class="car-type">
			<img src="<c:url value="/img/gnb/menu_title_passenger_on.gif"/>"
				class="carImgOne" /> <img
				src="<c:url value="/img/gnb/menu_title_rv_off.gif"/>"
				class="carImgTwo" /> <img
				src="<c:url value="/img/gnb/menu_title_eco_friendly_off.gif"/>"
				class="carImgThree" /> <img
				src="<c:url value="/img/gnb/menu_title_taxi_off.gif"/>"
				class="carImgFour" /> <img
				src="<c:url value="/img/gnb/menu_title_lcv_off.gif"/>"
				class="carImgFive" /> <img
				src="<c:url value="/img/gnb/menu_title_truck_off.gif"/>"
				class="carImgSix" /> <img
				src="<c:url value="/img/gnb/menu_title_bus_off.gif"/>"
				class="carImgSeven" /> <img
				src="<c:url value="/img/gnb/menu_title_genesis.gif"/>" />
			<div style="clear: left"></div>
		</div>
		<div class="catab carOne">
			<a href="#"><img
				src="<c:url value="/img/gnb/menu_car01_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car18_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car04_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car05_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car06_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car08_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car09_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car16_0512.gif"/>" /></a>
			<div style="clear: left"></div>
		</div>
		<div class="catab carTwo">
			<a href="#"><img
				src="<c:url value="/img/gnb/menu_rv08_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_rv01_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_rv02_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_rv05_0512.gif"/>" /></a>
			<div style="clear: left"></div>
		</div>
		<div class="catab carThree">
			<a href="#"><img
				src="<c:url value="/img/gnb/menu_car19_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car20_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car22_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car07_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car17_0717.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_car15_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_rv06_0512.gif"/>" /></a>
			<div style="clear: left"></div>
		</div>
		<div class="catab carFour">
			<a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use01_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use02_0512.gif"/>" /></a>
			<div style="clear: left"></div>
		</div>
		<div class="catab carFive">
			<a href="#"><img
				src="<c:url value="/img/gnb/menu_rv04_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_rv07_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use04_0512.gif"/>" /></a>
			<div style="clear: left"></div>
		</div>
		<div class="catab carSix">
			<a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use05_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use06_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use12_0512.gif"/>" /></a>
			<div style="clear: left"></div>
		</div>
		<div class="catab CarSeven">
			<a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use14_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use17_0905.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use08_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use09_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use10_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use11_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use13_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use07_0512.gif"/>" /></a> <a href="#"><img
				src="<c:url value="/img/gnb/menu_c_use15_0622.gif"/>" /></a>
			<div style="clear: left"></div>
		</div>
	</div>
</div>
<div class="sub-navi-wrap sub-menu-wrap">
	<a class="btn-close" href="#"> <img
		src="<c:url value="/img/gnb/btn_close.gif"/>" />
	</a> <img src="<c:url value="/img/gnb/menu_title_estimation.gif"/>" />
	<div class="sort-navi">
		<a href="#"><img
			src="<c:url value="/img/gnb/menu_estimation01.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_estimation02.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_estimation03.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_estimation04.gif"/>" /></a>
		<div style="clear: left"></div>
	</div>
	<div style="clear: left"></div>
</div>
<div class="sub-navi-wrap sub-menu-wrap">
	<a class="btn-close" href="#"> <img
		src="<c:url value="/img/gnb/btn_close.gif"/>" />
	</a> <img src="<c:url value="/img/gnb/menu_title_counsel.gif"/>" />
	<div class="sort-navi">
		<a href="#"><img
			src="<c:url value="/img/gnb/menu_counsel01.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_counsel02.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_counsel_03.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_counsel04.gif"/>" /></a>
		<div style="clear: left"></div>
	</div>
	<div style="clear: left"></div>
</div>
<div class="sub-navi-wrap sub-menu-wrap">
	<a class="btn-close" href="#"> <img
		src="<c:url value="/img/gnb/btn_close.gif"/>" />
	</a> <img src="<c:url value="/img/gnb/menu_title_event.gif"/>" />
	<div class="sort-navi">
		<a href="#"><img src="<c:url value="/img/gnb/menu_event01.gif"/>" /></a>
		<a href="#"><img src="<c:url value="/img/gnb/menu_event02.gif"/>" /></a>
		<div style="clear: left"></div>
	</div>
	<div style="clear: left"></div>
</div>

<div class="blueMember sub-menu-wrap">
	<a class="btn-close" href="#"> <img
		src="<c:url value="/img/gnb/btn_close.gif"/>" />
	</a> <img src="<c:url value="/img/gnb/menu_title_bmembers.gif"/>" />
	<div class="sort-navi">
		<a href="#"><img
			src="<c:url value="/img/gnb/menu_bmembers01.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_bmembers02.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_bmembers03.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_bmembers05.gif"/>" /></a>

	</div>
	<div class="sort-navi2">
		<a href="#"><img
			src="<c:url value="/img/gnb/menu_bmembers06.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_bmembers07.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_bmembers10.gif"/>" /></a> <a href="#"><img
			src="<c:url value="/img/gnb/menu_bmembers11.gif"/>" /></a>

	</div>
	<div class="sort-navi3">
		<img src="<c:url value="/img/gnb/blu_gnb_favorite_title.gif"/>" /> <a
			href="#"><img
			src="<c:url value="/img/gnb/blu_gnb_favorite_list01.gif"/>" /></a> <a
			href="#"><img
			src="<c:url value="/img/gnb/blu_gnb_favorite_list02.gif"/>" /></a>
	</div>
	<div style="clear: left"></div>
</div>
<!-- header 끝 -->
<link rel="stylesheet"
	href="<c:url value="/css/service-navigation-area.css"/>" />
<div class="service-navigation-area">
	<div class="service-navigation-area-inner">
		<div class="mainnavbtn">
			<span class="mainNavBtnSpan"></span>
			<a href="#"><img src="<c:url value="/img/main_2017/nav01_off.gif"/>" /></a>
			<span class="snai-session"> <!-- 세션없을 때 -->
			<img src="<c:url value="/img/main_2017/ico_personallyBox.gif"/>" 
				class="snai-seImg" />
			</span>
		</div>
		<div class="mainnavbtn">
			<span class="mainNavBtnSpan"></span>
			<a href="#"><img
				src="<c:url value="/img/main_2017/nav02_off.gif"/>" /></a>
		</div>
		<div class="mainnavbtn">
			<span class="mainNavBtnSpan"></span>
			<a href="#"><img
				src="<c:url value="/img/main_2017/nav03_off.gif"/>" /></a>

		</div>
		<div class="mainnavbtn">
			<span class="mainNavBtnSpan"></span>
			<a href="#"><img
				src="<c:url value="/img/main_2017/nav04_off.gif"/>" /></a>
		</div>
		<div class="mainnavbtn">
		<span class="mainNavBtnSpan"></span>
			<a href="#"><img
				src="<c:url value="/img/main_2017/nav05_off.gif"/>" /></a>
			<span class="snai-session" style="display: none"> <!-- 세션있을 때 -->
			<img src="<c:url value="/img/main_2017/ico_personallyBox.gif"/>" 
				class="snai-seImg"/>
			</span>
		</div>
		<div style="clear:left"></div>
	</div>
</div>
<div class="personally-box">
	<div class="personally-box-inner" style="display: none"> <!-- 세션없을 때 -->
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
	<div class="personally-box-inner"> <!-- 세션있을 때 -->
		<a class="per-btn-close" href="#"> 
		<img src="<c:url value="/img/main_2017/btn_close.gif"/>" />
		</a>
		<span class="PerName">이름</span>
		<a href="#" class="goNews"></a>
		<a href="#" class="goNewsTwo"></a>
		<a href="#" class="goRSS"></a>
		<a href="#" class="goPlusFriend"></a>
		<img src="<c:url value="/img/main_2017/imagePathViewLogin.jpg"/>" />	
	</div>
</div>
<!-- category-sort-select-wrap 시작 -->
<link rel="stylesheet" href="<c:url value="/css/category-sort-select-wrap.css"/>" />
<div class="category-sort-select-wrap">
	<p><img src="<c:url value="/img/global_menu/txt_global_menu04_01.gif"/>" style="vertical-align:middle;"/>&nbsp;(회원가입 및 로그인 후 이용하실 수 있습니다.)</p>
	<div class="category-sort-select">
		<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_05.gif"/>"/></a>
		<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_06.gif"/>"/></a>
		<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_07.gif"/>"/></a>
		<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_08.gif"/>"/></a>
		<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_11.gif"/>"/></a>
		<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_13.gif"/>"/></a>
		<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_14.gif"/>"/></a>
	</div>
	<div style="clear:left"></div>
</div>
<!-- div aticle -->
<link rel="stylesheet" href="<c:url value="/css/article.css"/>" />
<style type="text/css">
	.title-area {
		background:url("<c:url value="/img/global_menu/bg_title_area.gif"/>") no-repeat 385px 0px;
	}
</style>
<div id="container">
	<div id="subtitle-area">

	<img src="<c:url value="/img/global_menu/h4_global_menu04_01.gif"/>"/>
		<div class="location">
		<a class="home" href="/kr/index.do">홈</a>
		<a href="/kr/qa/qa/selectQaPaging.do">Q&amp;A</a>
		<em>FAQ</em>
		</div>
	</div>
	<div id="article">
		<div class="faq-best-stats">
			<div class="title-area">
				<img src="<c:url value="/img/global_menu/h5_global_menu04_01.gif"/>"/>
				<img src="<c:url value="/img/global_menu/h5_global_menu04_01_desc.gif"/>"/>
				<a href="#"><img src="<c:url value="/img/global_menu/btn_my_qna.gif"/>"/></a>
				<div style="clear:left"></div>
			</div>
			<div class="title-area2">
			
			</div>
			<div class="customer_inquiry_information"> 
				<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_01.gif"/>"/></a>
				<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_02.gif"/>"/></a>
				<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_03.gif"/>"/></a>
				<a href="#"><img src="<c:url value="/img/global_menu/img_global_menu04_04.gif"/>"/></a>
				<div style="clear:left"></div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/common/footer.jsp" />