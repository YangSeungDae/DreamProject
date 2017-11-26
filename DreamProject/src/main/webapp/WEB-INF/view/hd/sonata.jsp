<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/common/header_black.jsp" />
<link rel="stylesheet" href="<c:url value='/css/sonata-style.css' />" />
<script type="text/javascript" src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/dream_slider.js"/>"></script>
<script type="text/javascript">

$().ready(function(){
	
	$(".rolling_sonata ul").each(function(idx, obj) {
		initSlideListTransition($(obj));
	});
	//slideListTransition($(".rolling_kona1 ul"), 1, 5000, function(){}, function(){});
	$(".prev-btn img").click(function(){
		slideListTransition($(this).closest("div").find("ul"), +1, 3000, function(){}, function(){});
	});
	$(".next-btn img").click(function(){
		slideListTransition($(this).closest("div").find("ul"), -1, 3000, function(){}, function(){});
	});
	
	$(".moveBtn").click(function(e) {
		var movePage = "#showroom-cont-" + $(this).data("page");
		
		var topPosition = $("#showroom-cont-" + $(this).data("page")).offset().top;
		
		$("html, " + movePage).stop().animate({scrollTop : topPosition + "px"});
	});
});

function popupOpen(){

	var popUrl = "https://www.facebook.com/login.php?skip_api_login=1&api_key=140586622674265&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fv2.5%2Fdialog%2Fshare%3Fredirect_uri%3Dhttp%253A%252F%252Fs7.addthis.com%252Fstatic%252Fthankyou.html%26display%3Dpopup%26href%3Dhttp%253A%252F%252Fwww.hyundai.com%252Fkr%252Fshowroom.do%253FcarCd1%253DRD005%2526WT.ac%253Dgnb_carkind_accent%2523a%26title%3D%25EC%2597%2591%25EC%2584%25BC%25ED%258A%25B8%2B%25EA%25B3%25B5%25EC%258B%259D%2B%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580%2B%257C%2B%25ED%2598%2584%25EB%258C%2580%25EC%259E%2590%25EB%258F%2599%25EC%25B0%25A8%26description%26picture%26client_id%3D140586622674265%26ret%3Dlogin&cancel_url=http%3A%2F%2Fs7.addthis.com%2Fstatic%2Fthankyou.html%3Ferror_code%3D4201%26error_message%3DUser%2Bcanceled%2Bthe%2BDialog%2Bflow%23_%3D_&display=popup&locale=ko_KR";	//팝업창에 출력될 페이지 URL

	var popOption = "width=400, height=400, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);

}

function popupOpen1(){

	var popUrl = "https://twitter.com/intent/tweet?text=%EC%97%91%EC%84%BC%ED%8A%B8%20%EA%B3%B5%EC%8B%9D%20%ED%8E%98%EC%9D%B4%EC%A7%80%20%7C%20%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A8&url=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent%23a&related=";	//팝업창에 출력될 페이지 URL

	var popOption = "width=400, height=400, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);

}

function popupOpen2(){

	var popUrl = "https://story.kakao.com/s/login?continue=https%3A%2F%2Fstory.kakao.com%2Fshare%3Furl%3Dhttp%253A%252F%252Fwww.hyundai.com%252Fkr%252Fshowroom.do%253FcarCd1%253DRD005%2526WT.ac%253Dgnb_carkind_accent%2523a&display=popup&referrer=http://www.addthis.com/bookmark.php?v=300&winname=addthis&pub=ra-58a563fba1b0c343&source=men-300&lng=ko&s=kakao&url=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent%23a&title=%EC%97%91%EC%84%BC%ED%8A%B8%20%EA%B3%B5%EC%8B%9D%20%ED%8E%98%EC%9D%B4%EC%A7%80%20%7C%20%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A8&ate=AT-ra-58a563fba1b0c343/-/-/59e557523450e118/7&frommenu=1&uid=59a61694d017df69&ct=1&uct=1&pre=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent&tt=0&captcha_provider=recaptcha2&pro=0 ";
	
	var popOption = "width=400, height=400, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);
}
	
function popupOpen3(){

	var popUrl = " https://plus.google.com/share?url=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent%23a&t=%EC%97%91%EC%84%BC%ED%8A%B8+%EA%B3%B5%EC%8B%9D+%ED%8E%98%EC%9D%B4%EC%A7%80+%7C+%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A8 ";
	
	var popOption = "width=400, height=400, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);

}

$( function() {

	$(".panel").children("img").eq(0).attr("src", "<c:url value='/img/sonata/tab_001.png'/>");
	
	$(".panel").click(function(e) {
		var paNum = $(this).data("panel");
		
		for (var i = 0; i < 7; i++) {
			$(".panel").children("img").eq(i).attr("src", "<c:url value='/img/sonata/tab0"+(i+1)+".png'/>");
		}
		
		$(this).children("img").attr("src", "<c:url value='/img/sonata/tab_00"+paNum+".png'/>");
		$(this).closest(".graph").next(".graph_panel").find(".item").find("img").attr("src", "<c:url value='/img/sonata/tab0"+paNum+"_content.png'/>")
	});
	
});


