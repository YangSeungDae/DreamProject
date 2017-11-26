package com.ktds.car.web;

import org.springframework.jdbc.support.lob.DefaultLobHandler;
import org.springframework.jdbc.support.lob.OracleLobHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.car.service.CarService;
import com.ktds.car.vo.CarVO;

import java.sql.Clob;

@Controller
public class CarController {
	
	private CarService carService;

	public void setCarService(CarService carService) {
		this.carService = carService;
	}

	@RequestMapping("/car/{carId}")
	public ModelAndView viewCarDetail(@PathVariable int carId) {
		CarVO carVO = carService.readCarById(carId);
		ModelAndView view = new ModelAndView();
		if(carId==3) {
			view.setViewName("car/details");
		} else {
			view.setViewName("car/details2");
		}
		view.addObject("carVO", carVO);
		
		return view;
	}
	
	@RequestMapping("/car/insert")
	public void insertCar() {
		CarVO carVO = new CarVO();
		carVO.setCarName("쏘나타 hybrid");
		carVO.setCarTypeFlag("ECO");
		carVO.setHtml("<link rel=\"stylesheet\" href=\"/DreamProject/css/sonata-style.css\" />\r\n" + 
				"<script type=\"text/javascript\" src=\"/DreamProject/js/jquery-3.2.1.min.js\"></script>\r\n" + 
				"<script type=\"text/javascript\" src=\"/DreamProject/js/dream_slider.js\"></script>\r\n" + 
				"<script type=\"text/javascript\">\r\n" + 
				"\r\n" + 
				"$().ready(function(){\r\n" + 
				"	\r\n" + 
				"	$(\".rolling_sonata ul\").each(function(idx, obj) {\r\n" + 
				"		initSlideListTransition($(obj));\r\n" + 
				"	});\r\n" + 
				"	//slideListTransition($(\".rolling_kona1 ul\"), 1, 5000, function(){}, function(){});\r\n" + 
				"	$(\".prev-btn img\").click(function(){\r\n" + 
				"		slideListTransition($(this).closest(\"div\").find(\"ul\"), +1, 3000, function(){}, function(){});\r\n" + 
				"	});\r\n" + 
				"	$(\".next-btn img\").click(function(){\r\n" + 
				"		slideListTransition($(this).closest(\"div\").find(\"ul\"), -1, 3000, function(){}, function(){});\r\n" + 
				"	});\r\n" + 
				"	\r\n" + 
				"	$(\".moveBtn\").click(function(e) {\r\n" + 
				"		var movePage = \"#showroom-cont-\" + $(this).data(\"page\");\r\n" + 
				"		\r\n" + 
				"		var topPosition = $(\"#showroom-cont-\" + $(this).data(\"page\")).offset().top;\r\n" + 
				"		\r\n" + 
				"		$(\"html, \" + movePage).stop().animate({scrollTop : topPosition + \"px\"});\r\n" + 
				"	});\r\n" + 
				"});\r\n" + 
				"\r\n" + 
				"function popupOpen(){\r\n" + 
				"\r\n" + 
				"	var popUrl = \"https://www.facebook.com/login.php?skip_api_login=1&api_key=140586622674265&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fv2.5%2Fdialog%2Fshare%3Fredirect_uri%3Dhttp%253A%252F%252Fs7.addthis.com%252Fstatic%252Fthankyou.html%26display%3Dpopup%26href%3Dhttp%253A%252F%252Fwww.hyundai.com%252Fkr%252Fshowroom.do%253FcarCd1%253DRD005%2526WT.ac%253Dgnb_carkind_accent%2523a%26title%3D%25EC%2597%2591%25EC%2584%25BC%25ED%258A%25B8%2B%25EA%25B3%25B5%25EC%258B%259D%2B%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580%2B%257C%2B%25ED%2598%2584%25EB%258C%2580%25EC%259E%2590%25EB%258F%2599%25EC%25B0%25A8%26description%26picture%26client_id%3D140586622674265%26ret%3Dlogin&cancel_url=http%3A%2F%2Fs7.addthis.com%2Fstatic%2Fthankyou.html%3Ferror_code%3D4201%26error_message%3DUser%2Bcanceled%2Bthe%2BDialog%2Bflow%23_%3D_&display=popup&locale=ko_KR\";	//팝업창에 출력될 페이지 URL\r\n" + 
				"\r\n" + 
				"	var popOption = \"width=400, height=400, resizable=no, scrollbars=no, status=no;\";    //팝업창 옵션(optoin)\r\n" + 
				"\r\n" + 
				"		window.open(popUrl,\"\",popOption);\r\n" + 
				"\r\n" + 
				"}\r\n" + 
				"\r\n" + 
				"function popupOpen1(){\r\n" + 
				"\r\n" + 
				"	var popUrl = \"https://twitter.com/intent/tweet?text=%EC%97%91%EC%84%BC%ED%8A%B8%20%EA%B3%B5%EC%8B%9D%20%ED%8E%98%EC%9D%B4%EC%A7%80%20%7C%20%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A8&url=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent%23a&related=\";	//팝업창에 출력될 페이지 URL\r\n" + 
				"\r\n" + 
				"	var popOption = \"width=400, height=400, resizable=no, scrollbars=no, status=no;\";    //팝업창 옵션(optoin)\r\n" + 
				"\r\n" + 
				"		window.open(popUrl,\"\",popOption);\r\n" + 
				"\r\n" + 
				"}\r\n" + 
				"\r\n" + 
				"function popupOpen2(){\r\n" + 
				"\r\n" + 
				"	var popUrl = \"https://story.kakao.com/s/login?continue=https%3A%2F%2Fstory.kakao.com%2Fshare%3Furl%3Dhttp%253A%252F%252Fwww.hyundai.com%252Fkr%252Fshowroom.do%253FcarCd1%253DRD005%2526WT.ac%253Dgnb_carkind_accent%2523a&display=popup&referrer=http://www.addthis.com/bookmark.php?v=300&winname=addthis&pub=ra-58a563fba1b0c343&source=men-300&lng=ko&s=kakao&url=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent%23a&title=%EC%97%91%EC%84%BC%ED%8A%B8%20%EA%B3%B5%EC%8B%9D%20%ED%8E%98%EC%9D%B4%EC%A7%80%20%7C%20%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A8&ate=AT-ra-58a563fba1b0c343/-/-/59e557523450e118/7&frommenu=1&uid=59a61694d017df69&ct=1&uct=1&pre=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent&tt=0&captcha_provider=recaptcha2&pro=0 \";\r\n" + 
				"	\r\n" + 
				"	var popOption = \"width=400, height=400, resizable=no, scrollbars=no, status=no;\";    //팝업창 옵션(optoin)\r\n" + 
				"\r\n" + 
				"		window.open(popUrl,\"\",popOption);\r\n" + 
				"}\r\n" + 
				"	\r\n" + 
				"function popupOpen3(){\r\n" + 
				"\r\n" + 
				"	var popUrl = \" https://plus.google.com/share?url=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent%23a&t=%EC%97%91%EC%84%BC%ED%8A%B8+%EA%B3%B5%EC%8B%9D+%ED%8E%98%EC%9D%B4%EC%A7%80+%7C+%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A8 \";\r\n" + 
				"	\r\n" + 
				"	var popOption = \"width=400, height=400, resizable=no, scrollbars=no, status=no;\";    //팝업창 옵션(optoin)\r\n" + 
				"\r\n" + 
				"		window.open(popUrl,\"\",popOption);\r\n" + 
				"\r\n" + 
				"}\r\n" + 
				"\r\n" + 
				"$( function() {\r\n" + 
				"\r\n" + 
				"	$(\".panel\").children(\"img\").eq(0).attr(\"src\", \"/DreamProject/img/sonata/tab_001.png\");\r\n" + 
				"	\r\n" + 
				"	$(\".panel\").click(function(e) {\r\n" + 
				"		var paNum = $(this).data(\"panel\");\r\n" + 
				"		\r\n" + 
				"		for (var i = 0; i < 7; i++) {\r\n" + 
				"			$(\".panel\").children(\"img\").eq(i).attr(\"src\", \"/DreamProject/img/sonata/tab0\"+(i+1)+\".png\");\r\n" + 
				"		}\r\n" + 
				"		\r\n" + 
				"		$(this).children(\"img\").attr(\"src\", \"/DreamProject/img/sonata/tab_00\"+paNum+\".png\");\r\n" + 
				"		$(this).closest(\".graph\").next(\".graph_panel\").find(\".item\").find(\"img\").attr(\"src\", \"/DreamProject/img/sonata/tab0\"+paNum+\"_content.png\")\r\n" + 
				"	});\r\n" + 
				"	\r\n" + 
				"});\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_1_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata1\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_1_img\").attr(\"src\", \"/DreamProject/img/sonata/경쟁성비교1.png\");\r\n" + 
				"			$(\".snstool\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata1\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_1_img\").attr(\"src\", \"/DreamProject/img/sonata/경쟁성비교.png\");\r\n" + 
				"			$(\".snstool\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_2_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata2\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_2_img\").attr(\"src\", \"/DreamProject/img/sonata/hybrid1.png\");\r\n" + 
				"			$(\".snstool2\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata2\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_2_img\").attr(\"src\", \"/DreamProject/img/sonata/hybrid.png\");\r\n" + 
				"			$(\".snstool2\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_3_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata3\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_3_img\").attr(\"src\", \"/DreamProject/img/sonata/design1.png\");\r\n" + 
				"			$(\".snstool3\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata3\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_3_img\").attr(\"src\", \"/DreamProject/img/sonata/design.png\");\r\n" + 
				"			$(\".snstool3\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_4_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata4\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_4_img\").attr(\"src\", \"/DreamProject/img/sonata/tech1.png\");\r\n" + 
				"			$(\".snstool4\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata4\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_4_img\").attr(\"src\", \"/DreamProject/img/sonata/tech.png\");\r\n" + 
				"			$(\".snstool4\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_5_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata5\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_5_img\").attr(\"src\", \"/DreamProject/img/sonata/conv1.png\");\r\n" + 
				"			$(\".snstool5\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata5\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_5_img\").attr(\"src\", \"/DreamProject/img/sonata/conv.png\");\r\n" + 
				"			$(\".snstool5\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_6_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata6\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_6_img\").attr(\"src\", \"/DreamProject/img/sonata/safe1.png\");\r\n" + 
				"			$(\".snstool6\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata6\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_6_img\").attr(\"src\", \"/DreamProject/img/sonata/safe.png\");\r\n" + 
				"			$(\".snstool6\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_7_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata7\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_7_img\").attr(\"src\", \"/DreamProject/img/hd/price1.png\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata7\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_7_img\").attr(\"src\", \"/DreamProject/img/price.png\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_8_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata8\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_8_img\").attr(\"src\", \"/DreamProject/img/hd/제원1.png\");\r\n" + 
				"			\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata8\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_8_img\").attr(\"src\", \"/DreamProject/img/제원.png\");\r\n" + 
				"			\r\n" + 
				"		}\r\n" + 
				"	});\r\n" + 
				"}); \r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_9_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata9\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_9_img\").attr(\"src\", \"/DreamProject/img/hd/구매가이드1.png\");\r\n" + 
				"			\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata9\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_9_img\").attr(\"src\", \"/DreamProject/img/구애가이드.png\");\r\n" + 
				"			\r\n" + 
				"		}\r\n" + 
				"	});\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var width = $(window).width();\r\n" + 
				"	\r\n" + 
				"	$(\".mainHeader\").css({\r\n" + 
				"		\"width\": width + 10\r\n" + 
				"	});\r\n" + 
				"	$(\".mask\").css({\r\n" + 
				"		\"width\": (width + 10) + \"px\"\r\n" + 
				"	});\r\n" + 
				"	$(\".main-spot-item-background\").css({\r\n" + 
				"		\"width\": (width + 10) + \"px\"\r\n" + 
				"	});\r\n" + 
				"});\r\n" + 
				"\r\n" + 
				"$(window).resize(function() {\r\n" + 
				"	var width = $(window).width();\r\n" + 
				"	\r\n" + 
				"	$(\".mainHeader\").css({\r\n" + 
				"		\"width\": width + 10\r\n" + 
				"	});\r\n" + 
				"	$(\".mask\").css({\r\n" + 
				"		\"width\": (width + 10) + \"px\"\r\n" + 
				"	});\r\n" + 
				"	$(\".main-spot-item-background\").css({\r\n" + 
				"		\"width\": (width + 10) + \"px\"\r\n" + 
				"	});\r\n" + 
				"});\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"</script>\r\n" + 
				"<div style=\"position:absolute;top:0px;\">\r\n" + 
				"	<div class=\"mask\" > \r\n" + 
				"		<div class=\"mainHeader\" style=\"height: 660px; \">\r\n" + 
				"			<div class=\"main-spot-item-background\" style=\"background-image: url('/DreamProject/img/accent/show_room/bg_visual.jpg');\r\n" + 
				"			background-position: 50% 0; min-width: 930px; height: 660px; \">\r\n" + 
				"				<div class=\"main-spot-item-wrapper\" style=\"height: 660px; width: 930px; margin: 0 auto 0; position: relative;\"> 			  \r\n" + 
				"						<p class=\"main-spot-item-carfont\" style=\"position: absolute; left: 23px; top: 140px;\">\r\n" + 
				"							<img src=\"/DreamProject/img/accent/show_room/txt_visual.png\"/>\r\n" + 
				"						</p>\r\n" + 
				"						<div class=\"main-spot-item-img\" style=\"position: absolute; right: 30px; bottom: 32px;\">  \r\n" + 
				"							<img src=\"/DreamProject/img/accent/show_room/img_visual_car.png\">\r\n" + 
				"						</div>\r\n" + 
				"				</div>\r\n" + 
				"			</div>	  \r\n" + 
				"		</div> \r\n" + 
				"			\r\n" + 
				"			  \r\n" + 
				"		\r\n" + 
				"		<div style=\"width: 100%; min-width: 930px; position: relative; height: 101px; \r\n" + 
				"		background-image: url('/DreamProject/img/accent/show_room/back.png') ; \">\r\n" + 
				"		\r\n" + 
				"			<div style=\"position: relative; padding:0 25px;width:930px; margin: auto; height: 101px;\">\r\n" + 
				"				<div class=\"carbrand\" style=\"position: relative; height: 62px;\">\r\n" + 
				"					<div><img style=\"border: 0; vertical-align: top\" src=\"/DreamProject/img/accent/show_room/sonatahybrid.png\"></div>\r\n" + 
				"				</div>\r\n" + 
				"				<ul class=\"car_spec\" style=\"    width: 100%;\">\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"893\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\" src=\"/DreamProject/img/accent/show_room/경쟁성비교.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"894\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\" src=\"/DreamProject/img/accent/show_room/sonata.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"895\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/design.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"896\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/technology.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"897\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/convenience.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"898\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/safety.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"899\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/가격.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"900\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/제원.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"901\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/구매가이드.gif\"/></a></li>\r\n" + 
				"				</ul>\r\n" + 
				"			</div>\r\n" + 
				"			\r\n" + 
				"		</div>\r\n" + 
				"	</div>\r\n" + 
				"\r\n" + 
				"	<div class=\"sonata_main\">\r\n" + 
				"	<div class=\"quick_menu\">\r\n" + 
				"		<h4><img src=\"/DreamProject/img/quickmenu.png\" alt=\"QUICKMENU\"></h4>\r\n" + 
				"   		<a href=\"http://www.hyundai.com/kr/tdn/index.do\"><img src=\"/DreamProject/img/시승신청.png\" alt=\"시승센터\" class=\"menu\"></a>\r\n" + 
				"		<a href=\"https://logon.hyundai.com/kr/quotation/main.do?carcode=RD005\"><img src=/DreamProject/img/견적내기.png  alt=\"견적내기\" class=\"menu\"></a>\r\n" + 
				"		<a href=\"http://www.hyundai.com/kr/estimation/compare.do?carCd=RD005\"><img src=/DreamProject/img/경쟁차비교.png alt=\"경쟁차비교\" class=\"menu\"></a>\r\n" + 
				"		<a href=\"https://logon.hyundai.com/kr/ctlg/req/selectCtlgPaging.do?carSort=RD&carCd=RD005\"><img src=/DreamProject/img/카탈로그다운로드.png alt=\"카탈로그신청\" class=\"menu\"></a>\r\n" + 
				"		<a href=\"https://logon.hyundai.com/kr/pur/purMgmtFrontView.do\"><img src=\"/DreamProject/img/구매상담.png\"  alt=\"구매상담2\" class=\"menu\"></a>\r\n" + 
				"		<div class=\"top-button\">\r\n" + 
				"		<a href=\"#\"><img src=/DreamProject/img/btn_top.png alt=\"top\"></a>\r\n" + 
				"		</div>\r\n" + 
				"	</div>\r\n" + 
				"		\r\n" + 
				"	<div class=\"sonata_submain\" style=\"position:relative;\">\r\n" + 
				"		<div class=\"sonataDiv\" id=\"showroom-cont-893\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_1_img\" src=\"/DreamProject/img/sonata/경쟁성비교.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_1_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"\r\n" + 
				"			<div class=\"sonata1\" >\r\n" + 
				"				<span><img src=\"/DreamProject/img/sonata/내용1.png\" style=\"margin-bottom: 20px; margin-top: 20px;\"/></span>				\r\n" + 
				"					<div class=\"sonata_detail\">\r\n" + 
				"						<div class=\"graph\">				\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"1\"><img src=\"/DreamProject/img/sonata/tab01.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"2\"><img src=\"/DreamProject/img/sonata/tab02.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"3\"><img src=\"/DreamProject/img/sonata/tab03.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"4\"><img src=\"/DreamProject/img/sonata/tab04.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"5\"><img src=\"/DreamProject/img/sonata/tab05.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"6\"><img src=\"/DreamProject/img/sonata/tab06.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"7\"><img src=\"/DreamProject/img/sonata/tab07.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"						</div>\r\n" + 
				"						<div class=\"graph_panel\">\r\n" + 
				"							<div class=\"item\">\r\n" + 
				"								<img src=\"/DreamProject/img/sonata/tab01_content.png\"/>\r\n" + 
				"							</div>							\r\n" + 
				"						</div>\r\n" + 
				"					</div>\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"		\r\n" + 
				"		<!--  sonata Hybrid -->\r\n" + 
				"		\r\n" + 
				"		<div class=\"sonataDiv\" id=\"showroom-cont-894\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_2_img\" src=\"/DreamProject/img/sonata/hybrid.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_2_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool2\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"sonata2\">\r\n" + 
				"			<img src=\"/DreamProject/img/sonata/hybrid2.jpg\">\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			\r\n" + 
				"			<!--  Design -->\r\n" + 
				"			\r\n" + 
				"			<div class=\"sonataDiv\" id=\"showroom-cont-895\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_3_img\" src=\"/DreamProject/img/sonata/design.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_3_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool3\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"sonata3\">\r\n" + 
				"				<img src=\"/DreamProject/img/sonata/design2.jpg\">\r\n" + 
				"				<div class=\"slide\" style=\"position: relative; margin-top: 50px;\">\r\n" + 
				"				<div class=\"rolling_sonata\" >\r\n" + 
				"					<ul class= \"r_sonata\">\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/design3.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/design4.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/design5.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/design6.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"					</ul>\r\n" + 
				"	    		</div>\r\n" + 
				"            		<button class=\"next-btn\"><img src=\"/DreamProject/img/nextbtn.png\" alt=\"다음\"></button>   \r\n" + 
				"					<button class=\"prev-btn\"><img src=\"/DreamProject/img/prevbtn.png\" alt=\"이전\"></button>\r\n" + 
				"	    		</div>\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"		\r\n" + 
				"		<!-- Technology -->\r\n" + 
				"			<div class=\"sonataDiv\" id=\"showroom-cont-896\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_4_img\" src=\"/DreamProject/img/sonata/tech.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_4_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool4\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"sonata4\">\r\n" + 
				"				<img src=\"/DreamProject/img/sonata/tech2.jpg\"/>\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"		\r\n" + 
				"		<!-- convience -->\r\n" + 
				"		<div class=\"sonataDiv\" id=\"showroom-cont-897\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_5_img\" src=\"/DreamProject/img/sonata/conv.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_5_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool5\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"sonata5\">\r\n" + 
				"			<img src=\"/DreamProject/img/sonata/conv2.jpg\"/>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			\r\n" + 
				"			<!-- safety -->\r\n" + 
				"		<div class=\"sonataDiv\" id=\"showroom-cont-898\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_6_img\" src=\"/DreamProject/img/sonata/safe.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_6_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool6\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"sonata6\">\r\n" + 
				"				<img src=\"/DreamProject/img/sonata/safe2.jpg\"/>\r\n" + 
				"				<div class=\"slide\" style=\"position: relative;\" margin-top: 50px;>\r\n" + 
				"				<div class=\"rolling_sonata\" >\r\n" + 
				"					<ul class= \"r_sonata\">\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe3.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe4.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe5.jpg\"/>\r\n" + 
				"						</li>			\r\n" + 
				"					</ul>\r\n" + 
				"					<button class=\"prev-btn\"><img src=\"/DreamProject/img/prevbtn.png\" alt=\"이전\"></button>\r\n" + 
				"            		<button class=\"next-btn\"><img src=\"/DreamProject/img/nextbtn.png\" alt=\"다음\"></button>   \r\n" + 
				"	    		</div>\r\n" + 
				"	    		</div>\r\n" + 
				"	    		<img src=\"/DreamProject/img/sonata/safe6.jpg\"/>\r\n" + 
				"				<div class=\"slide\" style=\"position: relative;\">\r\n" + 
				"				<div class=\"rolling_sonata\" >\r\n" + 
				"					<ul class= \"r_sonata\">\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe7.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe8.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe9.jpg\"/>\r\n" + 
				"						</li>			\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe10.jpg\"/>\r\n" + 
				"						</li>			\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe11.jpg\"/>\r\n" + 
				"						</li>			\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe12.jpg\"/>\r\n" + 
				"						</li>			\r\n" + 
				"					</ul>\r\n" + 
				"					<button class=\"prev-btn\"><img src=\"/DreamProject/img/prevbtn.png\" alt=\"이전\"></button>\r\n" + 
				"            		<button class=\"next-btn\"><img src=\"/DreamProject/img/nextbtn.png\" alt=\"다음\"></button>   \r\n" + 
				"	    		</div>\r\n" + 
				"	    		</div>			\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			\r\n" + 
				"			<!-- 가격 -->\r\n" + 
				"			\r\n" + 
				"			<div style=\"width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;\" ></div>	\r\n" + 
				"				<div class=\"sonataDiv\" id=\"showroom-cont-899\">\r\n" + 
				"				<h2 style=\"display: inline-block;\"><img id=\"detail_7_img\" src=\"/DreamProject/img/price.png\"/></h2>\r\n" + 
				"				<div style=\"display: inline-block; float: right;\">\r\n" + 
				"					<span id=\"detail_7_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"sonata7\">\r\n" + 
				"				\r\n" + 
				"		 			2017년 10월 1일 기준 (단위 :0원)\r\n" + 
				"		 			<div class=\"pricewrapper\">\r\n" + 
				"		 				<div class=\"price\">\r\n" + 
				"		 			\r\n" + 
				"		 					<div class=\"content\" >\r\n" + 
				"					 			<ul class=\"carlist\" style=\"margin-top: 17px;\">\r\n" + 
				"									<li>\r\n" + 
				"										<a href=\"#\" style=\"color: #6cadf4;\">SONATA hybrid</a>\r\n" + 
				"									</li>\r\n" + 
				"								</ul>\r\n" + 
				"							</div>\r\n" + 
				"					\r\n" + 
				"				\r\n" + 
				"							<div class=\"Btn\">\r\n" + 
				"								<a href=\"#\">\r\n" + 
				"									<img src=\"/DreamProject/img/btn_price01.gif\" alt=\"트림비교\">\r\n" + 
				"								</a>\r\n" + 
				"								<a href=\"https://logon.hyundai.com/kr/quotation/main.do?carcode=RD005\">\r\n" + 
				"									<img src= \"/DreamProject/img/btn_price02.gif\" alt=\"견적내기\">\r\n" + 
				"								</a>\r\n" + 
				"								<a href=\"https://logon.hyundai.com/kr/ctlg/req/selectCtlgPaging.do?carSort=RD&carCd=RD005\">\r\n" + 
				"									<img src= \"/DreamProject/img/btn_price03.gif\" alt=\"카탈로그 다운로드\">\r\n" + 
				"								</a>\r\n" + 
				"								<a href=\"#\">\r\n" + 
				"									<img src= \"/DreamProject/img/btn_price04.gif\" alt=\"가격표 다운로드\">\r\n" + 
				"								</a>\r\n" + 
				"								<a href=\"http://www.hyundai.com/kr/blu/selectDlExpdList.do?carCd=RD005\">\r\n" + 
				"									<img src= \"/DreamProject/img/btn_price05.gif\" alt=\"취급설명서 다운로드\">\r\n" + 
				"								</a>\r\n" + 
				"							</div> \r\n" + 
				"					\r\n" + 
				"							<div class=\"list-wrapper\">\r\n" + 
				"								<ul class=\"list-type01\">\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>가격</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li>&middot; 세제 혜택 적용 후 판매가격 : 개별소비세 및 교육세 감면 기준임(130만원 한도)</li>\r\n" + 
				"											<li>&middot;세제 혜택 적용 후 가격은 판매조건 및 선택품목에 따라 달라질 수 있음</li>\r\n" + 
				"											<li>&middot;선택 품목의 가격은 세제혜택(개별소비세 및 교육세 감면) 적용 전 가격임</li>\r\n" + 
				"											<li>&middot;화이트 크림(WC9) 외장 컬러 선택 시 컬러 대금 추가됨(8만원)</li>								\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>7인치 디스플레이 오디오</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li>&middot;고해상도 7인치 터치 스크린, 라디오, MP3</li>\r\n" + 
				"											<li>&middot;폰 커넥티비티 기능 적용(Apple CarPlay, 미러링크)</li>\r\n" + 
				"											<li>&middot;스티어링 휠 음성인식 버튼은 Apple CarPlay 연동용 버튼임</li>\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>8인치 내비게이션</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li>&middot; 고해상도 8인치 터치 스크린, 지상파 DMB, 라디오, MP3재생, TPEG 서비스(교통정보 및 위험지역 알림 기능), 3D 지도, 32GB SD카드, 다국어 지원(한국어/영어)</li>\r\n" + 
				"											<li>&middot;지상파 DMB는 320X240 해상도를 지원하는 사양으로, DMB 사업자가 고화질 DMB(해상도 1,280X720) 방송으로 전환 등 송출방식 변경 또는 방송정책에 따라 지상파\r\n" + 
				"											<br/> DMB 수신이 불가할 수 있음</li>\r\n" + 
				"											<li>&middot;폰 커넥티비티 기능 적용(Apple CarPlay, 미러링크)</li>\r\n" + 
				"											<li>&middot;블루링크(텔레매틱스) 선택 시 내장형 음성인식, USB 동영상 재생 기능 추가 적용</li>\r\n" + 
				"											<li>&middot;블루링크(텔레매틱스) 미적용 시 스티어링 휠 음성인식 버튼은 Apple CarPlay 연동용 버튼임</li>\r\n" + 
				"										\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>멀티미디어</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li> &middot;  일반 사운드 시스템(7스피커) : 서브 우퍼, 외장앰프 포함</li>\r\n" + 
				"											<li> &middot;JBL 프리미엄 사운드 시스템(8스피커) : 센터스피커(1개), 미드레인지 스피커(2개), 프런트 도어 스피커(2개), 리어 도어 스피커(2개), 서브우퍼(1개), 외장앰프</li>\r\n" + 
				"											<li> &middot;CDP : 센터콘솔 암레스트 내부에 위치</li>\r\n" + 
				"											<li> &middot;AUX & USB 단자 : iPod 단자 겸용</li>\r\n" + 
				"											<li> &middot;블루투스 핸즈프리 : 오디오 스트리밍 기능 포함</li>\r\n" + 
				"											<li> &middot;Apple CarPlay : 아이폰5 이상 작동</li>\r\n" + 
				"											<li> &middot;미러링크 : 갤럭시 S8, 갤럭시 S7/S7 Edge, 갤럭시 S6/S6 Edge/S6 Edge Plus, 갤럭시 S5, 갤럭시 노트 4/5, 갤럭시 A5(2016)/A7(2016)/A8(2016) 限 작동</li>\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>블루링크(텔레매틱스)</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li> &middot; 자세한 사항은 블루링크 홈페이지(http://bluelink.hyundai.com) 참조 바랍니다.</li>\r\n" + 
				"											<li> &middot;기본서비스(2년 무료제공) : 스마트 컨트롤(원격공조제어, 주차위치확인, 목적지전송, 원격문열림/문잠김, 차량 상태확인), 차량 \r\n" + 
				"											<br/>관리(차량진단, 운행정보, 정기점검 리포트), 안전보안(SOS긴급출동, 에어백전개 자동통보, 도난추적, 도난경보 알림), 드라이빙(블루링크 길안내, 인터넷 목적지 검색)</li>\r\n" + 
				"											<li> &middot;블루링크 부가서비스(뉴 컨시어지) 별도 이용 가능(유료)</li>\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>기타</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li>&middot;  천연가죽 시트에는 부분적으로 인조가죽 및 기타 재질이 포함되어 있음</li>\r\n" + 
				"											<li>&middot;하이패스 시스템에는 장애인 통행료 자동할인 기능이 없음</li>\r\n" + 
				"											<li>&middot;운전석 자세 메모리 시스템(IMS) : 운전석 시트/아웃사이드 미러/클러스터 밝기 메모리 및 후진 시 아웃사이드 미러 하향조정 기능 포함</li>\r\n" + 
				"											<li>&middot;차체 자세 제어 장치(ESC) : ABS, EBD, BAS 기능 포함</li>\r\n" + 
				"											<li>&middot;파노라마 썬루프 선택 시 유광 가니쉬 / LED 룸램프 적용</li>\r\n" + 
				"											<li>&middot;스마트폰 무선충전 시스템은 모든 도어를 닫은 후 작동 가능</li>\r\n" + 
				"											<li>&middot;주행 보조 사양(AEB : 자동 긴급 제동 시스템 등)은 위험도가 높은 특정 주행상황에서 운전자를 보조\r\n" + 
				"											<br/>* 상세 작동 조건은 취급 설명서 참조</li>\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>컬러 운영</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li>&middot;블랙 인테리어 전트림 기본 적용</li>\r\n" + 
				"											<li>&middot;하버시티(RC9) 외장컬러 선택 가능 모델 : 하이브리드</li>\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"								</ul>\r\n" + 
				"							</div> 	\r\n" + 
				"							<img src=\"/DreamProject/img/sonata/price.jpg\"/>\r\n" + 
				"						</div>\r\n" + 
				"					</div>\r\n" + 
				"				</div>	\r\n" + 
				"			</div>\r\n" + 
				"			\r\n" + 
				"			<!-- 제원 -->\r\n" + 
				"			<div id=\"showroom-cont-900\">\r\n" + 
				"				<h2 style=\"display: inline-block;\">\r\n" + 
				"					<img id=\"detail_8_img\" src=\"/DreamProject/img/제원.png\" />\r\n" + 
				"				</h2>\r\n" + 
				"\r\n" + 
				"				<div style=\"display: inline-block; float: right;\">\r\n" + 
				"\r\n" + 
				"					<span id=\"detail_8_Btn\"><img\r\n" + 
				"						src=\"/DreamProject/img/hd/down.PNG\" /></span>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"sonata8\">\r\n" + 
				"\r\n" + 
				"					<div class=\"sonata_detail\">\r\n" + 
				"						<img src=\"/DreamProject/img/sonata/제원.gif\" />\r\n" + 
				"					</div>\r\n" + 
				"					<div class=\"detail-wrapper\">\r\n" + 
				"						<table class=\"detail\">\r\n" + 
				"							<thead>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<th scope=\"col\">구분</th>\r\n" + 
				"									<th scope=\"col\">2.0 하이브리드</th>\r\n" + 
				"								</tr>\r\n" + 
				"							</thead>\r\n" + 
				"\r\n" + 
				"							<tbody style=\"text-align: center;\">\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>전장 (mm)</td>\r\n" + 
				"									<td>4,855</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>전폭 (mm)</td>\r\n" + 
				"									<td>1,865</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>전고 (mm)</td>\r\n" + 
				"									<td>1,475</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>축간거리 (mm)</td>\r\n" + 
				"									<td>2,805</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>윤거 전 (mm)</td>\r\n" + 
				"									<td>1,614 (16\"), 1,602 (17\")</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>윤거 후 (mm)</td>\r\n" + 
				"									<td>1,621(16\"), 1,609(17\")</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>엔진형식</td>\r\n" + 
				"									<td>누우 (ν) 2.0 GDi</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>배기량 (cc)</td>\r\n" + 
				"									<td>1,999</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>최고출력 (PS/rpm)</td>\r\n" + 
				"									<td>156/6,000</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>최대토크 (kg.m/rpm)</td>\r\n" + 
				"									<td>19.3/5,000</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>연료탱크용량 (ℓ)</td>\r\n" + 
				"									<td>60</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>모터형식</td>\r\n" + 
				"									<td>영구자석형 동기모터</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>모터 최고출력 (PS/rpm)</td>\r\n" + 
				"									<td>51(38kW)/1,770~2,000</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>모터 최대토크 (kg.m/rpm)</td>\r\n" + 
				"									<td>20.9(205Nm)/1,770</td>\r\n" + 
				"								</tr>\r\n" + 
				"							</tbody>\r\n" + 
				"						</table>\r\n" + 
				"					</div>\r\n" + 
				"\r\n" + 
				"					<div>\r\n" + 
				"						<div class=\"detail-wrapper\">\r\n" + 
				"							<table class=\"detail\">\r\n" + 
				"								<thead>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<th scope=\"col\" colspan=\"2\">정부공인 표준연비 및 등급</th>\r\n" + 
				"									</tr>\r\n" + 
				"								</thead>\r\n" + 
				"								<tbody style=\"text-align: center;\">\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<th rowspan=\"2\" style=\"border-right: 0;\">Accent</th>\r\n" + 
				"										<td>2.0 하이브리드(자동6단 - 16\" 타이어)</td>\r\n" + 
				"										<td class=\"left last\">정부 신고 연비 - 복합 18.0km/ℓ(도심 : 17.7km/ℓ, 고속도로 : 18.3km/ℓ)<br /> \r\n" + 
				"											배기량 : 1,999cc I 공차중량 : 1,585kg I 타이어 16inch I CO2 배출량 : 88g/km I 자동6단 (1등급)\r\n" + 
				"										</td>\r\n" + 
				"									</tr>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<td>2.0 하이브리드(자동6단 - 17\" 타이어)</td>\r\n" + 
				"										<td class=\"left last\">정부 신고 연비 - 복합 17.4km/ℓ(도심 : 17.0km/ℓ, 고속도로 : 17.9km/ℓ)<br /> \r\n" + 
				"										배기량 : 1,999cc I 공차중량 : 1,595kg I 타이어 17inch I CO2 배출량 : 91g/km I 자동6단 (1등급)\r\n" + 
				"										</td>\r\n" + 
				"									</tr>\r\n" + 
				"								</tbody>\r\n" + 
				"							</table>\r\n" + 
				"						</div>\r\n" + 
				"						<div class=\"detail-wrapper\">\r\n" + 
				"							<table class=\"detail\">\r\n" + 
				"								<thead>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<th scope=\"col\" colspan=\"5\">타이어 효율 등급</th>\r\n" + 
				"									</tr>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<th scope=\"col\">타이어 제조사</th>\r\n" + 
				"										<th scope=\"col\">타이어 모델명</th>\r\n" + 
				"										<th scope=\"col\">타이어 규격</th>\r\n" + 
				"										<th scope=\"col\">회전저항(계수) 등급(RRC)</th>\r\n" + 
				"										<th scope=\"col\">젖은 노면 제동력 지수 등급(G)</th>\r\n" + 
				"									</tr>\r\n" + 
				"								</thead>\r\n" + 
				"								<tbody>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<td>Kumho</td>\r\n" + 
				"										<td>Solus TA31</td>\r\n" + 
				"										<td>205/65R16 95H</td>\r\n" + 
				"										<td>3</td>\r\n" + 
				"										<td class=\"last\">3</td>\r\n" + 
				"									</tr>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<td>Nexen</td>\r\n" + 
				"										<td>N'PRIZ AH8</td>\r\n" + 
				"										<td>215/55R17 94V</td>\r\n" + 
				"										<td>3</td>\r\n" + 
				"										<td class=\"last\">3</td>\r\n" + 
				"									</tr>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<td>Hankook</td>\r\n" + 
				"										<td>kinergy GT</td>\r\n" + 
				"										<td>205/65R16 95H</td>\r\n" + 
				"										<td>3</td>\r\n" + 
				"										<td class=\"last\">3</td>\r\n" + 
				"									</tr>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<td>Hankook</td>\r\n" + 
				"										<td>kinergy GT</td>\r\n" + 
				"										<td>215/55R17 94V</td>\r\n" + 
				"										<td>3</td>\r\n" + 
				"										<td class=\"last\">3</td>\r\n" + 
				"									</tr>\r\n" + 
				"								</tbody>\r\n" + 
				"\r\n" + 
				"							</table>\r\n" + 
				"						</div>\r\n" + 
				"						<div class=\"information\">\r\n" + 
				"							<ul class=\"list-type01\">\r\n" + 
				"								<li><span class=\"section1\"></span> 위 연비는 표준모드에 의한 연비로서\r\n" + 
				"									도로상태ㆍ운전방법ㆍ차량적재ㆍ정비상태 및 외기온도에 따라 실 주행연비와 차이가 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 위 쇼룸의 사진에는 선택사양이 적용된 경우가\r\n" + 
				"									있으므로 실제 구입차량과는 다른 점이 있을 수도 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 위 쇼룸에 표시된 사양, 컬러 및 제원은\r\n" + 
				"									차의 외관 및 성능 개선을 위해 변경될 수 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 상기 엔진성능은 NET수치임.\r\n" + 
				"									“NET수치”란 국토교통부에서 97년부터 적용을 요구한 법규사항이며 배기가스의 저항을 감안한 신측정법으로 기존의\r\n" + 
				"									GROSS 출력수치와 대비 할 <br /> 때 약간의 수치저하가 발생할 수 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 본 쇼룸의 차량컬러는 실제 차량의 컬러와는\r\n" + 
				"									다소 차이가 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 본 쇼룸의 이미지는 고객의 이해를 돕기위해\r\n" + 
				"									연출된 것으로 실제 차량과 다를 수 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 본 쇼룸 상의 사양은 모델에 따라 다르게\r\n" + 
				"									적용되며, 옵션 사양이 포함되어 있습니다. 모델별 자세한 사양은 해당월의 가격표를 참고하시기 바랍니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 운전교습용 차량은 일부 사양이 다르게 운영될\r\n" + 
				"									수 있습니다. 자세한 사양은 해당월의 가격표를 참고하시기 바랍니다.</li>\r\n" + 
				"								<li style=\"color: #3576BC;\"><span class=\"section1\"></span>\r\n" + 
				"									현대자동차는 지점/대리점의 카마스터를 통해서만 판매하며, 전국 어느 곳에서나 같은 제품 같은 가격으로 바른 거래를\r\n" + 
				"									실천하고 있습니다</li>\r\n" + 
				"								<li style=\"color: #3576BC;\"><span class=\"section1\"></span>\r\n" + 
				"									당사에서 지정하는 순정품 (엔진오일, 변속기오일 등)을 사용하지 않거나 불량 연료를 사용했을 경우에는 차량에\r\n" + 
				"									치명적인 손상을 줄 수 있습니다</li>\r\n" + 
				"								<li style=\"color: #3576BC;\"><span class=\"section1\"></span>\r\n" + 
				"									쇼룸에 수록된 신기술 및 신사양에 대한 자세한 내용은 취급설명서를 참조하시기 바랍니다.</li>\r\n" + 
				"							</ul>\r\n" + 
				"						</div>\r\n" + 
				"					</div>\r\n" + 
				"				</div>\r\n" + 
				"			</div>\r\n" + 
				"<!--  가격 -->\r\n" + 
				"			<div class=\"last_sonata\" id=\"showroom-cont-901\">\r\n" + 
				"	    			<h2 style=\"display: inline-block;\"><img id=\"detail_9_img\" src=\"/DreamProject/img/구매가이드.png\"/></h2>\r\n" + 
				"	    			<div style=\"display: inline-block; float: right;\">\r\n" + 
				"	    			<span id=\"detail_9_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"	    			</div>\r\n" + 
				"				<div class=\"sonata9\">\r\n" + 
				"	    			<div class=\"purchase-guide\">\r\n" + 
				"           				 <div class=\"odd\">\r\n" + 
				"                			<h4><img src=\"/DreamProject/img/견적.gif\" alt=\"견적\"></h4>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">견적내기<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"               			 	<h5 class=\"link-title\"><a href=\"#\">경쟁차 비교<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">이달의 구매혜택<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                		<div class=\"icon1\"><img src=\"/DreamProject/img/견적이미지.gif\">\r\n" + 
				"                		</div>\r\n" + 
				"           			 	</div>\r\n" + 
				"           			 	<div class=\"odd\">\r\n" + 
				"                			<h4><img src=\"/DreamProject/img/신청.gif\" alt=\"신청\"></h4>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">카탈로그 신청  <img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                		<div class=\"icon\"><img src=\"/DreamProject/img/신청이미지.gif\">\r\n" + 
				"                		</div>\r\n" + 
				"           			 	</div>\r\n" + 
				"           			 	<div class=\"odd\">\r\n" + 
				"                			<h4><img src=\"/DreamProject/img/상담.gif\" alt=\"상담\"></h4>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">구매상담신청<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"               			 	<h5 class=\"link-title\"><a href=\"#\">전시차 조회<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">지점/대리점 조회<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                		<div class=\"icon1\"><img src=\"/DreamProject/img/상담이미지.gif\">\r\n" + 
				"                		</div>\r\n" + 
				"           			 	</div>\r\n" + 
				"           			 	<div class=\"odd\">\r\n" + 
				"                			<h4><img src=\"/DreamProject/img/시승.gif\" alt=\"시승\"></h4>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">시승서비스<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                		<div class=\"icon\"><img src=\"/DreamProject/img/시승이미지.gif\">\r\n" + 
				"                		</div>\r\n" + 
				"           			 	</div>\r\n" + 
				"           			 	</div>\r\n" + 
				"           			 </div>\r\n" + 
				"      			</div>\r\n" + 
				"	\r\n" + 
				"		</div>\r\n" + 
				"	</div>\r\n" + 
				"");
		carService.insertNewCar(carVO);
	}

