<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/common/header.jsp" />
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/css/kona-style.css' />" />
<link rel="stylesheet" href="http://icono-49d6.kxcdn.com/icono.min.css">

<script type="text/javascript" src="<c:url value="/js/dream_slider.js"/>"></script>
<script type="text/javascript">
$().ready(function(){
	$(".rolling_kona1 ul").each(function(idx, obj) {
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
				$(".kona1").slideToggle("slow"); 
				$("#detail_1_img").attr("src", "<c:url value='/img/kona/kona3.png'/>");
				$(".snstool").css("display", "none");
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".kona1").slideToggle("slow");
				$("#detail_1_img").attr("src", "<c:url value='/img/kona/kona.png'/>");
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
				$(".kona2").slideToggle("slow"); 
				$("#detail_2_img").attr("src", "<c:url value='/img/kona/design9.png'/>");
				$(".snstool2").css("display", "none");
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".kona2").slideToggle("slow");
				$("#detail_2_img").attr("src", "<c:url value='/img/kona/design.png'/>");
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
				$(".kona3").slideToggle("slow"); 
				$("#detail_3_img").attr("src", "<c:url value='/img/kona/space10.png'/>");
				$(".snstool3").css("display", "none");
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".kona3").slideToggle("slow");
				$("#detail_3_img").attr("src", "<c:url value='/img/kona/space.png'/>");
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
				$(".kona4").slideToggle("slow"); 
				$("#detail_4_img").attr("src", "<c:url value='/img/kona/safety0.png'/>");
				$(".snstool4").css("display", "none");
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".kona4").slideToggle("slow");
				$("#detail_4_img").attr("src", "<c:url value='/img/kona/safety.png'/>");
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
				$(".kona5").slideToggle("slow"); 
				$("#detail_5_img").attr("src", "<c:url value='/img/kona/life0.png'/>");
				$(".snstool5").css("display", "none");
			}
			else {
				isClick = !isClick;
				$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
				$(".kona5").slideToggle("slow");
				$("#detail_5_img").attr("src", "<c:url value='/img/kona/life.png'/>");
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
		
		$(function() {
			var isClick = false;
			$("#detail_9_Btn").click(function (){ 
				if (!isClick) {
					isClick = !isClick;
					$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
					$(".kona9").slideToggle("slow"); 
					$("#detail_9_img").attr("src", "<c:url value='/img/kona/런칭cf1.png'/>");
					$(".snstool9").css("display", "none");
				}
				else {
					isClick = !isClick;
					$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
					$(".kona9").slideToggle("slow");
					$("#detail_9_img").attr("src", "<c:url value='/img/kona/런칭cf.png'/>");
					$(".snstool9").css("display", "inline-block");
				}
			});	
			
		});
		$(function() {
			var isClick = false;
			$("#detail_10_Btn").click(function (){ 
				if (!isClick) {
					isClick = !isClick;
					$(this).find("img").attr("src", "/DreamProject/img/hd/up.PNG");
					$(".kona10").slideToggle("slow"); 
					$("#detail_10_img").attr("src", "<c:url value='/img/kona/performance1.png'/>");
					$(".snstool10").css("display", "none");
				}
				else {
					isClick = !isClick;
					$(this).find("img").attr("src", "/DreamProject/img/hd/down.PNG");
					$(".kona10").slideToggle("slow");
					$("#detail_10_img").attr("src", "<c:url value='/img/kona/performance.png'/>");
					$(".snstool10").css("display", "inline-block");
				}
			});	
			
		});
		
	   $( function() {
			$("#drive").click(function() {
				$("#video").find("iframe").attr("src", "https://www.youtube.com/embed/iwSQdc4YQ9M");
			});
			
			$("#safe").click(function() {
				$("#video").find("iframe").attr("src", "https://www.youtube.com/embed/Zvk0xxNeQhE");
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
			<div class="main-spot-item-background" style="background-image: url('<c:url value='/img/accent/show_room/bg_visual4.jpg'/>');
			background-position: 50% 0; min-width: 930px; height: 660px; ">
				<div class="main-spot-item-wrapper" style="height: 660px; width: 930px; margin: 0 auto 0; position: relative;"> 
	
	
				  
						<p class="main-spot-item-carfont" style="position: absolute; left: 23px; top: 140px;">
							<img src="<c:url value='/img/accent/show_room/txt_visual4.png'/>"/>
							<img style="position: absolute;top: 100px;" src="<c:url value='/img/accent/show_room/btn_botchat.png'/>"/>
						</p>
				</div>
			</div>	  
		</div> 
		
		  
		
		<div style="width: 100%; min-width: 930px; position: relative; height: 101px; 
		background-image: url('<c:url value='/img/accent/show_room/back_1.gif'/>') ; ">
		
			<div style="position: relative; padding:0 25px;width:930px; margin: auto; height: 101px;">
				<div class="carbrand" style="position: relative; height: 62px;">
					<div><img style="border: 0; vertical-align: top" src="<c:url value='/img/accent/show_room/kona.png'/>"></div>
					<ul class="carmenu" style="position: absolute; top: 0;right: 0;height: 62px;">
						<li><img style="border: 0; vertical-align: top;" src="<c:url value='/img/accent/show_room/menu_carbrand03.png'/>"></li>
					</ul>
				</div>
				<ul class="car_spec" style="    width: 100%;">
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="893" href="javascript:void(0)"><img style="border: 0; vertical-align: top;" src="<c:url value='/img/accent/show_room/kona.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="894" href="javascript:void(0)"><img style="border: 0; vertical-align: top;" src="<c:url value='/img/accent/show_room/런칭cf.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="895" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/design1.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="896" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/space.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="897" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/performance.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="898" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/safety1.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="899" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/lifestyle.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="900" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/가격2.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="901" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/제원2.gif'/>"/></a></li>
					<li style="float: left;"><a style="display: block;" class="moveBtn" data-page="902" href="javascript:void(0)"><img style="border: 0; vertical-align: top;"  src="<c:url value='/img/accent/show_room/구매가이드3.gif'/>"/></a></li>
				</ul>
			</div>
			
		</div>
		
		
		
	</div>
	

<div class="kona_main">
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
		
	<div class="kona_submain" style="position:relative;">
		<div class="konaDiv" id="showroom-cont-893">
			<h2 style="display: inline-block;"><img id="detail_1_img" src="<c:url value='/img/kona/kona.png'/>"/></h2>
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

			<div class="kona1">
				<div class="kona_detail">
					<img src="<c:url value='/img/kona/kona1.jpg'/>"/>
					<img src="<c:url value='/img/kona/kona2.jpg'/>"/>
				</div>
			</div>
		</div>
		<!-- 런칭 CF -->
	<div style="width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;" ></div>	
		<div class="konaDiv" id="showroom-cont-894">
			<h2 style="display: inline-block;"><img id="detail_9_img" src="<c:url value='/img/kona/런칭cf.png'/>"/></h2>
			<div style="display: inline-block; position:absolute; right:0px;">
			<span id="detail_9_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
				<div class="snstool9">
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

			<div class="kona9">
				<div class="kona_detail1">
					<div id="video">
						<iframe id="drive1" width="880" height="480" src="https://www.youtube.com/embed/iwSQdc4YQ9M" frameborder="0" allowfullscreen></iframe>
					</div>
					<button id="drive"><img src="<c:url value='/img/kona/주행편.png'/>"/></button>
					<button id="safe"><img src="<c:url value='/img/kona/안전편.png'/>"/></button>
				</div>
			</div>
	</div>
		
<!-- Design -->
	<div style="width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;" ></div>		
	<div class="konaDiv" id="showroom-cont-895">
		<h2 style="display: inline-block;"><img id="detail_2_img" src="<c:url value='/img/kona/design.png'/>"/></h2>
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

			<div class="kona2">
				<div class="kona_detail">
					<img src="<c:url value='/img/kona/design1.jpg'/>"/>
				</div>
				<div class="slide">
					<div class=rolling_kona1 >
						<ul class= r_kona><!-- 
					 	--><li>
							<img src="<c:url value='/img/kona/design2.jpg'/>"/>
						</li><!-- 		
						--><li>
							<img src="<c:url value='/img/kona/design3.jpg'/>"/>
						</li><!--  		
						--><li>
							<img src="<c:url value='/img/kona/design4.jpg'/>"/>
						</li><!--  		
						--><li>
							<img src="<c:url value='/img/kona/design5.jpg'/>"/>
						</li><!--  		
						--><li>
							<img src="<c:url value='/img/kona/design6.jpg'/>"/>
						</li><!--  		
						--><li>
							<img src="<c:url value='/img/kona/design7.png'/>"/>
						</li><!--  		
						--><li>
							<img src="<c:url value='/img/kona/design8.jpg'/>"/>
						</li><!--  
						--></ul>
            		<button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>
           			 <button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
	    			</div>
	 			</div>
	    	</div>
	  	</div>
	  	
	  <!-- space -->	
	  	<div style="width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;" ></div>	
	  <div class="konaDiv" id="showroom-cont-896">
	 	 <h2 style="display: inline-block;"><img id="detail_3_img" src="<c:url value='/img/kona/space.png'/>"/></h2>
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

			<div class="kona3">
				<div class="kona_detail">
					<img src="<c:url value='/img/kona/space1.jpg'/>"/>
					<img src="<c:url value='/img/kona/space2.jpg'/>"/>
				</div>
				<div class="slide">
					<div class=rolling_kona1 >
						<ul class= r_kona>
						<li>
							<img src="<c:url value='/img/kona/space3.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/space4.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/space5.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/space6.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/space7.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/space8.jpg'/>"/>
						</li>
						</ul>
	    			</div>
            		<button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>   
           			 <button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
	    			</div>
	    			<div class="kona_detail">
	    				<img src="<c:url value='/img/kona/space9.jpg'/>"/>
	 				</div>
	    	</div>
	    </div>	
	    
	    <!-- performance -->
	    <div style="width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;" ></div>	
	  <div class="konaDiv" id="showroom-cont-897">
	 	 <h2 style="display: inline-block;"><img id="detail_10_img" src="<c:url value='/img/kona/performance.png'/>"/></h2>
			<div style="display: inline-block; position:absolute; right:0px;">
				<span id="detail_10_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
				<div class="snstool10">
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

			<div class="kona10">
				<div class="kona_detail">
					<img src="<c:url value='/img/kona/performance2.jpg'/>"/>
					<img src="<c:url value='/img/kona/performance3.jpg'/>"/>
				</div>
				
				</div>
		</div>
	    	<!-- Safety -->
	    		<div style="width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;" ></div>	
	    	<div class="konaDiv" id="showroom-cont-898">
			<h2 style="display: inline-block;"><img id="detail_4_img" src="<c:url value='/img/kona/safety.png'/>"/></h2>
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

			<div class="kona4">
				<div class="kona_detail">
					<img src="<c:url value='/img/kona/safety1.jpg'/>"/>
				</div>
				<div class="slide">
					<div class=rolling_kona1 >
						<ul class= r_kona>
						<li>
							<img src="<c:url value='/img/kona/safety2.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/safety3.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/safety4.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/safety5.jpg'/>"/>
						</li>
						</ul>
	    			</div>
            		<button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>   
           			 <button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
	    			</div>
	    			<div class="kona_detail">
					<img src="<c:url value='/img/kona/safety6.jpg'/>"/>
				</div>
				<div class="slide">
					<div class=rolling_kona1 >
						<ul class= r_kona>
						<li>
							<img src="<c:url value='/img/kona/safety7.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/safety8.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/safety9.jpg'/>"/>
						</li>		
						<li>
							<img src="<c:url value='/img/kona/safety10.jpg'/>"/>
						</li>
						<li>
							<img src="<c:url value='/img/kona/safety11.jpg'/>"/>
						</li>
						<li>
							<img src="<c:url value='/img/kona/safety12.jpg'/>"/>
						</li>
						</ul>
	    			</div>
            		<button class="next-btn"><img src="<c:url value='/img/nextbtn.png'/>" alt="다음"></button>   
           			 <button class="prev-btn"><img src="<c:url value='/img/prevbtn.png'/>" alt="이전"></button>
	 </div>
	    	</div>
	  	</div>
	  	
	  	<!-- lifestyle -->
	  		<div style="width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;" ></div>	
	  <div class="konaDiv" id="showroom-cont-899">
	  		<h2 style="display: inline-block;"><img id="detail_5_img" src="<c:url value='/img/kona/life.png'/>"/></h2>
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

			<div class="kona5">
				<div class="kona_detail">
					<img src="<c:url value='/img/kona/life1.jpg'/>"/>
				</div>
			</div>
	</div>
		<!-- 가격 -->
			<div style="width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;" ></div>	
		<div class="konaDiv" id="showroom-cont-900">
				<h2 style="display: inline-block;"><img id="detail_6_img" src="<c:url value='/img/price.png'/>"/></h2>
				<div style="display: inline-block; float: right;">
					<span id="detail_6_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
				</div>
				<div class="accent6">
					<div class="list-wrapper">
								<ul class="list-type01">
									<li class="section">
										<span class="section1"></span><b>패키지 선택품목</b>
									</li>
									<li class="section">
										<span class="section1"></span><b>밸류 패키지</b>
										<ul class="list-type02">
											<li>&middot; 버튼시동 & 스마트키 시스템 + 17인치 알로이 휠& 타이어
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>플러스 패키지I</b>
										<ul class="list-type02">
											<li>&middot; 7후측방 충돌 경고 + 18인치 알로이 휠 & 타이어 + 풀오토 에어컨 + 하이패스 시스템(ECM 미적용)
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>플러스 패키지II</b>
										<ul class="list-type02">
											<li> &middot;17인치 알로이 휠 & 타이어 + 운전석 전동 조절(8way) & 전동식 럼버서포트(2way) + 앞좌석 통풍 + 풀오토 에어컨 + 전방 주차 보조 시스템  
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>플러스 패키지 III</b>
										<ul class="list-type02">
											<li> &middot;후측방 충돌 경고 + 헤드업 디스플레이(컴바이너 타입) + 운전석 전동 조절(8way) & 전동식 럼버서포트(2way) + 앞좌석 통풍 + 풀오토 에어컨 + 전방 주차 보조 시스
											<br/>템 + 레인센서  
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>플래티넘 패키지 I</b>
										<ul class="list-type02">
											<li>&middot; 투톤 컬러 루프 + 헤드업 디스플레이(컴바이너 타입) + 4.2인치 컬러 LCD 클러스터 + 천연가죽 시트 + 동승석 전동 조절(8way) + 오토 디포그 + 클러스터 이오나이저 
											<br/>+ 동승석 세이프티 파워윈도우 + 레인센서 + 러기지 네트 + 경사로 저속 주행장치 + 스마트폰 무선충전 시스템
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>현대 스마트 센스</b>
										<ul class="list-type02">
											<li> &middot;전방 충돌방지 보조 + 차로 이탈방지 보조 + 운전자 주의 경고  
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>현대 스마트 센스 플러스</b>
										<ul class="list-type02">
											<li> &middot; 전방 충돌방지 보조 + 차로 이탈방지 보조 + 운전자 주의 경고 + 하이빔 보조
											</li>
										</ul>
									</li>
									<li class="section">
										<span class="section1"></span><b>인포테인먼트 패키지</b>
										<ul class="list-type02">
											<li>&middot; 8인치 내비게이션 + 블루링크(텔레매틱스) + KRELL 프리미엄 사운드 시스템
											</li>
										</ul>
									</li>
								</ul>
							</div> 	
					
							<div class="list-wrapper">
								<ul class="list-type01">
									<li class="section">
										<ul class="list-type02">
											<li>&middot; 내장 컬러 패키지(틸블루, 오렌지) 선택 시 컬러대금 추가(10만원)</li>
											<li>- 내장 컬러 패키지(오렌지) 적용 부위 : 시트 메인부, 시트&스티어링 휠 스티치, 도어 센터트림, 도어 암레스트, 에어벤트, 시동 버튼 주변부, 기어 인디케이터 주변부
											<br/>- 내장 컬러 패키지(틸블루) 적용 부위 : 시트 메인부, 옐로우 시트 스티치&파이핑, 도어 어퍼트림, 도어 암레스트, 크래쉬 패드
											<li>&middot; 내장 컬러 패키지(오렌지) 선택 시, 텐저린 코멧 외장칼라 적용</li>
											<li>&middot; 내장 컬러 패키지(틸블루) 선택 시, 세라믹 블루 외장칼라 적용</li>
											<li>&middot; 내장 컬러 패키지(오렌지/틸블루)는 인조가죽 시트 사양에 적용 가능</li>
											<li>&middot;LED 헤드램프 적용 시 헤드램프 자동 높이 조절장치 포함</li>
											<li>&middot;안개등 및 현대 스마트 센스 적용시 전면 범퍼 하단부 실버 가니쉬 포함</li>
											<li>&middot;썬루프 및 투톤 루프 컬러 동시 적용 불가</li>
											<li>&middot;투톤 컬러 루프 사양은 프리미엄 트림 및 FlUX 프리미엄/프리미엄 스페셜 트림에서 적용 가능</li>
											<li>&middot;하이패스 시스템에는 장애인 통행료 자동할인 기능 없음</li>
											<li>&middot;7인치 디스플레이 오디오 및 8인치 내비게이션 선택 시 후방카메라 포함</li>
											<li>&middot;7인치 디스플레이 오디오 사양의 경우, 헤드업 디스플레이 사양에 내비게이션 정보 미적용</li>
											<li>&middot;일반 사운드 시스템(6스피커) : 프런트 도어 스피커(2개), 리어 도어 스피커(2개), 트위터 스피커(2개)</li>
											<li>&middot;KRELL 프리미엄 사운드 시스템(8스피커) : 센터 스피커(1개), 프런트 도어 스피커(2개), 리어 도어 스피커(2개), 트위터 스피커(2개), 서브우퍼(1개), 외장 앰프</li>
											<li>&middot;폰 커넥티비티 기능 적용(Apple CarPlay) *아이폰5 이상 작동 (스티어링 휠의 음성인식 버튼으로 Apple CarPlay 사용 가능)</li>
											<li>&middot;미러링크 : 삼성 갤럭시 S8/S8 Plus, S7/S7 Edge, S6/S6 Edge/S6 Edge Plus, S5, 노트 4/5, A5/A7, LG G5, V20 限 지원, 상세 내용은 블루멤버스 사이트 참조</li>
											<li>&middot;지상파 DMB는 320X240 해상도를 지원하는 사양으로, DMB 사업자가 고화질 DMB(해상도 1,280X720) 방송으로 전환 등 송출방식 변경 또는 방송정책에 따라 지상파
											<br/> DMB 수신이 불가할 수 있음</li>
											<li>&middot;주행 보조 사양(전방 충돌방지 보조 등)은 위험도가 높은 특정 주행상황에서 운전자를 보조
											<br/>* 상세 작동 조건은 취급 설명서 참조</li>
										</ul>
									</li>
								</ul>
							</div>	
						</div>
					</div>
				</div>	
			</div>
			<!-- 제원 -->
			<div style="margin: 0px auto;width:880px;">
				<div style="width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;" ></div>	
			<div class="konaDiv" id="showroom-cont-901">
				<h2 style="display: inline-block;">
					<img id="detail_7_img" src="<c:url value='/img/제원.png'/>" />
				</h2>

				<div style="display: inline-block; float: right;">

					<span id="detail_7_Btn"><img
						src="<c:url value='/img/hd/down.PNG'/>" /></span>
				</div>
				<div class="accent7">

					<div class="accent_detail">
						<img src="<c:url value='/img/kona/제원kona.jpg'/>" />
					</div>
					<div class="detail-wrapper">
						<table class="detail">
							<thead>
								<tr class="odd">
									<th scope="col">구분</th>
									<th scope="col">가솔린 1.6 터보</th>
									<th scope="col">디젤 1.6</th>
								</tr>
							</thead>

							<tbody style="text-align: center;">
								<tr class="odd">
									<td>전장 (mm)</td>
									<td>4,165</td>
									<td class="last">4,165</td>
								</tr>
								<tr class="odd">
									<td>전폭 (mm)</td>
									<td>1,800</td>
									<td class="last">1,800</td>
								</tr>
								<tr class="odd">
									<td>전고 (mm)</td>
									<td>1,550(1,565)</td>
									<td class="last">1,550(1,565)</td>
								</tr>
								<tr class="odd">
									<td>축간거리 (mm)</td>
									<td>2,600</td>
									<td class="last">2,600</td>
								</tr>
								<tr class="odd">
									<td>윤거 전 (mm)</td>
									<td>1,575 (16"), 1,563 (17"), 1,559 (18")</td>
									<td class="last">1,575 (16"), 1,563 (17"), 1,559 (18")</td>
								</tr>
								<tr class="odd">
									<td>윤거 후 (mm)</td>
									<td>1,584(16"), 1,572(17"), 1,568(18")</td>
									<td class="last">1,584(16"), 1,572(17"), 1,568(18")</td>
								</tr>
								<tr class="odd">
									<td>엔진형식</td>
									<td>1.6 T-GDi</td>
									<td class="last">1.6 e-VGT</td>
								</tr>
								<tr class="odd">
									<td>배기량 (cc)</td>
									<td>1,591</td>
									<td class="last">1,582</td>
								</tr>
								<tr class="odd">
									<td>최고출력 (PS/rpm)</td>
									<td>177/5,500</td>
									<td class="last">136/4,000</td>
								</tr>
								<tr class="odd">
									<td>최대토크 (kg.m/rpm)</td>
									<td>27.0/1,500~4,500</td>
									<td class="last">30.6/1,750~2,500</td>
								</tr>
								<tr class="odd">
									<td>연료탱크용량 (ℓ)</td>
									<td>50</td>
									<td class="last">50</td>
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
										<td>디젤 1.6 ISG_7 DCT(16″ 타이어)</td>
										<td class="left last">정부 신고 연비 - 복합 16.8km/ℓ(도심 : 15.8km/ℓ, 고속도로 : 18.2km/ℓ)
										<br> CO2 배출량 : 111g/km I 배기량 : 1,582cc I 공차중량 : 1,355 I 7 DCT(1등급)</td>
									</tr>
									<tr class="odd">
										<td>디젤 1.6 ISG_7 DCT(17″ 타이어)</td>
										<td class="left last">정부 신고 연비 - 복합 16.5km/ℓ(도심 : 15.4km/ℓ, 고속도로 : 17.9km/ℓ)<br> CO2 배출량 : 113g/km I 배기량 : 1,582cc I 공차중량 : 1,370 I 7 DCT(1등급)</td>
									</tr>
									<tr class="odd">
										 <td>디젤 1.6 ISG_7 DCT(18″ 타이어)</td>
										<td class="left last">정부 신고 연비 - 복합 16.2km/ℓ(도심 : 15.3km/ℓ, 고속도로 : 17.4km/ℓ)<br> CO2 배출량 : 115g/km I 배기량 : 1,582cc I 공차중량 : 1,395 I 7 DCT(1등급)</td>
									</tr>
									<tr class="odd">
										<td>가솔린 1.6 터보 2WD_7 DCT(16″ 타이어)</td>
										<td class="left last">복합 12.8km/ℓ(도심:11.4km/ℓ, 고속도로:14.9km/ℓ)<br> CO2 배출량:128g/km | 배기량:1,591cc | 공차중량:1,320kg | 7 DCT(3등급)</td>
									</tr>
									<tr class="odd">
										<td>가솔린 1.6 터보 2WD_7 DCT(17″ 타이어)</td>
										<td class="left last">복합 12.6km/ℓ(도심:11.3km/ℓ, 고속도로:14.5km/ℓ)<br> CO2 배출량:131g/km | 배기량:1,591cc | 공차중량:1,330kg | 7 DCT(3등급)</td>
									</tr>
									<tr class="odd">
										<td>가솔린 1.6 터보 2WD_7 DCT(18″ 타이어)</td>
										<td class="left last">복합 12.3km/ℓ(도심:11.0km/ℓ, 고속도로:14.2km/ℓ)<br> CO2 배출량:134g/km | 배기량:1,591cc | 공차중량:1,370kg | 7 DCT(3등급)</td>
									</tr>
									<tr class="odd">
										<td>가솔린 1.6 터보 4WD_7 DCT(16″ 타이어)</td>
										<td class="left last">정부 신고 연비 - 복합 11.3km/ℓ(도심 : 10.1km/ℓ, 고속도로 : 13.0km/ℓ)<br> CO2 배출량 : 147g/km I 배기량 : 1,591cc I 공차중량 : 1,400 I 7 DCT(4등급)</td>
									</tr>
									<tr class="odd">
										<td>가솔린 1.6 터보 4WD_7 DCT(17″ 타이어)</td>
										<td class="left last">정부 신고 연비 - 복합 11.1km/ℓ(도심 : 10.1km/ℓ, 고속도로 : 12.6km/ℓ)<br> CO2 배출량 : 150g/km I 배기량 : 1,591cc I 공차중량 : 1,425 I 7 DCT(4등급)</td>
									</tr>
									<tr class="odd">
										<td>가솔린 1.6 터보 4WD_7 DCT(18″ 타이어)</td>
										<td class="left last">정부 신고 연비 - 복합 11.0km/ℓ(도심 : 10.0km/ℓ, 고속도로 : 12.4km/ℓ)<br> CO2 배출량 : 151g/km I 배기량 : 1,591cc I 공차중량 : 1,460 I 7 DCT(4등급)</td>
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
										<td>NEXEN</td>
										<td>N’Priz</td>
										<td>205/60R16 92H</td>
										<td>2</td>
										<td class="last">3</td>
									</tr>
									<tr class="odd">
										<td>NEXEN</td>
										<td>N’Priz</td>
										<td>215/55R17 94V</td>
										<td>3</td>
										<td class="last">3</td>
									</tr>
									
									<tr class="odd">
										<td>HANKOOK</td>
										<td>KINERGY GT</td>
										<td>205/60R16 92H</td>
										<td>2</td>
										<td class="last">4</td>
									</tr>
									<tr class="odd">
										<td>HANKOOK</td>
										<td>KINERGY GT</td>
										<td>215/55R17 94V</td>
										<td>3</td>
										<td class="last">2</td>
									</tr>
									<tr class="odd">
										<td>HANKOOK</td>
										<td>Ventus S1 Noble2	</td>
										<td>235/45R18 94V</td>
										<td>3</td>
										<td class="last">2</td>
									</tr>
									<tr class="odd">
										<td>GOODYEAR</td>
										<td>Eagle Touring	</td>
										<td>235/45R18 98V</td>
										<td>3</td>
										<td class="last">3</td>
									</tr>
									
								</tbody>

							</table>
						</div>
						<div class="information">
							<ul class="list-type01">
								<li><span class="section1"></span> 연비는 표준모드에 의한 연비로서 도로상태, 운전방법, 차량적재,
								 정비상태 및 외기온도에 따라 실주행연비와 차이가 있습니다.</li>
								<li><span class="section1"></span> 상기 엔진성능은 NET수치임. “NET수치”란 국토교통부에서 97년부터 적용을 요구한 법규사항이며 배기가스의 저항을 감안한 신측정법으로 기존의 GROSS 출력수치와 대비 할 때 약간의 수치저하가 발생할 수 있습니다.</li>
								<li><span class="section1"></span> 가죽시트에는 부분적으로 인조가죽이 포함되어 있습니다.</li>
								<li><span class="section1"></span> 현대자동차는 지점/대리점의 카마스터를 통해서만 판매하며, 전국 어느 곳에서나 같은 제품 같은 가격으로 바른 거래를 실천하고 있습니다.</li>
								<li><span class="section1"></span> 당사에서 지정하는 순정품(엔진오일, 변속기오일 등)을 사용하지 않거나 불량 연료를 사용했을 경우에는 차량에 치명적인 손상을 줄 수 있습니다.</li>
						
								<li style="color: #3576BC;"><span class="section1"></span>
									본 쇼룸 이미지 및 내용은 고객의 이해를 돕기 위해 연출된 것으로 실제와 다를 수 있으며, 차량 성능 개선을 위해 예고 없이 변경될 수 있습니다.</li>
								<li><span class="section1"></span>주행거리는 운전자의 습관과 도로 상태, 외부 온도 및 공조 시스템 설정에 따라 변동될 수 있습니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		
		<!--구매가이드 -->
		<div>
	<div style="width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;"></div>	
			<div class="last_accent" id="showroom-cont-902">
	    			<h2 style="display: inline-block;"><img id="detail_8_img" src="<c:url value='/img/구매가이드.png'/>"/></h2>
	    			<div style="display: inline-block; float: right;">
	    			<span id="detail_8_Btn"><img src="<c:url value='/img/hd/down.PNG'/>"/></span>
	    			</div>
				<div class="accent8">
	    			<div class="purchase-guide">
           				 <div class="odd">
                			<h4><img style=" float: left; padding-right: 50px;" src="<c:url value='/img/견적.gif'/>" alt="견적"></h4>
                			<h5 class="link-title"><a style="float:left; padding-right: 10px;" href="#">견적내기<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
               			 	<h5 class="link-title"><a style="float:left;" href="#">경쟁차 비교<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                			<h5 class="link-title"><a style="float:left;" href="#">이달의 구매혜택<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                        	<div class="icon1"><img src="<c:url value='/img/견적이미지.gif'/>">
                		</div>
           			 	</div>
           			 	<div class="odd">
                			<h4><img style=" float: left; padding-right: 50px;" src="<c:url value='/img/신청.gif'/>" alt="신청"></h4>
                			<h5 class="link-title"><a style="float:left;" href="#">카탈로그 신청  <img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                		<div class="icon"><img src="<c:url value='/img/신청이미지.gif'/>">
                		</div>
           			 	</div>
           			 	<div class="odd">
                			<h4><img style=" float: left; padding-right: 50px;" src="<c:url value='/img/상담.gif'/>" alt="상담"></h4>
                			<h5 class="link-title"><a style="float:left;" href="#">구매상담신청<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
               			 	<h5 class="link-title"><a style="float:left;" href="#">전시차 조회<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                			<h5 class="link-title"><a style="float:left;" href="#">지점/대리점 조회<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
                		<div class="icon1"><img src="<c:url value='/img/상담이미지.gif'/>">
                		</div>
           			 	</div>
           			 	<div class="odd">
                			<h4><img style=" float: left; padding-right: 50px;" src="<c:url value='/img/시승.gif'/>" alt="시승"></h4>
                			<h5 class="link-title"><a style="float:left;" href="#">시승서비스<img src="<c:url value='/img/btn_go.png'/>"/></a></h5>
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
</body>
</html>