$(function() {
	var isClick = false;
	$("#detail_1_Btn").click(function (){ 
		if (!isClick) {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
			$(".sonata1").slideToggle("slow"); 
			$("#detail_1_img").attr("src", "<c:url value='/img/sonata/경쟁성비교1.png'/>");
			$(".snstool").css("display", "none");
		}
		else {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
			$(".sonata1").slideToggle("slow");
			$("#detail_1_img").attr("src", "<c:url value='/img/sonata/경쟁성비교.png'/>");
			$(".snstool").css("display", "inline-block");
		}
	});		
});
$(function() {
	var isClick = false;
	$("#detail_2_Btn").click(function (){ 
		if (!isClick) {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
			$(".sonata2").slideToggle("slow"); 
			$("#detail_2_img").attr("src", "<c:url value='/img/sonata/hybrid1.png'/>");
			$(".snstool2").css("display", "none");
		}
		else {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
			$(".sonata2").slideToggle("slow");
			$("#detail_2_img").attr("src", "<c:url value='/img/sonata/hybrid.png'/>");
			$(".snstool2").css("display", "inline-block");
		}
	});		
});
$(function() {
	var isClick = false;
	$("#detail_3_Btn").click(function (){ 
		if (!isClick) {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
			$(".sonata3").slideToggle("slow"); 
			$("#detail_3_img").attr("src", "<c:url value='/img/sonata/design1.png'/>");
			$(".snstool3").css("display", "none");
		}
		else {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
			$(".sonata3").slideToggle("slow");
			$("#detail_3_img").attr("src", "<c:url value='/img/sonata/design.png'/>");
			$(".snstool3").css("display", "inline-block");
		}
	});		
});
$(function() {
	var isClick = false;
	$("#detail_4_Btn").click(function (){ 
		if (!isClick) {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
			$(".sonata4").slideToggle("slow"); 
			$("#detail_4_img").attr("src", "<c:url value='/img/sonata/tech1.png'/>");
			$(".snstool4").css("display", "none");
		}
		else {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
			$(".sonata4").slideToggle("slow");
			$("#detail_4_img").attr("src", "<c:url value='/img/sonata/tech.png'/>");
			$(".snstool4").css("display", "inline-block");
		}
	});		
});
$(function() {
	var isClick = false;
	$("#detail_5_Btn").click(function (){ 
		if (!isClick) {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
			$(".sonata5").slideToggle("slow"); 
			$("#detail_5_img").attr("src", "<c:url value='/img/sonata/conv1.png'/>");
			$(".snstool5").css("display", "none");
		}
		else {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
			$(".sonata5").slideToggle("slow");
			$("#detail_5_img").attr("src", "<c:url value='/img/sonata/conv.png'/>");
			$(".snstool5").css("display", "inline-block");
		}
	});		
});
$(function() {
	var isClick = false;
	$("#detail_6_Btn").click(function (){ 
		if (!isClick) {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
			$(".sonata6").slideToggle("slow"); 
			$("#detail_6_img").attr("src", "<c:url value='/img/sonata/safe1.png'/>");
			$(".snstool6").css("display", "none");
		}
		else {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
			$(".sonata6").slideToggle("slow");
			$("#detail_6_img").attr("src", "<c:url value='/img/sonata/safe.png'/>");
			$(".snstool6").css("display", "inline-block");
		}
	});		
});
$(function() {
	var isClick = false;
	$("#detail_7_Btn").click(function (){ 
		if (!isClick) {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
			$(".sonata7").slideToggle("slow"); 
			$("#detail_7_img").attr("src", "<c:url value='/img/hd/price1.png'/>");
		}
		else {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
			$(".sonata7").slideToggle("slow");
			$("#detail_7_img").attr("src", "<c:url value='/img/price.png'/>");
		}
	});		
});
$(function() {
	var isClick = false;
	$("#detail_8_Btn").click(function (){ 
		if (!isClick) {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
			$(".sonata8").slideToggle("slow"); 
			$("#detail_8_img").attr("src", "<c:url value='/img/hd/제원1.png'/>");
			
		}
		else {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
			$(".sonata8").slideToggle("slow"); 
			$("#detail_8_img").attr("src", "<c:url value='/img/제원.png'/>");
			
		}
	});
}); 
$(function() {
	var isClick = false;
	$("#detail_9_Btn").click(function (){ 
		if (!isClick) {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
			$(".sonata9").slideToggle("slow"); 
			$("#detail_9_img").attr("src", "<c:url value='/img/hd/구매가이드1.png'/>");
			
		}
		else {
			isClick = !isClick;
			$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
			$(".sonata9").slideToggle("slow"); 
			$("#detail_9_img").attr("src", "<c:url value='/img/구애가이드.png'/>");
			
		}
	});
});
$(function() {
	var width = $(window).width();
	
	$(".mainHeader").css({
		"width": width + 10
	});
	$(".mask").css({
		"width": (width + 10) + "px"
	});
	$(".main-spot-item-background").css({
		"width": (width + 10) + "px"
	});
});