	@RequestMapping("/car/update")
	public void updateCar() {
		CarVO carVO = new CarVO();
		carVO.setCarId(3);
		carVO.setCarName("쏘나타 hybrid");
		carVO.setCarTypeFlag("ECO");
		carVO.setHtml("<link rel=\"stylesheet\" href=\"/DreamProject/css/sonata-style.css\" />\r\n" + 
				"<script type=\"text/javascript\" src=\"/DreamProject/js/jquery-3.2.1.min.js\"></script>\r\n" + 
				"<script type=\"text/javascript\" src=\"/DreamProject/js/dream_slider.js\"></script>\r\n" + 
				"<script type=\"text/javascript\">\r\n" + 
				"\r\n" + 
				"$().ready(function(){\r\n" + 
				"	\r\n" + 
				"	$(\".rolling_sonata ul\").each(function(idx, obj) {\r\n" + 
				"		initSlideListTransition($(obj));\r\n" + 
				"	});\r\n" + 
				"	//slideListTransition($(\".rolling_kona1 ul\"), 1, 5000, function(){}, function(){});\r\n" + 
				"	$(\".prev-btn img\").click(function(){\r\n" + 
				"		slideListTransition($(this).closest(\"div\").find(\"ul\"), +1, 3000, function(){}, function(){});\r\n" + 
				"	});\r\n" + 
				"	$(\".next-btn img\").click(function(){\r\n" + 
				"		slideListTransition($(this).closest(\"div\").find(\"ul\"), -1, 3000, function(){}, function(){});\r\n" + 
				"	});\r\n" + 
				"	\r\n" + 
				"	$(\".moveBtn\").click(function(e) {\r\n" + 
				"		var movePage = \"#showroom-cont-\" + $(this).data(\"page\");\r\n" + 
				"		\r\n" + 
				"		var topPosition = $(\"#showroom-cont-\" + $(this).data(\"page\")).offset().top;\r\n" + 
				"		\r\n" + 
				"		$(\"html, \" + movePage).stop().animate({scrollTop : topPosition + \"px\"});\r\n" + 
				"	});\r\n" + 
				"});\r\n" + 
				"\r\n" + 
				"function popupOpen(){\r\n" + 
				"\r\n" + 
				"	var popUrl = \"https://www.facebook.com/login.php?skip_api_login=1&api_key=140586622674265&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fv2.5%2Fdialog%2Fshare%3Fredirect_uri%3Dhttp%253A%252F%252Fs7.addthis.com%252Fstatic%252Fthankyou.html%26display%3Dpopup%26href%3Dhttp%253A%252F%252Fwww.hyundai.com%252Fkr%252Fshowroom.do%253FcarCd1%253DRD005%2526WT.ac%253Dgnb_carkind_accent%2523a%26title%3D%25EC%2597%2591%25EC%2584%25BC%25ED%258A%25B8%2B%25EA%25B3%25B5%25EC%258B%259D%2B%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580%2B%257C%2B%25ED%2598%2584%25EB%258C%2580%25EC%259E%2590%25EB%258F%2599%25EC%25B0%25A8%26description%26picture%26client_id%3D140586622674265%26ret%3Dlogin&cancel_url=http%3A%2F%2Fs7.addthis.com%2Fstatic%2Fthankyou.html%3Ferror_code%3D4201%26error_message%3DUser%2Bcanceled%2Bthe%2BDialog%2Bflow%23_%3D_&display=popup&locale=ko_KR\";	//팝업창에 출력될 페이지 URL\r\n" + 
				"\r\n" + 
				"	var popOption = \"width=400, height=400, resizable=no, scrollbars=no, status=no;\";    //팝업창 옵션(optoin)\r\n" + 
				"\r\n" + 
				"		window.open(popUrl,\"\",popOption);\r\n" + 
				"\r\n" + 
				"}\r\n" + 
				"\r\n" + 
				"function popupOpen1(){\r\n" + 
				"\r\n" + 
				"	var popUrl = \"https://twitter.com/intent/tweet?text=%EC%97%91%EC%84%BC%ED%8A%B8%20%EA%B3%B5%EC%8B%9D%20%ED%8E%98%EC%9D%B4%EC%A7%80%20%7C%20%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A8&url=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent%23a&related=\";	//팝업창에 출력될 페이지 URL\r\n" + 
				"\r\n" + 
				"	var popOption = \"width=400, height=400, resizable=no, scrollbars=no, status=no;\";    //팝업창 옵션(optoin)\r\n" + 
				"\r\n" + 
				"		window.open(popUrl,\"\",popOption);\r\n" + 
				"\r\n" + 
				"}\r\n" + 
				"\r\n" + 
				"function popupOpen2(){\r\n" + 
				"\r\n" + 
				"	var popUrl = \"https://story.kakao.com/s/login?continue=https%3A%2F%2Fstory.kakao.com%2Fshare%3Furl%3Dhttp%253A%252F%252Fwww.hyundai.com%252Fkr%252Fshowroom.do%253FcarCd1%253DRD005%2526WT.ac%253Dgnb_carkind_accent%2523a&display=popup&referrer=http://www.addthis.com/bookmark.php?v=300&winname=addthis&pub=ra-58a563fba1b0c343&source=men-300&lng=ko&s=kakao&url=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent%23a&title=%EC%97%91%EC%84%BC%ED%8A%B8%20%EA%B3%B5%EC%8B%9D%20%ED%8E%98%EC%9D%B4%EC%A7%80%20%7C%20%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A8&ate=AT-ra-58a563fba1b0c343/-/-/59e557523450e118/7&frommenu=1&uid=59a61694d017df69&ct=1&uct=1&pre=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent&tt=0&captcha_provider=recaptcha2&pro=0 \";\r\n" + 
				"	\r\n" + 
				"	var popOption = \"width=400, height=400, resizable=no, scrollbars=no, status=no;\";    //팝업창 옵션(optoin)\r\n" + 
				"\r\n" + 
				"		window.open(popUrl,\"\",popOption);\r\n" + 
				"}\r\n" + 
				"	\r\n" + 
				"function popupOpen3(){\r\n" + 
				"\r\n" + 
				"	var popUrl = \" https://plus.google.com/share?url=http%3A%2F%2Fwww.hyundai.com%2Fkr%2Fshowroom.do%3FcarCd1%3DRD005%26WT.ac%3Dgnb_carkind_accent%23a&t=%EC%97%91%EC%84%BC%ED%8A%B8+%EA%B3%B5%EC%8B%9D+%ED%8E%98%EC%9D%B4%EC%A7%80+%7C+%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A8 \";\r\n" + 
				"	\r\n" + 
				"	var popOption = \"width=400, height=400, resizable=no, scrollbars=no, status=no;\";    //팝업창 옵션(optoin)\r\n" + 
				"\r\n" + 
				"		window.open(popUrl,\"\",popOption);\r\n" + 
				"\r\n" + 
				"}\r\n" + 
				"\r\n" + 
				"$( function() {\r\n" + 
				"\r\n" + 
				"	$(\".panel\").children(\"img\").eq(0).attr(\"src\", \"/DreamProject/img/sonata/tab_001.png\");\r\n" + 
				"	\r\n" + 
				"	$(\".panel\").click(function(e) {\r\n" + 
				"		var paNum = $(this).data(\"panel\");\r\n" + 
				"		\r\n" + 
				"		for (var i = 0; i < 7; i++) {\r\n" + 
				"			$(\".panel\").children(\"img\").eq(i).attr(\"src\", \"/DreamProject/img/sonata/tab0\"+(i+1)+\".png\");\r\n" + 
				"		}\r\n" + 
				"		\r\n" + 
				"		$(this).children(\"img\").attr(\"src\", \"/DreamProject/img/sonata/tab_00\"+paNum+\".png\");\r\n" + 
				"		$(this).closest(\".graph\").next(\".graph_panel\").find(\".item\").find(\"img\").attr(\"src\", \"/DreamProject/img/sonata/tab0\"+paNum+\"_content.png\")\r\n" + 
				"	});\r\n" + 
				"	\r\n" + 
				"});\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_1_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata1\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_1_img\").attr(\"src\", \"/DreamProject/img/sonata/경쟁성비교1.png\");\r\n" + 
				"			$(\".snstool\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata1\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_1_img\").attr(\"src\", \"/DreamProject/img/sonata/경쟁성비교.png\");\r\n" + 
				"			$(\".snstool\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_2_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata2\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_2_img\").attr(\"src\", \"/DreamProject/img/sonata/hybrid1.png\");\r\n" + 
				"			$(\".snstool2\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata2\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_2_img\").attr(\"src\", \"/DreamProject/img/sonata/hybrid.png\");\r\n" + 
				"			$(\".snstool2\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_3_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata3\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_3_img\").attr(\"src\", \"/DreamProject/img/sonata/design1.png\");\r\n" + 
				"			$(\".snstool3\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata3\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_3_img\").attr(\"src\", \"/DreamProject/img/sonata/design.png\");\r\n" + 
				"			$(\".snstool3\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_4_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata4\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_4_img\").attr(\"src\", \"/DreamProject/img/sonata/tech1.png\");\r\n" + 
				"			$(\".snstool4\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata4\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_4_img\").attr(\"src\", \"/DreamProject/img/sonata/tech.png\");\r\n" + 
				"			$(\".snstool4\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_5_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata5\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_5_img\").attr(\"src\", \"/DreamProject/img/sonata/conv1.png\");\r\n" + 
				"			$(\".snstool5\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata5\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_5_img\").attr(\"src\", \"/DreamProject/img/sonata/conv.png\");\r\n" + 
				"			$(\".snstool5\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_6_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata6\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_6_img\").attr(\"src\", \"/DreamProject/img/sonata/safe1.png\");\r\n" + 
				"			$(\".snstool6\").css(\"display\", \"none\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata6\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_6_img\").attr(\"src\", \"/DreamProject/img/sonata/safe.png\");\r\n" + 
				"			$(\".snstool6\").css(\"display\", \"inline-block\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_7_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata7\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_7_img\").attr(\"src\", \"/DreamProject/img/hd/price1.png\");\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata7\").slideToggle(\"slow\");\r\n" + 
				"			$(\"#detail_7_img\").attr(\"src\", \"/DreamProject/img/price.png\");\r\n" + 
				"		}\r\n" + 
				"	});		\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_8_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata8\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_8_img\").attr(\"src\", \"/DreamProject/img/hd/제원1.png\");\r\n" + 
				"			\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata8\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_8_img\").attr(\"src\", \"/DreamProject/img/제원.png\");\r\n" + 
				"			\r\n" + 
				"		}\r\n" + 
				"	});\r\n" + 
				"}); \r\n" + 
				"$(function() {\r\n" + 
				"	var isClick = false;\r\n" + 
				"	$(\"#detail_9_Btn\").click(function (){ \r\n" + 
				"		if (!isClick) {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/up.PNG\");\r\n" + 
				"			$(\".sonata9\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_9_img\").attr(\"src\", \"/DreamProject/img/hd/구매가이드1.png\");\r\n" + 
				"			\r\n" + 
				"		}\r\n" + 
				"		else {\r\n" + 
				"			isClick = !isClick;\r\n" + 
				"			$(this).find(\"img\").attr(\"src\", \"/Board1/img/hd/down.PNG\");\r\n" + 
				"			$(\".sonata9\").slideToggle(\"slow\"); \r\n" + 
				"			$(\"#detail_9_img\").attr(\"src\", \"/DreamProject/img/구애가이드.png\");\r\n" + 
				"			\r\n" + 
				"		}\r\n" + 
				"	});\r\n" + 
				"});\r\n" + 
				"$(function() {\r\n" + 
				"	var width = $(window).width();\r\n" + 
				"	\r\n" + 
				"	$(\".mainHeader\").css({\r\n" + 
				"		\"width\": width + 10\r\n" + 
				"	});\r\n" + 
				"	$(\".mask\").css({\r\n" + 
				"		\"width\": (width + 10) + \"px\"\r\n" + 
				"	});\r\n" + 
				"	$(\".main-spot-item-background\").css({\r\n" + 
				"		\"width\": (width + 10) + \"px\"\r\n" + 
				"	});\r\n" + 
				"});\r\n" + 
				"\r\n" + 
				"$(window).resize(function() {\r\n" + 
				"	var width = $(window).width();\r\n" + 
				"	\r\n" + 
				"	$(\".mainHeader\").css({\r\n" + 
				"		\"width\": width + 10\r\n" + 
				"	});\r\n" + 
				"	$(\".mask\").css({\r\n" + 
				"		\"width\": (width + 10) + \"px\"\r\n" + 
				"	});\r\n" + 
				"	$(\".main-spot-item-background\").css({\r\n" + 
				"		\"width\": (width + 10) + \"px\"\r\n" + 
				"	});\r\n" + 
				"});\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"</script>\r\n" + 
				"<div style=\"position:absolute;top:0px;\">\r\n" + 
				"	<div class=\"mask\" > \r\n" + 
				"		<div class=\"mainHeader\" style=\"height: 660px; \">\r\n" + 
				"			<div class=\"main-spot-item-background\" style=\"background-image: url('/DreamProject/img/accent/show_room/bg_visual.jpg');\r\n" + 
				"			background-position: 50% 0; min-width: 930px; height: 660px; \">\r\n" + 
				"				<div class=\"main-spot-item-wrapper\" style=\"height: 660px; width: 930px; margin: 0 auto 0; position: relative;\"> 			  \r\n" + 
				"						<p class=\"main-spot-item-carfont\" style=\"position: absolute; left: 23px; top: 140px;\">\r\n" + 
				"							<img src=\"/DreamProject/img/accent/show_room/txt_visual.png\"/>\r\n" + 
				"						</p>\r\n" + 
				"						<div class=\"main-spot-item-img\" style=\"position: absolute; right: 30px; bottom: 32px;\">  \r\n" + 
				"							<img src=\"/DreamProject/img/accent/show_room/img_visual_car.png\">\r\n" + 
				"						</div>\r\n" + 
				"				</div>\r\n" + 
				"			</div>	  \r\n" + 
				"		</div> \r\n" + 
				"			\r\n" + 
				"			  \r\n" + 
				"		\r\n" + 
				"		<div style=\"width: 100%; min-width: 930px; position: relative; height: 101px; \r\n" + 
				"		background-image: url('/DreamProject/img/accent/show_room/back.png') ; \">\r\n" + 
				"		\r\n" + 
				"			<div style=\"position: relative; padding:0 25px;width:930px; margin: auto; height: 101px;\">\r\n" + 
				"				<div class=\"carbrand\" style=\"position: relative; height: 62px;\">\r\n" + 
				"					<div><img style=\"border: 0; vertical-align: top\" src=\"/DreamProject/img/accent/show_room/sonatahybrid.png\"></div>\r\n" + 
				"				</div>\r\n" + 
				"				<ul class=\"car_spec\" style=\"    width: 100%;\">\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"893\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\" src=\"/DreamProject/img/accent/show_room/경쟁성비교.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"894\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\" src=\"/DreamProject/img/accent/show_room/sonata.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"895\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/design.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"896\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/technology.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"897\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/convenience.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"898\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/safety.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"899\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/가격.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"900\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/제원.gif\"/></a></li>\r\n" + 
				"					<li style=\"float: left;\"><a style=\"display: block;\" class=\"moveBtn\" data-page=\"901\" href=\"javascript:void(0)\"><img style=\"border: 0; vertical-align: top;\"  src=\"/DreamProject/img/accent/show_room/구매가이드.gif\"/></a></li>\r\n" + 
				"				</ul>\r\n" + 
				"			</div>\r\n" + 
				"			\r\n" + 
				"		</div>\r\n" + 
				"	</div>\r\n" + 
				"\r\n" + 
				"	<div class=\"sonata_main\">\r\n" + 
				"	<div class=\"quick_menu\">\r\n" + 
				"		<h4><img src=\"/DreamProject/img/quickmenu.png\" alt=\"QUICKMENU\"></h4>\r\n" + 
				"   		<a href=\"http://www.hyundai.com/kr/tdn/index.do\"><img src=\"/DreamProject/img/시승신청.png\" alt=\"시승센터\" class=\"menu\"></a>\r\n" + 
				"		<a href=\"https://logon.hyundai.com/kr/quotation/main.do?carcode=RD005\"><img src=/DreamProject/img/견적내기.png  alt=\"견적내기\" class=\"menu\"></a>\r\n" + 
				"		<a href=\"http://www.hyundai.com/kr/estimation/compare.do?carCd=RD005\"><img src=/DreamProject/img/경쟁차비교.png alt=\"경쟁차비교\" class=\"menu\"></a>\r\n" + 
				"		<a href=\"https://logon.hyundai.com/kr/ctlg/req/selectCtlgPaging.do?carSort=RD&carCd=RD005\"><img src=/DreamProject/img/카탈로그다운로드.png alt=\"카탈로그신청\" class=\"menu\"></a>\r\n" + 
				"		<a href=\"https://logon.hyundai.com/kr/pur/purMgmtFrontView.do\"><img src=\"/DreamProject/img/구매상담.png\"  alt=\"구매상담2\" class=\"menu\"></a>\r\n" + 
				"		<div class=\"top-button\">\r\n" + 
				"		<a href=\"#\"><img src=/DreamProject/img/btn_top.png alt=\"top\"></a>\r\n" + 
				"		</div>\r\n" + 
				"	</div>\r\n" + 
				"		\r\n" + 
				"	<div class=\"sonata_submain\" style=\"position:relative;\">\r\n" + 
				"		<div class=\"sonataDiv\" id=\"showroom-cont-893\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_1_img\" src=\"/DreamProject/img/sonata/경쟁성비교.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_1_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"\r\n" + 
				"			<div class=\"sonata1\" >\r\n" + 
				"				<span><img src=\"/DreamProject/img/sonata/내용1.png\" style=\"margin-bottom: 20px; margin-top: 20px;\"/></span>				\r\n" + 
				"					<div class=\"sonata_detail\">\r\n" + 
				"						<div class=\"graph\">				\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"1\"><img src=\"/DreamProject/img/sonata/tab01.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"2\"><img src=\"/DreamProject/img/sonata/tab02.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"3\"><img src=\"/DreamProject/img/sonata/tab03.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"4\"><img src=\"/DreamProject/img/sonata/tab04.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"5\"><img src=\"/DreamProject/img/sonata/tab05.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"6\"><img src=\"/DreamProject/img/sonata/tab06.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"								<div class=\"item\">\r\n" + 
				"									<a class=\"panel\" data-panel=\"7\"><img src=\"/DreamProject/img/sonata/tab07.png\"/></a>\r\n" + 
				"								</div>\r\n" + 
				"							\r\n" + 
				"						</div>\r\n" + 
				"						<div class=\"graph_panel\">\r\n" + 
				"							<div class=\"item\">\r\n" + 
				"								<img src=\"/DreamProject/img/sonata/tab01_content.png\"/>\r\n" + 
				"							</div>							\r\n" + 
				"						</div>\r\n" + 
				"					</div>\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"		\r\n" + 
				"		<!--  sonata Hybrid -->\r\n" + 
				"		\r\n" + 
				"		<div class=\"sonataDiv\" id=\"showroom-cont-894\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_2_img\" src=\"/DreamProject/img/sonata/hybrid.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_2_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool2\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"sonata2\">\r\n" + 
				"			<img src=\"/DreamProject/img/sonata/hybrid2.jpg\">\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			\r\n" + 
				"			<!--  Design -->\r\n" + 
				"			\r\n" + 
				"			<div class=\"sonataDiv\" id=\"showroom-cont-895\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_3_img\" src=\"/DreamProject/img/sonata/design.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_3_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool3\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"sonata3\">\r\n" + 
				"				<img src=\"/DreamProject/img/sonata/design2.jpg\">\r\n" + 
				"				<div class=\"slide\" style=\"position: relative; margin-top: 50px;\">\r\n" + 
				"				<div class=\"rolling_sonata\" >\r\n" + 
				"					<ul class= \"r_sonata\">\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/design3.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/design4.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/design5.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/design6.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"					</ul>\r\n" + 
				"	    		</div>\r\n" + 
				"            		<button class=\"next-btn\"><img src=\"/DreamProject/img/nextbtn.png\" alt=\"다음\"></button>   \r\n" + 
				"					<button class=\"prev-btn\"><img src=\"/DreamProject/img/prevbtn.png\" alt=\"이전\"></button>\r\n" + 
				"	    		</div>\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"		\r\n" + 
				"		<!-- Technology -->\r\n" + 
				"			<div class=\"sonataDiv\" id=\"showroom-cont-896\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_4_img\" src=\"/DreamProject/img/sonata/tech.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_4_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool4\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"sonata4\">\r\n" + 
				"				<img src=\"/DreamProject/img/sonata/tech2.jpg\"/>\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"		\r\n" + 
				"		<!-- convience -->\r\n" + 
				"		<div class=\"sonataDiv\" id=\"showroom-cont-897\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_5_img\" src=\"/DreamProject/img/sonata/conv.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_5_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool5\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"sonata5\">\r\n" + 
				"			<img src=\"/DreamProject/img/sonata/conv2.jpg\"/>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			\r\n" + 
				"			<!-- safety -->\r\n" + 
				"		<div class=\"sonataDiv\" id=\"showroom-cont-898\">\r\n" + 
				"			<h2 style=\"display: inline-block;\"><img id=\"detail_6_img\" src=\"/DreamProject/img/sonata/safe.png\"/></h2>\r\n" + 
				"			<div style=\"display: inline-block; position:absolute; right:0px;\">\r\n" + 
				"			<span id=\"detail_6_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"			<div class=\"snstool6\">\r\n" + 
				"				<a href=\"javascript:popupOpen();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/miniface.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		   		 <a href=\"javascript:popupOpen1();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minitwi.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"		    \r\n" + 
				"		    	<a href=\"javascript:popupOpen2();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minikakao.PNG\"/>\r\n" + 
				"		  	 	</a>\r\n" + 
				"		    	\r\n" + 
				"		   		 <a href=\"javascript:popupOpen3();\" >\r\n" + 
				"					<img src=\"/DreamProject/img/minigg.PNG\"/>\r\n" + 
				"		    	</a>\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"sonata6\">\r\n" + 
				"				<img src=\"/DreamProject/img/sonata/safe2.jpg\"/>\r\n" + 
				"				<div class=\"slide\" style=\"position: relative;\" margin-top: 50px;>\r\n" + 
				"				<div class=\"rolling_sonata\" >\r\n" + 
				"					<ul class= \"r_sonata\">\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe3.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe4.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe5.jpg\"/>\r\n" + 
				"						</li>			\r\n" + 
				"					</ul>\r\n" + 
				"					<button class=\"prev-btn\"><img src=\"/DreamProject/img/prevbtn.png\" alt=\"이전\"></button>\r\n" + 
				"            		<button class=\"next-btn\"><img src=\"/DreamProject/img/nextbtn.png\" alt=\"다음\"></button>   \r\n" + 
				"	    		</div>\r\n" + 
				"	    		</div>\r\n" + 
				"	    		<img src=\"/DreamProject/img/sonata/safe6.jpg\"/>\r\n" + 
				"				<div class=\"slide\" style=\"position: relative;\">\r\n" + 
				"				<div class=\"rolling_sonata\" >\r\n" + 
				"					<ul class= \"r_sonata\">\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe7.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe8.jpg\"/>\r\n" + 
				"						</li>		\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe9.jpg\"/>\r\n" + 
				"						</li>			\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe10.jpg\"/>\r\n" + 
				"						</li>			\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe11.jpg\"/>\r\n" + 
				"						</li>			\r\n" + 
				"						<li><!-- \r\n" + 
				"						 --><img src=\"/DreamProject/img/sonata/safe12.jpg\"/>\r\n" + 
				"						</li>			\r\n" + 
				"					</ul>\r\n" + 
				"					<button class=\"prev-btn\"><img src=\"/DreamProject/img/prevbtn.png\" alt=\"이전\"></button>\r\n" + 
				"            		<button class=\"next-btn\"><img src=\"/DreamProject/img/nextbtn.png\" alt=\"다음\"></button>   \r\n" + 
				"	    		</div>\r\n" + 
				"	    		</div>			\r\n" + 
				"			</div>\r\n" + 
				"			</div>\r\n" + 
				"			\r\n" + 
				"			<!-- 가격 -->\r\n" + 
				"			\r\n" + 
				"			<div style=\"width: 100%; border: 1px solid #d9d9d9; margin-bottom:20px;\" ></div>	\r\n" + 
				"				<div class=\"sonataDiv\" id=\"showroom-cont-899\">\r\n" + 
				"				<h2 style=\"display: inline-block;\"><img id=\"detail_7_img\" src=\"/DreamProject/img/price.png\"/></h2>\r\n" + 
				"				<div style=\"display: inline-block; float: right;\">\r\n" + 
				"					<span id=\"detail_7_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"sonata7\">\r\n" + 
				"				\r\n" + 
				"		 			2017년 10월 1일 기준 (단위 :0원)\r\n" + 
				"		 			<div class=\"pricewrapper\">\r\n" + 
				"		 				<div class=\"price\">\r\n" + 
				"		 			\r\n" + 
				"		 					<div class=\"content\" >\r\n" + 
				"					 			<ul class=\"carlist\" style=\"margin-top: 17px;\">\r\n" + 
				"									<li>\r\n" + 
				"										<a href=\"#\" style=\"color: #6cadf4;\">SONATA hybrid</a>\r\n" + 
				"									</li>\r\n" + 
				"								</ul>\r\n" + 
				"							</div>\r\n" + 
				"					\r\n" + 
				"				\r\n" + 
				"							<div class=\"Btn\">\r\n" + 
				"								<a href=\"#\">\r\n" + 
				"									<img src=\"/DreamProject/img/btn_price01.gif\" alt=\"트림비교\">\r\n" + 
				"								</a>\r\n" + 
				"								<a href=\"https://logon.hyundai.com/kr/quotation/main.do?carcode=RD005\">\r\n" + 
				"									<img src= \"/DreamProject/img/btn_price02.gif\" alt=\"견적내기\">\r\n" + 
				"								</a>\r\n" + 
				"								<a href=\"https://logon.hyundai.com/kr/ctlg/req/selectCtlgPaging.do?carSort=RD&carCd=RD005\">\r\n" + 
				"									<img src= \"/DreamProject/img/btn_price03.gif\" alt=\"카탈로그 다운로드\">\r\n" + 
				"								</a>\r\n" + 
				"								<a href=\"#\">\r\n" + 
				"									<img src= \"/DreamProject/img/btn_price04.gif\" alt=\"가격표 다운로드\">\r\n" + 
				"								</a>\r\n" + 
				"								<a href=\"http://www.hyundai.com/kr/blu/selectDlExpdList.do?carCd=RD005\">\r\n" + 
				"									<img src= \"/DreamProject/img/btn_price05.gif\" alt=\"취급설명서 다운로드\">\r\n" + 
				"								</a>\r\n" + 
				"							</div> \r\n" + 
				"					\r\n" + 
				"							<div class=\"list-wrapper\">\r\n" + 
				"								<ul class=\"list-type01\">\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>가격</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li>&middot; 세제 혜택 적용 후 판매가격 : 개별소비세 및 교육세 감면 기준임(130만원 한도)</li>\r\n" + 
				"											<li>&middot;세제 혜택 적용 후 가격은 판매조건 및 선택품목에 따라 달라질 수 있음</li>\r\n" + 
				"											<li>&middot;선택 품목의 가격은 세제혜택(개별소비세 및 교육세 감면) 적용 전 가격임</li>\r\n" + 
				"											<li>&middot;화이트 크림(WC9) 외장 컬러 선택 시 컬러 대금 추가됨(8만원)</li>								\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>7인치 디스플레이 오디오</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li>&middot;고해상도 7인치 터치 스크린, 라디오, MP3</li>\r\n" + 
				"											<li>&middot;폰 커넥티비티 기능 적용(Apple CarPlay, 미러링크)</li>\r\n" + 
				"											<li>&middot;스티어링 휠 음성인식 버튼은 Apple CarPlay 연동용 버튼임</li>\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>8인치 내비게이션</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li>&middot; 고해상도 8인치 터치 스크린, 지상파 DMB, 라디오, MP3재생, TPEG 서비스(교통정보 및 위험지역 알림 기능), 3D 지도, 32GB SD카드, 다국어 지원(한국어/영어)</li>\r\n" + 
				"											<li>&middot;지상파 DMB는 320X240 해상도를 지원하는 사양으로, DMB 사업자가 고화질 DMB(해상도 1,280X720) 방송으로 전환 등 송출방식 변경 또는 방송정책에 따라 지상파\r\n" + 
				"											<br/> DMB 수신이 불가할 수 있음</li>\r\n" + 
				"											<li>&middot;폰 커넥티비티 기능 적용(Apple CarPlay, 미러링크)</li>\r\n" + 
				"											<li>&middot;블루링크(텔레매틱스) 선택 시 내장형 음성인식, USB 동영상 재생 기능 추가 적용</li>\r\n" + 
				"											<li>&middot;블루링크(텔레매틱스) 미적용 시 스티어링 휠 음성인식 버튼은 Apple CarPlay 연동용 버튼임</li>\r\n" + 
				"										\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>멀티미디어</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li> &middot;  일반 사운드 시스템(7스피커) : 서브 우퍼, 외장앰프 포함</li>\r\n" + 
				"											<li> &middot;JBL 프리미엄 사운드 시스템(8스피커) : 센터스피커(1개), 미드레인지 스피커(2개), 프런트 도어 스피커(2개), 리어 도어 스피커(2개), 서브우퍼(1개), 외장앰프</li>\r\n" + 
				"											<li> &middot;CDP : 센터콘솔 암레스트 내부에 위치</li>\r\n" + 
				"											<li> &middot;AUX & USB 단자 : iPod 단자 겸용</li>\r\n" + 
				"											<li> &middot;블루투스 핸즈프리 : 오디오 스트리밍 기능 포함</li>\r\n" + 
				"											<li> &middot;Apple CarPlay : 아이폰5 이상 작동</li>\r\n" + 
				"											<li> &middot;미러링크 : 갤럭시 S8, 갤럭시 S7/S7 Edge, 갤럭시 S6/S6 Edge/S6 Edge Plus, 갤럭시 S5, 갤럭시 노트 4/5, 갤럭시 A5(2016)/A7(2016)/A8(2016) 限 작동</li>\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>블루링크(텔레매틱스)</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li> &middot; 자세한 사항은 블루링크 홈페이지(http://bluelink.hyundai.com) 참조 바랍니다.</li>\r\n" + 
				"											<li> &middot;기본서비스(2년 무료제공) : 스마트 컨트롤(원격공조제어, 주차위치확인, 목적지전송, 원격문열림/문잠김, 차량 상태확인), 차량 \r\n" + 
				"											<br/>관리(차량진단, 운행정보, 정기점검 리포트), 안전보안(SOS긴급출동, 에어백전개 자동통보, 도난추적, 도난경보 알림), 드라이빙(블루링크 길안내, 인터넷 목적지 검색)</li>\r\n" + 
				"											<li> &middot;블루링크 부가서비스(뉴 컨시어지) 별도 이용 가능(유료)</li>\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>기타</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li>&middot;  천연가죽 시트에는 부분적으로 인조가죽 및 기타 재질이 포함되어 있음</li>\r\n" + 
				"											<li>&middot;하이패스 시스템에는 장애인 통행료 자동할인 기능이 없음</li>\r\n" + 
				"											<li>&middot;운전석 자세 메모리 시스템(IMS) : 운전석 시트/아웃사이드 미러/클러스터 밝기 메모리 및 후진 시 아웃사이드 미러 하향조정 기능 포함</li>\r\n" + 
				"											<li>&middot;차체 자세 제어 장치(ESC) : ABS, EBD, BAS 기능 포함</li>\r\n" + 
				"											<li>&middot;파노라마 썬루프 선택 시 유광 가니쉬 / LED 룸램프 적용</li>\r\n" + 
				"											<li>&middot;스마트폰 무선충전 시스템은 모든 도어를 닫은 후 작동 가능</li>\r\n" + 
				"											<li>&middot;주행 보조 사양(AEB : 자동 긴급 제동 시스템 등)은 위험도가 높은 특정 주행상황에서 운전자를 보조\r\n" + 
				"											<br/>* 상세 작동 조건은 취급 설명서 참조</li>\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"									<li class=\"section\">\r\n" + 
				"										<span class=\"section1\"></span><b>컬러 운영</b>\r\n" + 
				"										<ul class=\"list-type02\">\r\n" + 
				"											<li>&middot;블랙 인테리어 전트림 기본 적용</li>\r\n" + 
				"											<li>&middot;하버시티(RC9) 외장컬러 선택 가능 모델 : 하이브리드</li>\r\n" + 
				"										</ul>\r\n" + 
				"									</li>\r\n" + 
				"								</ul>\r\n" + 
				"							</div> 	\r\n" + 
				"							<img src=\"/DreamProject/img/sonata/price.jpg\"/>\r\n" + 
				"						</div>\r\n" + 
				"					</div>\r\n" + 
				"				</div>	\r\n" + 
				"			</div>\r\n" + 
				"			\r\n" + 
				"			<!-- 제원 -->\r\n" + 
				"			<div id=\"showroom-cont-900\">\r\n" + 
				"				<h2 style=\"display: inline-block;\">\r\n" + 
				"					<img id=\"detail_8_img\" src=\"/DreamProject/img/제원.png\" />\r\n" + 
				"				</h2>\r\n" + 
				"\r\n" + 
				"				<div style=\"display: inline-block; float: right;\">\r\n" + 
				"\r\n" + 
				"					<span id=\"detail_8_Btn\"><img\r\n" + 
				"						src=\"/DreamProject/img/hd/down.PNG\" /></span>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"sonata8\">\r\n" + 
				"\r\n" + 
				"					<div class=\"sonata_detail\">\r\n" + 
				"						<img src=\"/DreamProject/img/sonata/제원.gif\" />\r\n" + 
				"					</div>\r\n" + 
				"					<div class=\"detail-wrapper\">\r\n" + 
				"						<table class=\"detail\">\r\n" + 
				"							<thead>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<th scope=\"col\">구분</th>\r\n" + 
				"									<th scope=\"col\">2.0 하이브리드</th>\r\n" + 
				"								</tr>\r\n" + 
				"							</thead>\r\n" + 
				"\r\n" + 
				"							<tbody style=\"text-align: center;\">\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>전장 (mm)</td>\r\n" + 
				"									<td>4,855</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>전폭 (mm)</td>\r\n" + 
				"									<td>1,865</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>전고 (mm)</td>\r\n" + 
				"									<td>1,475</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>축간거리 (mm)</td>\r\n" + 
				"									<td>2,805</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>윤거 전 (mm)</td>\r\n" + 
				"									<td>1,614 (16\"), 1,602 (17\")</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>윤거 후 (mm)</td>\r\n" + 
				"									<td>1,621(16\"), 1,609(17\")</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>엔진형식</td>\r\n" + 
				"									<td>누우 (ν) 2.0 GDi</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>배기량 (cc)</td>\r\n" + 
				"									<td>1,999</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>최고출력 (PS/rpm)</td>\r\n" + 
				"									<td>156/6,000</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>최대토크 (kg.m/rpm)</td>\r\n" + 
				"									<td>19.3/5,000</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>연료탱크용량 (ℓ)</td>\r\n" + 
				"									<td>60</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>모터형식</td>\r\n" + 
				"									<td>영구자석형 동기모터</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>모터 최고출력 (PS/rpm)</td>\r\n" + 
				"									<td>51(38kW)/1,770~2,000</td>\r\n" + 
				"								</tr>\r\n" + 
				"								<tr class=\"odd\">\r\n" + 
				"									<td>모터 최대토크 (kg.m/rpm)</td>\r\n" + 
				"									<td>20.9(205Nm)/1,770</td>\r\n" + 
				"								</tr>\r\n" + 
				"							</tbody>\r\n" + 
				"						</table>\r\n" + 
				"					</div>\r\n" + 
				"\r\n" + 
				"					<div>\r\n" + 
				"						<div class=\"detail-wrapper\">\r\n" + 
				"							<table class=\"detail\">\r\n" + 
				"								<thead>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<th scope=\"col\" colspan=\"2\">정부공인 표준연비 및 등급</th>\r\n" + 
				"									</tr>\r\n" + 
				"								</thead>\r\n" + 
				"								<tbody style=\"text-align: center;\">\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<th rowspan=\"2\" style=\"border-right: 0;\">Accent</th>\r\n" + 
				"										<td>2.0 하이브리드(자동6단 - 16\" 타이어)</td>\r\n" + 
				"										<td class=\"left last\">정부 신고 연비 - 복합 18.0km/ℓ(도심 : 17.7km/ℓ, 고속도로 : 18.3km/ℓ)<br /> \r\n" + 
				"											배기량 : 1,999cc I 공차중량 : 1,585kg I 타이어 16inch I CO2 배출량 : 88g/km I 자동6단 (1등급)\r\n" + 
				"										</td>\r\n" + 
				"									</tr>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<td>2.0 하이브리드(자동6단 - 17\" 타이어)</td>\r\n" + 
				"										<td class=\"left last\">정부 신고 연비 - 복합 17.4km/ℓ(도심 : 17.0km/ℓ, 고속도로 : 17.9km/ℓ)<br /> \r\n" + 
				"										배기량 : 1,999cc I 공차중량 : 1,595kg I 타이어 17inch I CO2 배출량 : 91g/km I 자동6단 (1등급)\r\n" + 
				"										</td>\r\n" + 
				"									</tr>\r\n" + 
				"								</tbody>\r\n" + 
				"							</table>\r\n" + 
				"						</div>\r\n" + 
				"						<div class=\"detail-wrapper\">\r\n" + 
				"							<table class=\"detail\">\r\n" + 
				"								<thead>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<th scope=\"col\" colspan=\"5\">타이어 효율 등급</th>\r\n" + 
				"									</tr>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<th scope=\"col\">타이어 제조사</th>\r\n" + 
				"										<th scope=\"col\">타이어 모델명</th>\r\n" + 
				"										<th scope=\"col\">타이어 규격</th>\r\n" + 
				"										<th scope=\"col\">회전저항(계수) 등급(RRC)</th>\r\n" + 
				"										<th scope=\"col\">젖은 노면 제동력 지수 등급(G)</th>\r\n" + 
				"									</tr>\r\n" + 
				"								</thead>\r\n" + 
				"								<tbody>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<td>Kumho</td>\r\n" + 
				"										<td>Solus TA31</td>\r\n" + 
				"										<td>205/65R16 95H</td>\r\n" + 
				"										<td>3</td>\r\n" + 
				"										<td class=\"last\">3</td>\r\n" + 
				"									</tr>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<td>Nexen</td>\r\n" + 
				"										<td>N'PRIZ AH8</td>\r\n" + 
				"										<td>215/55R17 94V</td>\r\n" + 
				"										<td>3</td>\r\n" + 
				"										<td class=\"last\">3</td>\r\n" + 
				"									</tr>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<td>Hankook</td>\r\n" + 
				"										<td>kinergy GT</td>\r\n" + 
				"										<td>205/65R16 95H</td>\r\n" + 
				"										<td>3</td>\r\n" + 
				"										<td class=\"last\">3</td>\r\n" + 
				"									</tr>\r\n" + 
				"									<tr class=\"odd\">\r\n" + 
				"										<td>Hankook</td>\r\n" + 
				"										<td>kinergy GT</td>\r\n" + 
				"										<td>215/55R17 94V</td>\r\n" + 
				"										<td>3</td>\r\n" + 
				"										<td class=\"last\">3</td>\r\n" + 
				"									</tr>\r\n" + 
				"								</tbody>\r\n" + 
				"\r\n" + 
				"							</table>\r\n" + 
				"						</div>\r\n" + 
				"						<div class=\"information\">\r\n" + 
				"							<ul class=\"list-type01\">\r\n" + 
				"								<li><span class=\"section1\"></span> 위 연비는 표준모드에 의한 연비로서\r\n" + 
				"									도로상태ㆍ운전방법ㆍ차량적재ㆍ정비상태 및 외기온도에 따라 실 주행연비와 차이가 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 위 쇼룸의 사진에는 선택사양이 적용된 경우가\r\n" + 
				"									있으므로 실제 구입차량과는 다른 점이 있을 수도 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 위 쇼룸에 표시된 사양, 컬러 및 제원은\r\n" + 
				"									차의 외관 및 성능 개선을 위해 변경될 수 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 상기 엔진성능은 NET수치임.\r\n" + 
				"									“NET수치”란 국토교통부에서 97년부터 적용을 요구한 법규사항이며 배기가스의 저항을 감안한 신측정법으로 기존의\r\n" + 
				"									GROSS 출력수치와 대비 할 <br /> 때 약간의 수치저하가 발생할 수 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 본 쇼룸의 차량컬러는 실제 차량의 컬러와는\r\n" + 
				"									다소 차이가 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 본 쇼룸의 이미지는 고객의 이해를 돕기위해\r\n" + 
				"									연출된 것으로 실제 차량과 다를 수 있습니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 본 쇼룸 상의 사양은 모델에 따라 다르게\r\n" + 
				"									적용되며, 옵션 사양이 포함되어 있습니다. 모델별 자세한 사양은 해당월의 가격표를 참고하시기 바랍니다.</li>\r\n" + 
				"								<li><span class=\"section1\"></span> 운전교습용 차량은 일부 사양이 다르게 운영될\r\n" + 
				"									수 있습니다. 자세한 사양은 해당월의 가격표를 참고하시기 바랍니다.</li>\r\n" + 
				"								<li style=\"color: #3576BC;\"><span class=\"section1\"></span>\r\n" + 
				"									현대자동차는 지점/대리점의 카마스터를 통해서만 판매하며, 전국 어느 곳에서나 같은 제품 같은 가격으로 바른 거래를\r\n" + 
				"									실천하고 있습니다</li>\r\n" + 
				"								<li style=\"color: #3576BC;\"><span class=\"section1\"></span>\r\n" + 
				"									당사에서 지정하는 순정품 (엔진오일, 변속기오일 등)을 사용하지 않거나 불량 연료를 사용했을 경우에는 차량에\r\n" + 
				"									치명적인 손상을 줄 수 있습니다</li>\r\n" + 
				"								<li style=\"color: #3576BC;\"><span class=\"section1\"></span>\r\n" + 
				"									쇼룸에 수록된 신기술 및 신사양에 대한 자세한 내용은 취급설명서를 참조하시기 바랍니다.</li>\r\n" + 
				"							</ul>\r\n" + 
				"						</div>\r\n" + 
				"					</div>\r\n" + 
				"				</div>\r\n" + 
				"			</div>\r\n" + 
				"<!--  가격 -->\r\n" + 
				"			<div class=\"last_sonata\" id=\"showroom-cont-901\">\r\n" + 
				"	    			<h2 style=\"display: inline-block;\"><img id=\"detail_9_img\" src=\"/DreamProject/img/구매가이드.png\"/></h2>\r\n" + 
				"	    			<div style=\"display: inline-block; float: right;\">\r\n" + 
				"	    			<span id=\"detail_9_Btn\"><img src=\"/DreamProject/img/hd/down.PNG\"/></span>\r\n" + 
				"	    			</div>\r\n" + 
				"				<div class=\"sonata9\">\r\n" + 
				"	    			<div class=\"purchase-guide\">\r\n" + 
				"           				 <div class=\"odd\">\r\n" + 
				"                			<h4><img src=\"/DreamProject/img/견적.gif\" alt=\"견적\"></h4>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">견적내기<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"               			 	<h5 class=\"link-title\"><a href=\"#\">경쟁차 비교<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">이달의 구매혜택<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                		<div class=\"icon1\"><img src=\"/DreamProject/img/견적이미지.gif\">\r\n" + 
				"                		</div>\r\n" + 
				"           			 	</div>\r\n" + 
				"           			 	<div class=\"odd\">\r\n" + 
				"                			<h4><img src=\"/DreamProject/img/신청.gif\" alt=\"신청\"></h4>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">카탈로그 신청  <img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                		<div class=\"icon\"><img src=\"/DreamProject/img/신청이미지.gif\">\r\n" + 
				"                		</div>\r\n" + 
				"           			 	</div>\r\n" + 
				"           			 	<div class=\"odd\">\r\n" + 
				"                			<h4><img src=\"/DreamProject/img/상담.gif\" alt=\"상담\"></h4>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">구매상담신청<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"               			 	<h5 class=\"link-title\"><a href=\"#\">전시차 조회<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">지점/대리점 조회<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                		<div class=\"icon1\"><img src=\"/DreamProject/img/상담이미지.gif\">\r\n" + 
				"                		</div>\r\n" + 
				"           			 	</div>\r\n" + 
				"           			 	<div class=\"odd\">\r\n" + 
				"                			<h4><img src=\"/DreamProject/img/시승.gif\" alt=\"시승\"></h4>\r\n" + 
				"                			<h5 class=\"link-title\"><a href=\"#\">시승서비스<img src=\"/DreamProject/img/btn_go.png\"/></a></h5>\r\n" + 
				"                		<div class=\"icon\"><img src=\"/DreamProject/img/시승이미지.gif\">\r\n" + 
				"                		</div>\r\n" + 
				"           			 	</div>\r\n" + 
				"           			 	</div>\r\n" + 
				"           			 </div>\r\n" + 
				"      			</div>\r\n" + 
				"	\r\n" + 
				"		</div>\r\n" + 
				"	</div>\r\n" + 
				"");
		carService.updateCarById(carVO);
	}
}
