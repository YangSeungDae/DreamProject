<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/common/header_black.jsp" />
<link rel="stylesheet" href="<c:url value='/css/accent-style.css' />" />
<script type="text/javascript" src="<c:url value="/js/dream_slider.js"/>"></script>
<script type="text/javascript">
$().ready(function(){
	
	$(".rolling_accent1 ul").each(function(idx, obj) {
		initSlideListTransition($(obj));
	});
	$(".rolling_accent2 ul").each(function(idx, obj) {
		initSlideListTransition($(obj));
	});
	$(".rolling_accent3 ul").each(function(idx, obj) {
		initSlideListTransition($(obj));
	});
	$(".rolling_accent4 ul").each(function(idx, obj) {
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
	
	
	$(function() {
		var isClick = false;
		$("#detail_1_Btn").click(function (){ 
			if (!isClick) {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
				$(".accent1").slideToggle("slow"); 
				$("#detail_1_img").attr("src", "<c:url value='/img/hd/spcial1.png'/>");
				$(".snstool").css("display", "none");
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".accent1").slideToggle("slow");
				$("#detail_1_img").attr("src", "<c:url value='/img/special.png'/>");
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
				$(".accent2").slideToggle("slow"); 
				$("#detail_2_img").attr("src", "<c:url value='/img/hd/comfort1.png'/>");
				$(".snstool2").css("display", "none");
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".accent2").slideToggle("slow"); 
				$("#detail_2_img").attr("src", "<c:url value='/img/comfort.png'/>");
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
				$(".accent3").slideToggle("slow"); 
				$("#detail_3_img").attr("src", "<c:url value='/img/hd/efficiency1.png'/>");
				$(".snstool3").css("display", "none");
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".accent3").slideToggle("slow"); 
				$("#detail_3_img").attr("src", "<c:url value='/img/Efficiency.png'/>");
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
				$(".accent4").slideToggle("slow"); 
				$("#detail_4_img").attr("src", "<c:url value='/img/hd/enjoy1.png'/>");
				$(".snstool4").css("display", "none");
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".accent4").slideToggle("slow"); 
				$("#detail_4_img").attr("src", "<c:url value='/img/enjoy.png'/>");
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
				$(".accent5").slideToggle("slow");
				$("#detail_5_img").attr("src", "<c:url value='/img/hd/equipment1.png'/>");
				$(".snstool5").css("display", "none");
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".accent5").slideToggle("slow"); 
				$("#detail_5_img").attr("src", "<c:url value='/img/equipment.png'/>");
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
				$(".accent6").slideToggle("slow"); 
				$("#detail_6_img").attr("src", "<c:url value='/img/hd/price1.png'/>");
				
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".accent6").slideToggle("slow"); 
				$("#detail_6_img").attr("src", "<c:url value='/img/price.png'/>");
				
			}
		});
	});
	$(function() {
		var isClick = false;
		$("#detail_7_Btn").click(function (){ 
			if (!isClick) {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
				$(".accent7").slideToggle("slow"); 
				$("#detail_7_img").attr("src", "<c:url value='/img/hd/제원1.png'/>");
				
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".accent7").slideToggle("slow"); 
				$("#detail_7_img").attr("src", "<c:url value='/img/제원.png'/>");
				
			}
		});
	}); 
	$(function() {
		var isClick = false;
		$("#detail_8_Btn").click(function (){ 
			if (!isClick) {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
				$(".accent8").slideToggle("slow"); 
				$("#detail_8_img").attr("src", "<c:url value='/img/hd/구매가이드1.png'/>");
				
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".accent8").slideToggle("slow"); 
				$("#detail_8_img").attr("src", "<c:url value='/img/구애가이드.png'/>");
				
			}
		});
	});
	/*
	$(function() {
		var view = 0;
		var max = 0;
		
		var container;
		
		var interval;
		
		init();
		
		function init(){
			container = $(".rolling_accent1 ul");
			max = container.children().length;
			
			events(); 
			slide_interval();
		}
		
		function events() {
			$("button.prev-btn").on("click", function(){prev(); });
			$("button.next-btn").on("click", function(){next(); });
		}
		
		function prev(e) {	
			view--;
			if( view < 0) view = max-1;
			animate();
		}
		
		function next(e) {
			view++;
			if( view > max-1 ) view = 0; 
			animate();
		}
		
		function slide_interval(e){
			clearInterval(interval);			//누적되니까 지워주는게 좋음 
			interval = setInterval(next, 6000);	//지속적으로 함수를 호출
		}
		
		
		function animate() {
			var moveX = view * 880;
			TweenMax.to(container, 3.0, {marginLeft:-moveX, ease:Expo.easeOut});
		}
	});
	*/
	
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
	<div class="mask"> 
		<div class="mainHeader" style="height: 660px; ">
			<div class="main-spot-item-background" style="background-image: url('<c:url value='/img/accent/bg_visual.jpg'/>');
			background-position: 50% 0; min-width: 930px; height: 660px; ">
				<div class="main-spot-item-wrapper" style="height: 660px; width: 930px; margin: 0 auto 0; position: relative;"> 
	
				  
						<p class="main-spot-item-carfont" style="position: absolute; left: 23px; top: 140px;">
							<img src="<c:url value='/img/accent/txt_visual.png'/>"/>
						</p>
						<div class="main-spot-item-img" style="position: absolute; right: 30px; bottom: 32px;">  
							<img src="<c:url value='/img/accent/img_visual_car.png'/>">
						</div>
				</div>
			</div>	  
		</div> 
		
		  
		
		<div style="width: 100%; min-width: 930px; position: relative; height: 101px; 
		background-image: url('<c:url value='/img/accent/show_room/back_img.jpg'/>');  ">
		
			<div style="position: relative; padding:0 25px;width:930px; margin: auto; height: 101px;">
				<div class="carbrand" style="position: relative; height: 62px;">
					<div><img style="border: 0; vertical-align: top" src="<c:url value='/img/accent/show_room/logo.png'/>"></div>
					<ul class="carmenu" style="position: absolute; top: 0;right: 0;height: 62px;">
						<li><img style="border: 0; vertical-align: top;" src="<c:url value='/img/accent/show_room/menu_carbrand03.png'/>"></li>
					</ul>
				</div>
				<ul class="car_spec" style="    width: 100%;">
					<li style="float: left;"><a style="display: block;"  class="moveBtn" data-page="893" href="javascript:void(0)"><img style="border: 0; vertical-align: top;" src="<c:url value='/img/accent/show_room/special.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="894" href="javascript:void(0)"><img style="border: 0; vertical-align: top;" src="<c:url value='/img/accent/show_room/comfort_Convenience.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="895" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/Efficiency&Safety.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="896" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/Enjoy_Wit.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="897" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/Equipments.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;"  class="moveBtn" data-page="898" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/가격.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;"  class="moveBtn" data-page="899" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/제원.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="900" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/구매가이드.gif'/>"/></a></li>
				</ul>
			</div>
			
		</div>
		
		
		
	</div>
	
	
	<div class="accent_main">
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
		
	<div class="accent_submain" style="position:relative;">
		<div class="accentDiv" id="showroom-cont-893">
		<h2 style="display: inline-block;"><img id="detail_1_img" src="<c:url value='/img/special.png'/>"/></h2>
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

		<div class="accent1">
		<div class="accent_detail">
			<img src="<c:url value='/img/accent1.jpg'/>"/>
			<img src="<c:url value='/img/accent2.jpg'/>"/>
		</div>
		<div class="slide">
		<div class=rolling_accent1 >
			<ul class= r_accent>
				<li>
				<img src="<c:url value='/img/accent3.jpg'/>"/>
				</li>		
				<li>
				<img src="<c:url value='/img/accent8.jpg'/>"/>
				</li>
				<li>
				<img src="<c:url value='/img/accent9.jpg'/>"/>
				</li>			
			</ul>
	    </div>
            <button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>   
            <button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
	    </div>
	  <div style="clear:both"></div>
	    <div class="smallaccent" >
	    	<ul class=smallimg>
	    		<li class="leftimg">
	    		<img src="<c:url value='/img/accentS1.jpg'/>"/>
	    			<div class="definition-txt">
                    <b>7인치 스마트 내비게이션(CDP 미적용)</b>
                    </div>
	    		</li>
	    		<li class="leftimg">
	    		<img src="<c:url value='/img/accentS2.jpg'/>"/>
	    			<div class="definition-txt">
                	<b>타이어 공기압 경보 시스템(TPMS)</b>
                    </div>
	    		</li>
	    		<li class="leftimg">
	    		<img src="<c:url value='/img/accentS3.jpg'/>"/>
	    			<div class="definition-txt">
                	<b>15인치 알로이 휠</b>
                 	</div>
	    		</li>
	    		<li class="leftimg">
	    		<img src="<c:url value='/img/accentS4.jpg'/>"/>
	    			<div class="definition-txt">
                    <b>풀오토 에어컨</b>
                    </div>
	    		</li>
	    		<div style="clear:both"></div>
	     	</ul>
	    </div>
	  </div>
	  </div>
	  
	  <div class="accentDiv" id="showroom-cont-894">	  
	    <div style="position: relative;">
	    <h2 style="display: inline-block;"><img id="detail_2_img" src="<c:url value='/img/comfort.png'/>"/></h2>
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
		<div class="accent2">
		<div class="accent_detail">
			<img src="<c:url value='/img/accent4.jpg'/>"/>
			<img src="<c:url value='/img/accent5.jpg'/>"/>
		</div>
	
	    <div class="smallaccent">
	    	<ul class=smallimg>
	    		<li class="leftimg">
	    		<img src="<c:url value='/img/accentSs1.jpg'/>"/>
	    			<div class="definition-txt">
                    <b>슈퍼비전 클러스터</b>
                    </div>
	    		</li>
	    		<li class="leftimg">
	    		<img src="<c:url value='/img/accentSs2.jpg'/>"/>
	    			<div class="definition-txt">
                    <b>앞좌석 시트 열선</b>
                    </div>
	    		</li>
	    		<li class="leftimg">
	    		<img src="<c:url value='/img/accentSs3.jpg'/>"/>
	    			<div class="definition-txt">
                    <b>스티어링 휠 오디오 리모컨</b>
                    </div>
	    		</li>
	     	</ul>
	     	</div>
	    </div>
	    </div>
	   </div>
	   
	   <div class="accentDiv" id="showroom-cont-895"> 
	    <h2 style="display: inline-block;"><img id="detail_3_img" src="<c:url value='/img/Efficiency.png'/>"/></h2>
		<div style="display: inline-block; float: right;">
		<span id="detail_3_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
	    <div class="snstool3" style="float:right;">
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
		<div class="accent3">
			<div class="accent_detail">
				<img src="<c:url value='/img/accent6.jpg'/>"/>
			</div>
			<div class="slide">
			<div class=rolling_accent2>
			<ul class= r_accent>
				<li>
				<img src="<c:url value='/img/accentS5.jpg'/>"/>
				</li>		
				<li>
				<img src="<c:url value='/img/accentS6.jpg'/>"/>
				</li>
				<li>
				<img src="<c:url value='/img/accentS7.jpg'/>"/>
				</li>			
				<li>
				<img src="<c:url value='/img/accentS8.jpg'/>"/>
				</li>			
				<li>
				<img src="<c:url value='/img/accentS9.jpg'/>"/>
				</li>			
				<li>
				<img src="<c:url value='/img/accentS10.jpg'/>"/>
				</li>			
			</ul>
	    </div>
            <button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>   
            <button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
	    </div>
	    </div>
	    </div>
	    
	    
	    <div class="accentDiv" id="showroom-cont-896">
	    <h2 style="display: inline-block;"><img id="detail_4_img" src="<c:url value='/img/enjoy.png'/>"/></h2>
		<div style="display: inline-block; float: right;">
		<span id="detail_4_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
	    <div class="snstool4" style="float:right;">
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
	
		<div class="accent4">
		
			<div class="accent_detail">
				<img src="<c:url value='/img/accent10.jpg'/>"/>
			</div>
			<div class="slide">
			<div class=rolling_accent3>
			<ul class= r_accent>
				<li>
				<img src="<c:url value='/img/accentS11.jpg'/>"/>
				</li>		
				<li>
				<img src="<c:url value='/img/accentS12.jpg'/>"/>
				</li>
				<li>
				<img src="<c:url value='/img/accentS13.jpg'/>"/>
				</li>			
				<li>
				<img src="<c:url value='/img/accentS14.jpg'/>"/>
				</li>			
				<li>		
			</ul>
	    	</div>
            <button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>   
            <button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
	    </div>
	    </div>
	    </div>
	   
	   
	   <div class="accentDiv" id="showroom-cont-897">
	    <h2 style="display: inline-block;"><img id="detail_5_img" src="<c:url value='/img/equipment.png'/>"/></h2>
		<div style="display: inline-block; float: right;">
		<span id="detail_5_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
	    <div class="snstool5" style="float:right;">
	    
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
		<div class="accent5">
		
			<div class="accent_detail">
				<img src="<c:url value='/img/accent11.jpg'/>"/>
			</div>
			<div class="slide">
			<div class=rolling_accent4>
			<ul class= r_accent>
				<li>
				<img src="<c:url value='/img/accentS15.jpg'/>"/>
				</li>		
				<li>
				<img src="<c:url value='/img/accentS16.jpg'/>"/>
				</li>
				<li>
				<img src="<c:url value='/img/accentS17.jpg'/>"/>
				</li>				
			</ul>  
	    	</div>
            <button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>   
            <button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
	    	</div>
	    	<div class="smallaccent">
	    	<ul class=smallimg>
	    		<li class="leftimg">
	    		<img src="<c:url value='/img/accentSs4.jpg'/>"/>
	    			<div class="definition-txt">
                    <b>MP3 오디오(라디오, MP3, AUX/USB, iPod단자, My <br/> Music) </b>
                    </div>
	    		</li>
	    		<li class="leftimg">
	    		<img src="<c:url value='/img/accentSs5.jpg'/>"/>
	    			<div class="definition-txt">
                    <b>뒷자석 6:4 분할 폴딩 시트</b>
                    </div>
	    		</li>
	    		<li class="leftimg">
	    		<img src="<c:url value='/img/accentSs6.jpg'/>"/>
	    			<div class="definition-txt">
                    <b>헤드램프 에스코트 &amp; 웰컴 기능</b>
                    </div>
	    		</li>
	    		<div style="clear:both"></div>
	     	</ul>
	    </div>
	    </div>
	    
	    </div>

	    
			<div class="accentDiv" id="showroom-cont-898">
				<h2 style="display: inline-block;"><img id="detail_6_img" src="<c:url value='/img/price.png'/>"/></h2>
				<div style="display: inline-block; float: right;">
					<span id="detail_6_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
				</div>
				<div class="accent6">
		 			2017년 10월 1일 기준 (단위 :0원)
		 			<div class="pricewrapper">
		 				<div class="price">
		 			
		 					<div class="content" >
					 			<ul class="carlist" style="margin-top: 17px;">
									<li>
										<a href="#">ACCENT 4Doore 가솔린</a>
									</li>
									<li>
										<a href="#">ACCENT 4Doore 디젤</a>
									</li>
									<li>
										<a href="#">ACCENT WIT 5Doore 가솔린</a>
									</li>
									<li>
										<a href="#">ACCENT WIT 5Doore 디젤</a>
									</li>
									<li>
										<a href="#">1.4 WT 장애인용</a>
									</li>
									<li>
										<a href="#">운전학원용</a>
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
										<span class="section1"></span><b>Package 선택품목</b>
									</li>
									<li class="section">
										<span class="section1"></span><b>내비게이션 패키지 I</b>
										<ul class="list-type02">
											<li>&middot; 7인치 스마트 내비게이션(CDP 미적용), 후방카메라, 스마트키&버튼시동, 슈퍼비전 클러스터
											<br/> *디젤 모던 7DCP는 슈퍼비전클러스터 기본적용
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>내비게이션 패키지 II</b>
										<ul class="list-type02">
											<li>&middot; 7인치 스마트 내비게이션(CDP 미적용), 후방카메라
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>CDP 오디오 패키지</b>
										<ul class="list-type02">
											<li> &middot;  CDP 오디오(라디오, MP3, AUX/USB, iPod 단자, My Music) + 블루투스 핸즈프리(음성인식) + 스티어링 휠 오디오 리모컨 + 일반 사운드 시스템(6스피커)
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>스타일 패키지 I</b>
										<ul class="list-type02">
											<li> &middot;  프로젝션 헤드램프(에스코트&웰컴, 오토라이트컨트롤 기능 포함), LED 주간주행등(DRL), LED 리어콤비 램프(제동등, 후미등 적용), 16인치 알로이 휠 & 타이어
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>TUIX 블랙 포인트 I</b>
										<ul class="list-type02">
											<li>&middot;  프런트 포인트 범퍼 커버(블랙)
											</li>
										</ul>
									</li>
								</ul>
							</div> 	
					
							<div class="list-wrapper">
								<ul class="list-type01">
									<li class="section">
										<span class="section1"></span><b>7인치 스마트 내비게이션</b>
										<ul class="list-type02">
											<li>&middot; 고해상도 7인치 터치스크린, 후방카메라 연동, 내장앰프, 지상파 DMB 라디오, MP3 재생기능, USB 동영상 재생기능, 
											TPEG 서비스(교통정보 및 위험지역 알림기능), AUX/USB/ iPod 및 블루투스 연동, 음성인식 기능 및 블루투스 핸즈프리
											(오디오 스트리밍 기능 포함), MY MUSIC, 전자앨범/액자, 3D 지도, 외장 16GB SD카드 적용, iPod 번들 케이블 사용 가능,
											 외장형 통합 마이크로 안테나, 다국어 지원(한국어/영어), 7인치 스마트 내비게이션 적용 시 CDP 오디오 미적용
											</li>
											<li> &middot;지상파 DMB는 320x240 해상도를 지원하는 사양으로, DMB 사업자가 고화질DMB (해상도 1,280x720) 방송으로 전환 등
											 송출방식 변경 또는 방송정책에 따라 지상파 DMB 수신이 불가할 수 있음
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>기타</b>
										<ul class="list-type02">
											<li>&middot; MP3 오디오 및 CDP 오디오는 테이프 기능 미적용, iPod 번들케이블 사용 가능</li>
											<li>&middot; 하이패스 시스템에는 장애인 통행료 자동할인 기능이 없습니다.</li>
											<li>&middot; 간헐식 와이퍼 기능에는 워셔액 작동 시 와이퍼 자동 작동 기능이 포함됩니다</li>
											<li>&middot; 차체자세제어장치(ESC) : ABS, EBD, BAS 기능 포함</li>	
										</ul>
									</li>
								</ul>
							</div>	
						</div>
					</div>
				</div>	
			</div>
			<div class="accentDiv" id="showroom-cont-899">
				<h2 style="display: inline-block;">
					<img id="detail_7_img" src="<c:url value='/img/제원.png'/>" />
				</h2>

				<div style="display: inline-block; float: right;">

					<span id="detail_7_Btn"><img
						src="<c:url value='/img/hd/down.PNG'/>" /></span>
				</div>
				<div class="accent7">

					<div class="accent_detail">
						<img src="<c:url value='/img/accent12.gif'/>" />
					</div>
					<div class="detail-wrapper">
						<table class="detail">
							<thead>
								<tr class="odd">
									<th scope="col">구분</th>
									<th scope="col">가솔린 1.4</th>
									<th scope="col">디젤 1.6</th>
								</tr>
							</thead>

							<tbody style="text-align: center;">
								<tr class="odd">
									<td>전장 (mm)</td>
									<td>4,370(4,115)</td>
									<td class="last">4,370(4,115)</td>
								</tr>
								<tr class="odd">
									<td>전폭 (mm)</td>
									<td>1,705</td>
									<td class="last">1,705</td>
								</tr>
								<tr class="odd">
									<td>전고 (mm)</td>
									<td>1,455</td>
									<td class="last">1,455</td>
								</tr>
								<tr class="odd">
									<td>축간거리 (mm)</td>
									<td>2,570</td>
									<td class="last">2,570</td>
								</tr>
								<tr class="odd">
									<td>윤거 전 (mm)</td>
									<td>1,488 (16"), 1,496 (15"), 1,506 (14")</td>
									<td class="last">1,488(16"), 1,496(15"), 1,506(14")</td>
								</tr>
								<tr class="odd">
									<td>윤거 후 (mm)</td>
									<td>1,493(16"), 1,501(15"), 1,511(14")</td>
									<td class="last">1,493(16"), 1,501(15"), 1,511(14")</td>
								</tr>
								<tr class="odd">
									<td>엔진형식</td>
									<td>1.4 VVT</td>
									<td class="last">1.6 VGT</td>
								</tr>
								<tr class="odd">
									<td>배기량 (cc)</td>
									<td>1,368</td>
									<td class="last">1,582</td>
								</tr>
								<tr class="odd">
									<td>최고출력 (PS/rpm)</td>
									<td>100/6,000</td>
									<td class="last">136/4,000</td>
								</tr>
								<tr class="odd">
									<td>최대토크 (kg.m/rpm)</td>
									<td>13.6/4,000</td>
									<td class="last">30.6/1,750~2,500(7단 DCT 기준)</td>
								</tr>
								<tr class="odd">
									<td>연료탱크용량 (ℓ)</td>
									<td>43</td>
									<td class="last">43</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div>
						<div class="detail-wrapper" >
							<table class="detail">
								<thead>
									<tr class="odd">
										<th scope="col" colspan="3">정부공인 표준연비 및 등급</th>
									</tr>
								</thead>
								<tbody style="text-align: center;">
									<tr class="odd">
										<th rowspan="6" style="border-right: 0;">Accent</th>
										<td>Accent 가솔린 1.4(M.T)</td>
										<td class="left last">정부 신고 연비 - 복합 14.1km/ℓ(도심 :
											12.7km/ℓ, 고속도로 : 16.1km/ℓ)<br /> 유종 : 휘발유 I 배기량 : 1,368cc I
											공차중량 : 1,070kg I CO2 배출량 : 115g/km I 수동6단 (2등급)
										</td>
									</tr>
									<tr class="odd">
										<td>Accent 가솔린 1.4(CVT)</td>
										<td class="left last">정부 신고 연비 - 복합 13.4km/ℓ(도심 :
											12.0km/ℓ, 고속도로 : 15.6km/ℓ)<br /> 유종 : 휘발유 I 배기량 : 1,368cc I
											공차중량 : 1,105kg I CO2 배출량 : 122g/km I 무단변속 (3등급)
										</td>
									</tr>
									<tr class="odd">
										<td>Accent 디젤 1.6(M/T)</td>
										<td class="left last">정부 신고 연비 - 복합 18.2km/ℓ(도심 :
											16.4km/ℓ, 고속도로 : 20.9km/ℓ)<br> 유종 : 경유 I 배기량 : 1,582cc I
											공차중량 : 1,180kg I CO2 배출량 : 102g/km I 수동6단 (1등급)
										</td>
									</tr>
									<tr class="odd">
										<td>Accent 디젤 1.6(7DCT)</td>
										<td class="left last">정부 신고 연비 - 복합 17.6km/ℓ(도심 :
											15.9km/ℓ, 고속도로 : 20.2km/ℓ) |<br /> 유종 : 경유 I 배기량 : 1,582cc I
											공차중량 : 1,215kg I CO2 배출량 : 105g/km I 7단 DCT (1등급)
										</td>
									</tr>
									<tr class="odd">
										<td>Accent wit 가솔린 1.4(CVT)</td>
										<td class="left last">정부 신고 연비 - 복합 13.1km/ℓ(도심 :
											11.9km/ℓ, 고속도로 : 14.8km/ℓ)<br> 유종 : 휘발유 I 배기량 : 1,368cc
											I 공차중량 : 1,105kg I CO2 배출량 : 125g/km I 무단변속 (3등급)
										</td>
									</tr>
									<tr class="odd">
										<td>Accent wit 디젤 1.6(7DCT)</td>
										<td class="left last">정부 신고 연비 - 복합 17.3km/ℓ(도심 :
											15.8km/ℓ, 고속도로 : 19.5km/ℓ) |<br /> 유종 : 경유 I 배기량 : 1,582cc I
											공차중량 : 1,220kg I CO2 배출량 : 107g/km I 7단 DCT (1등급)
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
										<td>Hankook</td>
										<td>OPTIMO H724</td>
										<td>P175/70R14 84T</td>
										<td>5</td>
										<td class="last">3</td>
									</tr>
									<tr class="odd">
										<td>Kumho</td>
										<td>SOLUS KH25</td>
										<td>P195/50R16 83H</td>
										<td>4</td>
										<td class="last">3</td>
									</tr>
									<tr class="odd">
										<td>Kumho</td>
										<td>SOLUS TA31</td>
										<td>P185/60R15 84H</td>
										<td>3</td>
										<td class="last">3</td>
									</tr>
									<tr class="odd">
										<td>Nexen</td>
										<td>N'PRIZ</td>
										<td>P185/60R15 84H</td>
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

			<div class="last_accent" id="showroom-cont-900">
	    			<h2 style="display: inline-block;"><img id="detail_8_img" src="<c:url value='/img/구매가이드.png'/>"/></h2>
	    			<div style="display: inline-block; float: right;">
	    			<span id="detail_8_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
	    			</div>
				<div class="accent8">
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
			<!--  제원 -->
			<!-- 구매가이드 -->
			
	    	</div>
	    	</div>
	     

	 
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />

</div>
</body>
</html>