$(window).resize(function() {
	var width = $(window).width();
	
	$(".mainHeader").css({
		"width": width + 10
	});
	$(".mask").css({
		"width": (width + 10) + "px"
	});
	$(".main-spot-item-background").css({
		"width": (width + 10) + "px"
	});
});


</script>
<div style="position:absolute;top:0px;">
	<div class="mask" > 
		<div class="mainHeader" style="height: 660px; ">
			<div class="main-spot-item-background" style="background-image: url('<c:url value='/img/accent/show_room/bg_visual.jpg'/>');
			background-position: 50% 0; min-width: 930px; height: 660px; ">
				<div class="main-spot-item-wrapper" style="height: 660px; width: 930px; margin: 0 auto 0; position: relative;"> 			  
						<p class="main-spot-item-carfont" style="position: absolute; left: 23px; top: 140px;">
							<img src="<c:url value='/img/accent/show_room/txt_visual.png'/>"/>
						</p>
						<div class="main-spot-item-img" style="position: absolute; right: 30px; bottom: 32px;">  
							<img src="<c:url value='/img/accent/show_room/img_visual_car.png'/>">
						</div>
				</div>
			</div>	  
		</div> 
			
			  
		
		<div style="width: 100%; min-width: 930px; position: relative; height: 101px; 
		background-image: url('<c:url value='/img/accent/show_room/back.png'/>') ; ">
		
			<div style="position: relative; padding:0 25px;width:930px; margin: auto; height: 101px;">
				<div class="carbrand" style="position: relative; height: 62px;">
					<div><img style="border: 0; vertical-align: top" src="<c:url value='/img/accent/show_room/sonatahybrid.png'/>"></div>
				</div>
				<ul class="car_spec" style="    width: 100%;">
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="893" href="javascript:void(0)"><img style="border: 0; vertical-align: top;" src="<c:url value='/img/accent/show_room/경쟁성비교.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="894" href="javascript:void(0)"><img style="border: 0; vertical-align: top;" src="<c:url value='/img/accent/show_room/sonata.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="895" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/design.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="896" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/technology.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="897" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/convenience.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="898" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/safety.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="899" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/가격.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="900" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/제원.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="901" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/구매가이드.gif'/>"/></a></li>
				</ul>
			</div>
			
		</div>
	</div>

	<div class="sonata_main">
	<div class="quick_menu">
		<h4><img src="<c:url value='/img/quickmenu.png'/>" alt="QUICKMENU"></h4>
   		<a href="http://www.hyundai.com/kr/tdn/index.do"><img src="<c:url value='/img/시승신청.png'/>" alt="시승센터" class="menu"></a>
		<a href="https://logon.hyundai.com/kr/quotation/main.do?carcode=RD005"><img src=<c:url value='/img/견적내기.png'/>  alt="견적내기" class="menu"></a>
		<a href="http://www.hyundai.com/kr/estimation/compare.do?carCd=RD005"><img src=<c:url value='/img/경쟁차비교.png'/> alt="경쟁차비교" class="menu"></a>
		<a href="https://logon.hyundai.com/kr/ctlg/req/selectCtlgPaging.do?carSort=RD&carCd=RD005"><img src=<c:url value='/img/카탈로그다운로드.png'/> alt="카탈로그신청" class="menu"></a>
		<a href="https://logon.hyundai.com/kr/pur/purMgmtFrontView.do"><img src="<c:url value='/img/구매상담.png'/>"  alt="구매상담2" class="menu"></a>
		<div class="top-button">
		<a href="#"><img src=<c:url value='/img/btn_top.png'/> alt="top"></a>
		</div>
	</div>
		
	<div class="sonata_submain" style="position:relative;">
		<div class="sonataDiv" id="showroom-cont-893">
			<h2 style="display: inline-block;"><img id="detail_1_img" src="<c:url value='/img/sonata/경쟁성비교.png'/>"/></h2>
			<div style="display: inline-block; position:absolute; right:0px;">
			<span id="detail_1_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
			<div class="snstool">
				<a href="javascript:popupOpen();" >
					<img src="<c:url value='/img/miniface.PNG'/>"/>
		    	</a>
		    
		   		 <a href="javascript:popupOpen1();" >
					<img src="<c:url value='/img/minitwi.PNG'/>"/>
		    	</a>
		    
		    	<a href="javascript:popupOpen2();" >
					<img src="<c:url value='/img/minikakao.PNG'/>"/>
		  	 	</a>
		    	
		   		 <a href="javascript:popupOpen3();" >
					<img src="<c:url value='/img/minigg.PNG'/>"/>
		    	</a>
			</div>
			</div>

			<div class="sonata1" >
				<span><img src="<c:url value='/img/sonata/내용1.png'/>" style="margin-bottom: 20px; margin-top: 20px;"/></span>				
					<div class="sonata_detail">
						<div class="graph">				
							<c:forEach var="panelList" begin="1" end="7">
								<div class="item">
									<a class="panel" data-panel="${panelList }"><img src="<c:url value='/img/sonata/tab0${panelList }.png'/>"/></a>
								</div>
							</c:forEach>
						</div>
						<div class="graph_panel">
							<div class="item">
								<img src="<c:url value='/img/sonata/tab01_content.png'/>"/>
							</div>							
						</div>
					</div>
			</div>
		</div>
		
		<!--  sonata Hybrid -->
		
		<div class="sonataDiv" id="showroom-cont-894">
			<h2 style="display: inline-block;"><img id="detail_2_img" src="<c:url value='/img/sonata/hybrid.png'/>"/></h2>
			<div style="display: inline-block; position:absolute; right:0px;">
			<span id="detail_2_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
			<div class="snstool2">
				<a href="javascript:popupOpen();" >
					<img src="<c:url value='/img/miniface.PNG'/>"/>
		    	</a>
		    
		   		 <a href="javascript:popupOpen1();" >
					<img src="<c:url value='/img/minitwi.PNG'/>"/>
		    	</a>
		    
		    	<a href="javascript:popupOpen2();" >
					<img src="<c:url value='/img/minikakao.PNG'/>"/>
		  	 	</a>
		    	
		   		 <a href="javascript:popupOpen3();" >
					<img src="<c:url value='/img/minigg.PNG'/>"/>
		    	</a>
			</div>
			</div>
			<div class="sonata2">
			<img src="<c:url value='/img/sonata/hybrid2.jpg'/>">
			</div>
			</div>
			
			<!--  Design -->
			
			<div class="sonataDiv" id="showroom-cont-895">
			<h2 style="display: inline-block;"><img id="detail_3_img" src="<c:url value='/img/sonata/design.png'/>"/></h2>
			<div style="display: inline-block; position:absolute; right:0px;">
			<span id="detail_3_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
			<div class="snstool3">
				<a href="javascript:popupOpen();" >
					<img src="<c:url value='/img/miniface.PNG'/>"/>
		    	</a>
		    
		   		 <a href="javascript:popupOpen1();" >
					<img src="<c:url value='/img/minitwi.PNG'/>"/>
		    	</a>
		    
		    	<a href="javascript:popupOpen2();" >
					<img src="<c:url value='/img/minikakao.PNG'/>"/>
		  	 	</a>
		    	
		   		 <a href="javascript:popupOpen3();" >
					<img src="<c:url value='/img/minigg.PNG'/>"/>
		    	</a>
			</div>
			</div>
			<div class="sonata3">
				<img src="<c:url value='/img/sonata/design2.jpg'/>">
				<div class="slide" style="position: relative; margin-top: 50px;">
				<div class="rolling_sonata" >
					<ul class= "r_sonata">
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/design3.jpg'/>"/>
						</li>		
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/design4.jpg'/>"/>
						</li>		
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/design5.jpg'/>"/>
						</li>		
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/design6.jpg'/>"/>
						</li>		
					</ul>
	    		</div>
            		<button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>   
					<button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
	    		</div>
			</div>
		</div>
		
		<!-- Technology -->
			<div class="sonataDiv" id="showroom-cont-896">
			<h2 style="display: inline-block;"><img id="detail_4_img" src="<c:url value='/img/sonata/tech.png'/>"/></h2>
			<div style="display: inline-block; position:absolute; right:0px;">
			<span id="detail_4_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
			<div class="snstool4">
				<a href="javascript:popupOpen();" >
					<img src="<c:url value='/img/miniface.PNG'/>"/>
		    	</a>
		    
		   		 <a href="javascript:popupOpen1();" >
					<img src="<c:url value='/img/minitwi.PNG'/>"/>
		    	</a>
		    
		    	<a href="javascript:popupOpen2();" >
					<img src="<c:url value='/img/minikakao.PNG'/>"/>
		  	 	</a>
		    	
		   		 <a href="javascript:popupOpen3();" >
					<img src="<c:url value='/img/minigg.PNG'/>"/>
		    	</a>
			</div>
			</div>
			<div class="sonata4">
				<img src="<c:url value='/img/sonata/tech2.jpg'/>"/>
			</div>
		</div>
		
		<!-- convience -->
		<div class="sonataDiv" id="showroom-cont-897">
			<h2 style="display: inline-block;"><img id="detail_5_img" src="<c:url value='/img/sonata/conv.png'/>"/></h2>
			<div style="display: inline-block; position:absolute; right:0px;">
			<span id="detail_5_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
			<div class="snstool5">
				<a href="javascript:popupOpen();" >
					<img src="<c:url value='/img/miniface.PNG'/>"/>
		    	</a>
		    
		   		 <a href="javascript:popupOpen1();" >
					<img src="<c:url value='/img/minitwi.PNG'/>"/>
		    	</a>
		    
		    	<a href="javascript:popupOpen2();" >
					<img src="<c:url value='/img/minikakao.PNG'/>"/>
		  	 	</a>
		    	
		   		 <a href="javascript:popupOpen3();" >
					<img src="<c:url value='/img/minigg.PNG'/>"/>
		    	</a>
			</div>
			</div>
			<div class="sonata5">
			<img src="<c:url value='/img/sonata/conv2.jpg'/>"/>
			</div>
			</div>
			
			<!-- safety -->
		<div class="sonataDiv" id="showroom-cont-898">
			<h2 style="display: inline-block;"><img id="detail_6_img" src="<c:url value='/img/sonata/safe.png'/>"/></h2>
			<div style="display: inline-block; position:absolute; right:0px;">
			<span id="detail_6_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
			<div class="snstool6">
				<a href="javascript:popupOpen();" >
					<img src="<c:url value='/img/miniface.PNG'/>"/>
		    	</a>
		    
		   		 <a href="javascript:popupOpen1();" >
					<img src="<c:url value='/img/minitwi.PNG'/>"/>
		    	</a>
		    
		    	<a href="javascript:popupOpen2();" >
					<img src="<c:url value='/img/minikakao.PNG'/>"/>
		  	 	</a>
		    	
		   		 <a href="javascript:popupOpen3();" >
					<img src="<c:url value='/img/minigg.PNG'/>"/>
		    	</a>
			</div>
			</div>
			<div class="sonata6">
				<img src="<c:url value='/img/sonata/safe2.jpg'/>"/>
				<div class="slide" style="position: relative;" margin-top: 50px;>
				<div class="rolling_sonata" >
					<ul class= "r_sonata">
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/safe3.jpg'/>"/>
						</li>		
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/safe4.jpg'/>"/>
						</li>		
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/safe5.jpg'/>"/>
						</li>			
					</ul>
					<button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
            		<button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>   
	    		</div>
	    		</div>
	    		<img src="<c:url value='/img/sonata/safe6.jpg'/>"/>
				<div class="slide" style="position: relative;">
				<div class="rolling_sonata" >
					<ul class= "r_sonata">
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/safe7.jpg'/>"/>
						</li>		
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/safe8.jpg'/>"/>
						</li>		
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/safe9.jpg'/>"/>
						</li>			
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/safe10.jpg'/>"/>
						</li>			
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/safe11.jpg'/>"/>
						</li>			
						<li><!-- 
						 --><img src="<c:url value='/img/sonata/safe12.jpg'/>"/>
						</li>			
					</ul>
					<button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
            		<button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>   
	    		</div>
	    		</div>			
			</div>
			</div>
			
			<!-- 가격 -->
			
			<div style="width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;" ></div>	
				<div class="sonataDiv" id="showroom-cont-899">
				<h2 style="display: inline-block;"><img id="detail_7_img" src="<c:url value='/img/price.png'/>"/></h2>
				<div style="display: inline-block; float: right;">
					<span id="detail_7_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
				</div>
				<div class="sonata7">
				
		 			2017년 10월 1일 기준 (단위 :0원)
		 			<div class="pricewrapper">
		 				<div class="price">
		 			
		 					<div class="content" >
					 			<ul class="carlist" style="margin-top: 17px;">
									<li>
										<a href="#" style="color: #6cadf4;">SONATA hybrid</a>
									</li>
								</ul>
							</div>
					
				
							<div class="Btn">
								<a href="#">
									<img src="<c:url value='/img/btn_price01.gif'/>" alt="트림비교">
								</a>
								<a href="https://logon.hyundai.com/kr/quotation/main.do?carcode=RD005">
									<img src= "<c:url value='/img/btn_price02.gif'/>" alt="견적내기">
								</a>
								<a href="https://logon.hyundai.com/kr/ctlg/req/selectCtlgPaging.do?carSort=RD&carCd=RD005">
									<img src= "<c:url value='/img/btn_price03.gif'/>" alt="카탈로그 다운로드">
								</a>
								<a href="#">
									<img src= "<c:url value='/img/btn_price04.gif'/>" alt="가격표 다운로드">
								</a>
								<a href="http://www.hyundai.com/kr/blu/selectDlExpdList.do?carCd=RD005">
									<img src= "<c:url value='/img/btn_price05.gif'/>" alt="취급설명서 다운로드">
								</a>
							</div> 
					
							<div class="list-wrapper">
								<ul class="list-type01">
									<li class="section">
										<span class="section1"></span><b>가격</b>
										<ul class="list-type02">
											<li>&middot; 세제 혜택 적용 후 판매가격 : 개별소비세 및 교육세 감면 기준임(130만원 한도)</li>
											<li>&middot;세제 혜택 적용 후 가격은 판매조건 및 선택품목에 따라 달라질 수 있음</li>
											<li>&middot;선택 품목의 가격은 세제혜택(개별소비세 및 교육세 감면) 적용 전 가격임</li>
											<li>&middot;화이트 크림(WC9) 외장 컬러 선택 시 컬러 대금 추가됨(8만원)</li>								
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>7인치 디스플레이 오디오</b>
										<ul class="list-type02">
											<li>&middot;고해상도 7인치 터치 스크린, 라디오, MP3</li>
											<li>&middot;폰 커넥티비티 기능 적용(Apple CarPlay, 미러링크)</li>
											<li>&middot;스티어링 휠 음성인식 버튼은 Apple CarPlay 연동용 버튼임</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>8인치 내비게이션</b>
										<ul class="list-type02">
											<li>&middot; 고해상도 8인치 터치 스크린, 지상파 DMB, 라디오, MP3재생, TPEG 서비스(교통정보 및 위험지역 알림 기능), 3D 지도, 32GB SD카드, 다국어 지원(한국어/영어)</li>
											<li>&middot;지상파 DMB는 320X240 해상도를 지원하는 사양으로, DMB 사업자가 고화질 DMB(해상도 1,280X720) 방송으로 전환 등 송출방식 변경 또는 방송정책에 따라 지상파
											<br/> DMB 수신이 불가할 수 있음</li>
											<li>&middot;폰 커넥티비티 기능 적용(Apple CarPlay, 미러링크)</li>
											<li>&middot;블루링크(텔레매틱스) 선택 시 내장형 음성인식, USB 동영상 재생 기능 추가 적용</li>
											<li>&middot;블루링크(텔레매틱스) 미적용 시 스티어링 휠 음성인식 버튼은 Apple CarPlay 연동용 버튼임</li>
										
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>멀티미디어</b>
										<ul class="list-type02">
											<li> &middot;  일반 사운드 시스템(7스피커) : 서브 우퍼, 외장앰프 포함</li>
											<li> &middot;JBL 프리미엄 사운드 시스템(8스피커) : 센터스피커(1개), 미드레인지 스피커(2개), 프런트 도어 스피커(2개), 리어 도어 스피커(2개), 서브우퍼(1개), 외장앰프</li>
											<li> &middot;CDP : 센터콘솔 암레스트 내부에 위치</li>
											<li> &middot;AUX & USB 단자 : iPod 단자 겸용</li>
											<li> &middot;블루투스 핸즈프리 : 오디오 스트리밍 기능 포함</li>
											<li> &middot;Apple CarPlay : 아이폰5 이상 작동</li>
											<li> &middot;미러링크 : 갤럭시 S8, 갤럭시 S7/S7 Edge, 갤럭시 S6/S6 Edge/S6 Edge Plus, 갤럭시 S5, 갤럭시 노트 4/5, 갤럭시 A5(2016)/A7(2016)/A8(2016) 限 작동</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>블루링크(텔레매틱스)</b>
										<ul class="list-type02">
											<li> &middot; 자세한 사항은 블루링크 홈페이지(http://bluelink.hyundai.com) 참조 바랍니다.</li>
											<li> &middot;기본서비스(2년 무료제공) : 스마트 컨트롤(원격공조제어, 주차위치확인, 목적지전송, 원격문열림/문잠김, 차량 상태확인), 차량 
											<br/>관리(차량진단, 운행정보, 정기점검 리포트), 안전보안(SOS긴급출동, 에어백전개 자동통보, 도난추적, 도난경보 알림), 드라이빙(블루링크 길안내, 인터넷 목적지 검색)</li>
											<li> &middot;블루링크 부가서비스(뉴 컨시어지) 별도 이용 가능(유료)</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>기타</b>
										<ul class="list-type02">
											<li>&middot;  천연가죽 시트에는 부분적으로 인조가죽 및 기타 재질이 포함되어 있음</li>
											<li>&middot;하이패스 시스템에는 장애인 통행료 자동할인 기능이 없음</li>
											<li>&middot;운전석 자세 메모리 시스템(IMS) : 운전석 시트/아웃사이드 미러/클러스터 밝기 메모리 및 후진 시 아웃사이드 미러 하향조정 기능 포함</li>
											<li>&middot;차체 자세 제어 장치(ESC) : ABS, EBD, BAS 기능 포함</li>
											<li>&middot;파노라마 썬루프 선택 시 유광 가니쉬 / LED 룸램프 적용</li>
											<li>&middot;스마트폰 무선충전 시스템은 모든 도어를 닫은 후 작동 가능</li>
											<li>&middot;주행 보조 사양(AEB : 자동 긴급 제동 시스템 등)은 위험도가 높은 특정 주행상황에서 운전자를 보조
											<br/>* 상세 작동 조건은 취급 설명서 참조</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>컬러 운영</b>
										<ul class="list-type02">
											<li>&middot;블랙 인테리어 전트림 기본 적용</li>
											<li>&middot;하버시티(RC9) 외장컬러 선택 가능 모델 : 하이브리드</li>
										</ul>
									</li>
								</ul>
							</div> 	
							<img src="<c:url value='/img/sonata/price.jpg'/>"/>
						</div>
					</div>
				</div>	
			</div>
			
			<!-- 제원 -->
			<div id="showroom-cont-900">
				<h2 style="display: inline-block;">
					<img id="detail_8_img" src="<c:url value='/img/제원.png'/>" />
				</h2>

				<div style="display: inline-block; float: right;">

					<span id="detail_8_Btn"><img
						src="<c:url value='/img/hd/down.PNG'/>" /></span>
				</div>
				<div class="sonata8">

					<div class="sonata_detail">
						<img src="<c:url value='/img/sonata/제원.gif'/>" />
					</div>
					<div class="detail-wrapper">
						<table class="detail">
							<thead>
								<tr class="odd">
									<th scope="col">구분</th>
									<th scope="col">2.0 하이브리드</th>
								</tr>
							</thead>

							<tbody style="text-align: center;">
								<tr class="odd">
									<td>전장 (mm)</td>
									<td>4,855</td>
								</tr>
								<tr class="odd">
									<td>전폭 (mm)</td>
									<td>1,865</td>
								</tr>
								<tr class="odd">
									<td>전고 (mm)</td>
									<td>1,475</td>
								</tr>
								<tr class="odd">
									<td>축간거리 (mm)</td>
									<td>2,805</td>
								</tr>
								<tr class="odd">
									<td>윤거 전 (mm)</td>
									<td>1,614 (16"), 1,602 (17")</td>
								</tr>
								<tr class="odd">
									<td>윤거 후 (mm)</td>
									<td>1,621(16"), 1,609(17")</td>
								</tr>
								<tr class="odd">
									<td>엔진형식</td>
									<td>누우 (ν) 2.0 GDi</td>
								</tr>
								<tr class="odd">
									<td>배기량 (cc)</td>
									<td>1,999</td>
								</tr>
								<tr class="odd">
									<td>최고출력 (PS/rpm)</td>
									<td>156/6,000</td>
								</tr>
								<tr class="odd">
									<td>최대토크 (kg.m/rpm)</td>
									<td>19.3/5,000</td>
								</tr>
								<tr class="odd">
									<td>연료탱크용량 (ℓ)</td>
									<td>60</td>
								</tr>
								<tr class="odd">
									<td>모터형식</td>
									<td>영구자석형 동기모터</td>
								</tr>
								<tr class="odd">
									<td>모터 최고출력 (PS/rpm)</td>
									<td>51(38kW)/1,770~2,000</td>
								</tr>
								<tr class="odd">
									<td>모터 최대토크 (kg.m/rpm)</td>
									<td>20.9(205Nm)/1,770</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div>
						<div class="detail-wrapper">
							<table class="detail">
								<thead>
									<tr class="odd">
										<th scope="col" colspan="2">정부공인 표준연비 및 등급</th>
									</tr>
								</thead>
								<tbody style="text-align: center;">
									<tr class="odd">
										<th rowspan="2" style="border-right: 0;">Accent</th>
										<td>2.0 하이브리드(자동6단 - 16" 타이어)</td>
										<td class="left last">정부 신고 연비 - 복합 18.0km/ℓ(도심 : 17.7km/ℓ, 고속도로 : 18.3km/ℓ)<br /> 
											배기량 : 1,999cc I 공차중량 : 1,585kg I 타이어 16inch I CO2 배출량 : 88g/km I 자동6단 (1등급)
										</td>
									</tr>
									<tr class="odd">
										<td>2.0 하이브리드(자동6단 - 17" 타이어)</td>
										<td class="left last">정부 신고 연비 - 복합 17.4km/ℓ(도심 : 17.0km/ℓ, 고속도로 : 17.9km/ℓ)<br /> 
										배기량 : 1,999cc I 공차중량 : 1,595kg I 타이어 17inch I CO2 배출량 : 91g/km I 자동6단 (1등급)
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="detail-wrapper">
							<table class="detail">
								<thead>
									<tr class="odd">
										<th scope="col" colspan="5">타이어 효율 등급</th>
									</tr>
									<tr class="odd">
										<th scope="col">타이어 제조사</th>
										<th scope="col">타이어 모델명</th>
										<th scope="col">타이어 규격</th>
										<th scope="col">회전저항(계수) 등급(RRC)</th>
										<th scope="col">젖은 노면 제동력 지수 등급(G)</th>
									</tr>
								</thead>
								<tbody>
									<tr class="odd">
										<td>Kumho</td>
										<td>Solus TA31</td>
										<td>205/65R16 95H</td>
										<td>3</td>
										<td class="last">3</td>
									</tr>
									<tr class="odd">
										<td>Nexen</td>
										<td>N'PRIZ AH8</td>
										<td>215/55R17 94V</td>
										<td>3</td>
										<td class="last">3</td>
									</tr>
									<tr class="odd">
										<td>Hankook</td>
										<td>kinergy GT</td>
										<td>205/65R16 95H</td>
										<td>3</td>
										<td class="last">3</td>
									</tr>
									<tr class="odd">
										<td>Hankook</td>
										<td>kinergy GT</td>
										<td>215/55R17 94V</td>
										<td>3</td>
										<td class="last">3</td>
									</tr>
								</tbody>

							</table>
						</div>
						<div class="information">
							<ul class="list-type01">
								<li><span class="section1"></span> 위 연비는 표준모드에 의한 연비로서
									도로상태ㆍ운전방법ㆍ차량적재ㆍ정비상태 및 외기온도에 따라 실 주행연비와 차이가 있습니다.</li>
								<li><span class="section1"></span> 위 쇼룸의 사진에는 선택사양이 적용된 경우가
									있으므로 실제 구입차량과는 다른 점이 있을 수도 있습니다.</li>
								<li><span class="section1"></span> 위 쇼룸에 표시된 사양, 컬러 및 제원은
									차의 외관 및 성능 개선을 위해 변경될 수 있습니다.</li>
								<li><span class="section1"></span> 상기 엔진성능은 NET수치임.
									“NET수치”란 국토교통부에서 97년부터 적용을 요구한 법규사항이며 배기가스의 저항을 감안한 신측정법으로 기존의
									GROSS 출력수치와 대비 할 <br /> 때 약간의 수치저하가 발생할 수 있습니다.</li>
								<li><span class="section1"></span> 본 쇼룸의 차량컬러는 실제 차량의 컬러와는
									다소 차이가 있습니다.</li>
								<li><span class="section1"></span> 본 쇼룸의 이미지는 고객의 이해를 돕기위해
									연출된 것으로 실제 차량과 다를 수 있습니다.</li>
								<li><span class="section1"></span> 본 쇼룸 상의 사양은 모델에 따라 다르게
									적용되며, 옵션 사양이 포함되어 있습니다. 모델별 자세한 사양은 해당월의 가격표를 참고하시기 바랍니다.</li>
								<li><span class="section1"></span> 운전교습용 차량은 일부 사양이 다르게 운영될
									수 있습니다. 자세한 사양은 해당월의 가격표를 참고하시기 바랍니다.</li>
								<li style="color: #3576BC;"><span class="section1"></span>
									현대자동차는 지점/대리점의 카마스터를 통해서만 판매하며, 전국 어느 곳에서나 같은 제품 같은 가격으로 바른 거래를
									실천하고 있습니다</li>
								<li style="color: #3576BC;"><span class="section1"></span>
									당사에서 지정하는 순정품 (엔진오일, 변속기오일 등)을 사용하지 않거나 불량 연료를 사용했을 경우에는 차량에
									치명적인 손상을 줄 수 있습니다</li>
								<li style="color: #3576BC;"><span class="section1"></span>
									쇼룸에 수록된 신기술 및 신사양에 대한 자세한 내용은 취급설명서를 참조하시기 바랍니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
<!--  가격 -->
			<div class="last_sonata" id="showroom-cont-901">
	    			<h2 style="display: inline-block;"><img id="detail_9_img" src="<c:url value='/img/구매가이드.png'/>"/></h2>
	    			<div style="display: inline-block; float: right;">
	    			<span id="detail_9_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
	    			</div>
				<div class="sonata9">
	    			<div class="purchase-guide">
           				 <div class="odd">
                			<h4><img src="<c:url value='/img/견적.gif'/>" alt="견적"></h4>
                			<h5 class="link-title"><a href="#">견적내기<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
               			 	<h5 class="link-title"><a href="#">경쟁차 비교<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                			<h5 class="link-title"><a href="#">이달의 구매혜택<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                		<div class="icon1"><img src="<c:url value='/img/견적이미지.gif'/>">
                		</div>
           			 	</div>
           			 	<div class="odd">
                			<h4><img src="<c:url value='/img/신청.gif'/>" alt="신청"></h4>
                			<h5 class="link-title"><a href="#">카탈로그 신청  <img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                		<div class="icon"><img src="<c:url value='/img/신청이미지.gif'/>">
                		</div>
           			 	</div>
           			 	<div class="odd">
                			<h4><img src="<c:url value='/img/상담.gif'/>" alt="상담"></h4>
                			<h5 class="link-title"><a href="#">구매상담신청<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
               			 	<h5 class="link-title"><a href="#">전시차 조회<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                			<h5 class="link-title"><a href="#">지점/대리점 조회<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                		<div class="icon1"><img src="<c:url value='/img/상담이미지.gif'/>">
                		</div>
           			 	</div>
           			 	<div class="odd">
                			<h4><img src="<c:url value='/img/시승.gif'/>" alt="시승"></h4>
                			<h5 class="link-title"><a href="#">시승서비스<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                		<div class="icon"><img src="<c:url value='/img/시승이미지.gif'/>">
                		</div>
           			 	</div>
           			 	</div>
           			 </div>
      			</div>
	
		</div>
	</div>
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</div>
</body></html>
