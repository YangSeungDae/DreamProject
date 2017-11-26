<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="<c:url value="/img/favicon.ico"/>" />
<link rel="stylesheet" href="<c:url value="/css/header.css"/>" />
<script type="text/javascript" src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
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
	});
</script>

</head>
<body>
<div id="header-top-menu-wrapper">
	<div id="util-menuB">
		<c:if test="${not empty sessionScope._USER_ }">
		<a href="<c:url value="/member/logout"/>">
			<img src="<c:url value="/img/header/utill03_menu06.png"/>" /></a>
		<a href="<c:url value="/myPage/mypage"/>">
			<img src="<c:url value="/img/header/utill03_menu07.png"/>" /></a>	
		</c:if>
		<c:if test="${empty sessionScope._USER_}">
		<a href="<c:url value="/member/login"/>">
			<img src="<c:url value="/img/header/utill03_menu01.png"/>" /></a>
		<a href="<c:url value="/member/agreement"/>">
			<img src="<c:url value="/img/header/utill03_menu02.png"/>" /></a>
		</c:if>
		
		<a href="<c:url value="/faq/faq"/>"><img src="<c:url value="/img/header/utill03_menu03.png"/>" /></a>
		<a href="javascript:window.open('http://brand.hyundai.com/ko/main.do','_blank');"><img src="<c:url value="/img/header/utill03_menu08.png"/>" /></a>
		<a href="#"><img src="<c:url value="/img/header/utill03_menu04.png"/>" /></a>
	
	</div>
	<div id="globalnavigation">
		<a href="<c:url value="/"/>">
			<img style="margin-left: 1px" src="<c:url value="/img/gnb/logo.gif"/>" /></a>
		<a class="menu-btn" href="#">
			<img src="<c:url value="/img/gnb/gnb01_out.gif"/>" /></a>
		<a class="menu-btn" href="#">
			<img src="<c:url value="/img/gnb/gnb02_out.gif"/>" /></a>
		<a class="menu-btn" href="#">
			<img src="<c:url value="/img/gnb/gnb03_out.gif"/>" /></a>
		<a class="menu-btn" href="#">
			<img src="<c:url value="/img/gnb/gnb04_out.gif"/>" /></a>
		<a href="#">
			<img src="<c:url value="/img/gnb/gnb05.gif"/>" /></a>
		<a href="#">
			<img src="<c:url value="/img/gnb/gnb06.gif"/>" /></a>
		<a class="menu-btn" href="#">
			<img src="<c:url value="/img/gnb/gnb07_out.gif"/>" /></a>
	</div>
	<div class="sub-menu-position-control1">
		<div class="sub-menu-position-control2">
			<div class="sub-camenu sub-menu-wrap">
				<a class="btn-close" href="#">
					<img src="<c:url value="/img/gnb/btn_close.gif"/>" />
				</a>
				<div class="sub-camenu-wrap">
					<div class="car-type">
						<img src="<c:url value="/img/gnb/menu_title_passenger_on.gif"/>" class="carImgOne" />
						<img src="<c:url value="/img/gnb/menu_title_rv_off.gif"/>" class="carImgTwo" />
						<img src="<c:url value="/img/gnb/menu_title_eco_friendly_off.gif"/>" class="carImgThree" />
						<img src="<c:url value="/img/gnb/menu_title_taxi_off.gif"/>" class="carImgFour" />
						<img src="<c:url value="/img/gnb/menu_title_lcv_off.gif"/>" class="carImgFive" />
						<img src="<c:url value="/img/gnb/menu_title_truck_off.gif"/>" class="carImgSix" />
						<img src="<c:url value="/img/gnb/menu_title_bus_off.gif"/>" class="carImgSeven" />
						<img src="<c:url value="/img/gnb/menu_title_genesis.gif"/>" />
						<div style="clear: left"></div>
					</div>
					<div class="catab carOne">
						<a href="<c:url value="/car/1"/>">
							<img src="<c:url value="/img/gnb/menu_car01_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car18_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car04_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car05_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car06_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car08_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car09_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car16_0512.gif"/>" /></a>
						<div style="clear: left"></div>
					</div>
					<div class="catab carTwo">
						<a href="<c:url value="/car/2"/>"><img src="<c:url value="/img/gnb/menu_rv08_0512.gif"/>" /></a> 
						<a href="#"><img src="<c:url value="/img/gnb/menu_rv01_0512.gif"/>" /></a> 
						<a href="#"><img src="<c:url value="/img/gnb/menu_rv02_0512.gif"/>" /></a> 
						<a href="#"><img src="<c:url value="/img/gnb/menu_rv05_0512.gif"/>" /></a>
						<div style="clear: left"></div>
					</div>
					<div class="catab carThree">
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car19_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car20_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car22_0512.gif"/>" /></a>
						<a href="<c:url value="/car/3"/>">
							<img src="<c:url value="/img/gnb/menu_car07_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car17_0717.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_car15_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_rv06_0512.gif"/>" /></a>
						<div style="clear: left"></div>
					</div>
					<div class="catab carFour">
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use01_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use02_0512.gif"/>" /></a>
						<div style="clear: left"></div>
					</div>
					<div class="catab carFive">
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_rv04_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_rv07_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use04_0512.gif"/>" /></a>
						<div style="clear: left"></div>
					</div>
					<div class="catab carSix">
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use05_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use06_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use12_0512.gif"/>" /></a>
						<div style="clear: left"></div>
					</div>
					<div class="catab CarSeven">
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use14_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use17_0905.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use08_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use09_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use10_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use11_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use13_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use07_0512.gif"/>" /></a>
						<a href="#">
							<img src="<c:url value="/img/gnb/menu_c_use15_0622.gif"/>" /></a>
						<div style="clear: left"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="sub-menu-position-control1">
		<div class="sub-menu-position-control2">
			<div class="sub-navi-wrap sub-menu-wrap">
				<a class="btn-close" href="#"> <img
					src="<c:url value="/img/gnb/btn_close.gif"/>" />
				</a> <img src="<c:url value="/img/gnb/menu_title_estimation.gif"/>" />
				<div class="sort-navi">
					<a href="<c:url value="/menu/1"/>">
						<img src="<c:url value="/img/gnb/menu_estimation01.gif"/>" /></a> 
					<a href="<c:url value="/menu/2"/>">
						<img src="<c:url value="/img/gnb/menu_estimation02.gif"/>" /></a>
					<a href="<c:url value="/menu/3"/>">
						<img src="<c:url value="/img/gnb/menu_estimation03.gif"/>" /></a>
					<a href="<c:url value="/menu/4"/>">
						<img src="<c:url value="/img/gnb/menu_estimation04.gif"/>" /></a>
					<div style="clear: left"></div>
				</div>
				<div style="clear: left"></div>
			</div>
		</div>
	</div>
	<div class="sub-menu-position-control1">
		<div class="sub-menu-position-control2">
			<div class="sub-navi-wrap sub-menu-wrap">
				<a class="btn-close" href="#">
					<img src="<c:url value="/img/gnb/btn_close.gif"/>" /></a>
				<img src="<c:url value="/img/gnb/menu_title_counsel.gif"/>" />
				<div class="sort-navi">
					<a href="<c:url value="/menu/5"/>">
						<img src="<c:url value="/img/gnb/menu_counsel01.gif"/>" /></a>
					<a href="<c:url value="/menu/6"/>">
						<img src="<c:url value="/img/gnb/menu_counsel02.gif"/>" /></a>
					<a href="<c:url value="/menu/7"/>">
						<img src="<c:url value="/img/gnb/menu_counsel_03.gif"/>" /></a>
					<a href="<c:url value="/menu/8"/>">
						<img src="<c:url value="/img/gnb/menu_counsel04.gif"/>" /></a>
					<div style="clear: left"></div>
				</div>
				<div style="clear: left"></div>
			</div>
		</div>
	</div>
	<div class="sub-menu-position-control1">
		<div class="sub-menu-position-control2">		
			<div class="sub-navi-wrap sub-menu-wrap">
				<a class="btn-close" href="#">
					<img src="<c:url value="/img/gnb/btn_close.gif"/>" /></a>
				<img src="<c:url value="/img/gnb/menu_title_event.gif"/>" />
				<div class="sort-navi">
					<a href="<c:url value="/menu/9"/>"><img src="<c:url value="/img/gnb/menu_event01.gif"/>" /></a>
					<a href="<c:url value="/menu/10"/>"><img src="<c:url value="/img/gnb/menu_event02.gif"/>" /></a>
					<div style="clear: left"></div>
				</div>
				<div style="clear: left"></div>
			</div>
		</div>
	</div>
	<div class="sub-menu-position-control1">
		<div class="sub-menu-position-control2">
			<div class="blueMember sub-menu-wrap">
				<a class="btn-close" href="#">
					<img src="<c:url value="/img/gnb/btn_close.gif"/>" />
				</a>
				<img src="<c:url value="/img/gnb/menu_title_bmembers.gif"/>" />
				<div class="sort-navi">
					<a href="#">
						<img src="<c:url value="/img/gnb/menu_bmembers01.gif"/>" /></a>
					<a href="#">
						<img src="<c:url value="/img/gnb/menu_bmembers02.gif"/>" /></a>
					<a href="#">
						<img src="<c:url value="/img/gnb/menu_bmembers03.gif"/>" /></a>
					<a href="#">
						<img src="<c:url value="/img/gnb/menu_bmembers05.gif"/>" /></a>
			
				</div>
				<div class="sort-navi2">
					<a href="#">
						<img src="<c:url value="/img/gnb/menu_bmembers06.gif"/>" /></a>
					<a href="#">
						<img src="<c:url value="/img/gnb/menu_bmembers07.gif"/>" /></a>
					<a href="#">
						<img src="<c:url value="/img/gnb/menu_bmembers10.gif"/>" /></a>
					<a href="#">
						<img src="<c:url value="/img/gnb/menu_bmembers11.gif"/>" /></a>
			
				</div>
				<div class="sort-navi3">
					<img src="<c:url value="/img/gnb/blu_gnb_favorite_title.gif"/>" />
					<a href="#">
						<img src="<c:url value="/img/gnb/blu_gnb_favorite_list01.gif"/>" /></a>
					<a href="#">
						<img
						src="<c:url value="/img/gnb/blu_gnb_favorite_list02.gif"/>" /></a>
				</div>
				<div style="clear: left"></div>
			</div>
		</div>
	</div>
	<!-- header 끝 -->
</div>