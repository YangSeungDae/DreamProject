package com.ktds.menu.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.menu.service.MenuService;
import com.ktds.menu.vo.MenuVO;

@Controller
public class MenuController {

	private MenuService menuService;

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}
	
	@RequestMapping("/menu/{menuId}")
	public ModelAndView viewMenuDetail(@PathVariable int menuId) {
		MenuVO menuVO = menuService.readMenuById(menuId);
		ModelAndView view = new ModelAndView();
		view.addObject("menuVO", menuVO);
		view.setViewName("menu/details");
		return view;
	}
	
	@RequestMapping("/menu/insert")
	public void insertMenu() {
		MenuVO menuVO = new MenuVO();
		menuVO.setMenuName("지난 이벤트");
		menuVO.setMenuTypeFlag("EVT");
		menuVO.setHtml("<title>지난 이벤트 | 현대자동차</title>\r\n" + 
				"	<div id=\"sub-header-wrap\"\r\n" + 
				"		style=\"margin: 0px; padding: 40px 0px 0px; list-style: none; position: relative; z-index: 3; width: 1423px; min-width: 930px; color: #707070; font-family: 돋움, dotum, sans-serif; font-size: 12px;\">\r\n" + 
				"		<div id=\"sub-header\"\r\n" + 
				"			style=\"margin: 0px; padding: 0px; list-style: none; height: 350px;\">\r\n" + 
				"			<h3\r\n" + 
				"				style=\"margin: 0px; padding: 0px; list-style: none; font-size: 0px; line-height: 0; height: 50px; text-align: center;\">\r\n" + 
				"				<img\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"					src=\"https://logon.hyundai.com/kr/images/title/h3_event02.gif\"\r\n" + 
				"					alt=\"지난 이벤트\" />\r\n" + 
				"			</h3>\r\n" + 
				"			<p class=\"title-desc\"\r\n" + 
				"				style=\"margin: 0px; padding: 0px; list-style: none; height: 20px; text-align: center;\">\r\n" + 
				"				<img\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"					src=\"https://logon.hyundai.com/kr/images/title/h3_event_desc.gif\"\r\n" + 
				"					alt=\"원하시는 이벤트를 선택하세요. 즐거운 행운과 경품을 함께 드립니다.\" />\r\n" + 
				"			</p>\r\n" + 
				"			<div class=\"depth-visual\"\r\n" + 
				"				style=\"margin: 0px; padding: 0px; list-style: none; height: 281px; text-align: center;\">\r\n" + 
				"				<img\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"					src=\"https://logon.hyundai.com/kr/images/event/img_subvisual02.jpg\"\r\n" + 
				"					alt=\"\" />\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"		<div id=\"subnavigation-wrap\"\r\n" + 
				"			style=\"margin: 0px; padding: 0px; list-style: none; height: 23px; vertical-align: top;\">\r\n" + 
				"		\r\n" + 
				"		</div>\r\n" + 
				"	</div>\r\n" + 
				"	<form id=\"serchForm\"\r\n" + 
				"		style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; font-family: 돋움, dotum, sans-serif; font-size: 12px;\"\r\n" + 
				"		action=\"https://logon.hyundai.com/kr/evnt/selectEvntMnEndPaging.do\"\r\n" + 
				"		method=\"get\" name=\"serchForm\"></form>\r\n" + 
				"	<div id=\"container\"\r\n" + 
				"		style=\"margin: 0px; padding: 0px; list-style: none; position: relative; z-index: 1; width: 1423px; color: #707070; font-family: 돋움, dotum, sans-serif; font-size: 12px;\">\r\n" + 
				"		<div id=\"subtitle-area\"\r\n" + 
				"			style=\"margin: 0px; padding: 0px; list-style: none; position: relative; min-width: 930px; height: 53px; border-bottom: 0px;\">\r\n" + 
				"			<div class=\"subtitle-area-inner\"\r\n" + 
				"				style=\"margin: 0px auto; padding: 0px; list-style: none; position: relative; width: 930px;\">\r\n" + 
				"				<div id=\"location\"\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; position: absolute; top: -8px; right: 0px; font-size: 11px; line-height: 1.2;\">\r\n" + 
				"					<a class=\"home\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #747474; text-decoration-line: none; background: none;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/index.do\">홈</a>&nbsp;<a\r\n" + 
				"						style=\"margin: 0px 0px 0px 2px; padding: 0px 0px 0px 7px; list-style: none; color: #747474; text-decoration-line: none; background: url('../../kr/images/common/icon/bul_arrow_right02.gif') 0px 4px no-repeat;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnPaging.do\">이벤트</a><span\r\n" + 
				"						style=\"margin: 0px 0px 0px 2px; padding: 0px 0px 0px 7px; list-style: none; background: url('../../kr/images/common/icon/bul_arrow_right02.gif') 0px 4px no-repeat; color: #55769f;\">지난\r\n" + 
				"						이벤트</span>\r\n" + 
				"				</div>\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"		<div id=\"article\"\r\n" + 
				"			style=\"margin: 0px auto; padding: 0px 0px 120px; list-style: none; position: relative; z-index: 1; width: 930px;\">\r\n" + 
				"			<p class=\"default-desc\"\r\n" + 
				"				style=\"margin: 0px 0px 20px; padding: 0px; list-style: none; color: #666666;\">\r\n" + 
				"				<img\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"					src=\"https://logon.hyundai.com/kr/images/event/txt_event02_01.gif\"\r\n" + 
				"					alt=\"지난 이벤트 조회 및 당첨여부를 확인하실 수 있습니다.\" />\r\n" + 
				"			</p>\r\n" + 
				"			<div class=\"event-list event-list-type02\"\r\n" + 
				"				style=\"margin: 0px; padding: 0px 0px 30px; list-style: none; position: relative; width: 930px; border-width: 0px 0px 1px; border-image: initial; border-color: initial #eaeaea #eaeaea #eaeaea; border-style: initial solid solid solid;\">\r\n" + 
				"				<div class=\"section\"\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; position: relative; width: 930px; border: 0px;\">\r\n" + 
				"					<a\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2719\"><img\r\n" + 
				"						class=\"thumb\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; float: left; width: 330px; height: 117px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/file/imagePathView.do?nrFilNm=evnt/20170907145246609668.jpg\"\r\n" + 
				"						alt=\"9월 주요 할부 프로모션\" /></a>\r\n" + 
				"					<ul class=\"information\"\r\n" + 
				"						style=\"margin: 0px; padding: 3px 0px 0px; list-style: none; float: right; width: 560px;\">\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_02.gif\"\r\n" + 
				"								alt=\"제목\" /></strong>\r\n" + 
				"							<p class=\"subject\"\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px; color: #666666; font-weight: bold;\">\r\n" + 
				"								<a\r\n" + 
				"									style=\"margin: 0px; padding: 0px; list-style: none; color: #666666; text-decoration-line: none; float: left;\"\r\n" + 
				"									href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2719\">9월\r\n" + 
				"									주요 할부 프로모션</a>\r\n" + 
				"							</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_03.gif\"\r\n" + 
				"								alt=\"내용\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">밸류플러스\r\n" + 
				"								할부 ㅣ i30 MY FIT l G80 특별할부 ㅣ 6개월 무이자</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_04.gif\"\r\n" + 
				"								alt=\"기간\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">2017-09-01\r\n" + 
				"								~ 2017-09-30</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_05.gif\"\r\n" + 
				"								alt=\"대상\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">차량구매회원</p>\r\n" + 
				"						</li>\r\n" + 
				"					</ul>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"section\"\r\n" + 
				"					style=\"margin: 15px 0px 0px; padding: 15px 0px 0px; list-style: none; overflow: hidden; position: relative; width: 930px; border-top: 1px solid #eaeaea;\">\r\n" + 
				"					<a\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2718\"><img\r\n" + 
				"						class=\"thumb\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; float: left; width: 330px; height: 117px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/file/imagePathView.do?nrFilNm=evnt/20170906161702526696.jpg\"\r\n" + 
				"						alt=\"싼타페 스마트 익스체인지 프로그램 + 1 Year Free 프로모션\" /></a>\r\n" + 
				"					<ul class=\"information\"\r\n" + 
				"						style=\"margin: 0px; padding: 3px 0px 0px; list-style: none; float: right; width: 560px;\">\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_02.gif\"\r\n" + 
				"								alt=\"제목\" /></strong>\r\n" + 
				"							<p class=\"subject\"\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px; color: #666666; font-weight: bold;\">\r\n" + 
				"								<a\r\n" + 
				"									style=\"margin: 0px; padding: 0px; list-style: none; color: #666666; text-decoration-line: none; float: left;\"\r\n" + 
				"									href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2718\">싼타페\r\n" + 
				"									스마트 익스체인지 프로그램 + 1 Year Free 프로모션</a>\r\n" + 
				"							</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_03.gif\"\r\n" + 
				"								alt=\"내용\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">싼타페\r\n" + 
				"								구입 13~18개월 내 동급이상 현대차 구매 시 추가 구매하는 신차 취득세 전액지원(300만원 한도) + 선수율\r\n" + 
				"								25% 이상 납입 시 1년 무이자거치</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_04.gif\"\r\n" + 
				"								alt=\"기간\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">2017-09-01\r\n" + 
				"								~ 2017-09-30</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_05.gif\"\r\n" + 
				"								alt=\"대상\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">차량구매회원</p>\r\n" + 
				"						</li>\r\n" + 
				"					</ul>\r\n" + 
				"					<img class=\"winner-btn\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; position: absolute; top: 53px; right: 0px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/images/common/button/btn_winner_ing.gif\"\r\n" + 
				"						alt=\"당첨자 선정중\" />\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"section\"\r\n" + 
				"					style=\"margin: 15px 0px 0px; padding: 15px 0px 0px; list-style: none; overflow: hidden; position: relative; width: 930px; border-top: 1px solid #eaeaea;\">\r\n" + 
				"					<a\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2717\"><img\r\n" + 
				"						class=\"thumb\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; float: left; width: 330px; height: 117px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/file/imagePathView.do?nrFilNm=evnt/20170906161528400692.jpg\"\r\n" + 
				"						alt=\"웰컴 H-패밀리 케어 프로그램\" /></a>\r\n" + 
				"					<ul class=\"information\"\r\n" + 
				"						style=\"margin: 0px; padding: 3px 0px 0px; list-style: none; float: right; width: 560px;\">\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_02.gif\"\r\n" + 
				"								alt=\"제목\" /></strong>\r\n" + 
				"							<p class=\"subject\"\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px; color: #666666; font-weight: bold;\">\r\n" + 
				"								<a\r\n" + 
				"									style=\"margin: 0px; padding: 0px; list-style: none; color: #666666; text-decoration-line: none; float: left;\"\r\n" + 
				"									href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2717\">웰컴\r\n" + 
				"									H-패밀리 케어 프로그램</a>\r\n" + 
				"							</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_03.gif\"\r\n" + 
				"								alt=\"내용\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">준중형\r\n" + 
				"								이하 승용 및 RV 차종을 당사 첫 차로 구입한 77년 이후 출생고객 출고 후 1년 이내\r\n" + 
				"								웰컴베이비기프트/웨딩카서비스/내차안심서비스/홈투홈서비스 각 1회/1품목 限 제공</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_04.gif\"\r\n" + 
				"								alt=\"기간\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">2017-09-01\r\n" + 
				"								~ 2017-09-30</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_05.gif\"\r\n" + 
				"								alt=\"대상\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">차량구매회원</p>\r\n" + 
				"						</li>\r\n" + 
				"					</ul>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"section\"\r\n" + 
				"					style=\"margin: 15px 0px 0px; padding: 15px 0px 0px; list-style: none; overflow: hidden; position: relative; width: 930px; border-top: 1px solid #eaeaea;\">\r\n" + 
				"					<a\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2715\"><img\r\n" + 
				"						class=\"thumb\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; float: left; width: 330px; height: 117px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/file/imagePathView.do?nrFilNm=evnt/20170831155656244718.jpg\"\r\n" + 
				"						alt=\"제8회 다문화 가정 고향방문 수기공모전 - 공모전 및 차량구매 혜택 안내\" /></a>\r\n" + 
				"					<ul class=\"information\"\r\n" + 
				"						style=\"margin: 0px; padding: 3px 0px 0px; list-style: none; float: right; width: 560px;\">\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_02.gif\"\r\n" + 
				"								alt=\"제목\" /></strong>\r\n" + 
				"							<p class=\"subject\"\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px; color: #666666; font-weight: bold;\">\r\n" + 
				"								<a\r\n" + 
				"									style=\"margin: 0px; padding: 0px; list-style: none; color: #666666; text-decoration-line: none; float: left;\"\r\n" + 
				"									href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2715\">제8회\r\n" + 
				"									다문화 가정 고향방문 수기공모전 - 공모전 및 차량구매 혜택 안내</a>\r\n" + 
				"							</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_03.gif\"\r\n" + 
				"								alt=\"내용\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">응모작\r\n" + 
				"								중 총 20개 작품을 선정하여 300만원 여행상품권 및 여행용 캐리어 증정</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_04.gif\"\r\n" + 
				"								alt=\"기간\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">2017-09-01\r\n" + 
				"								~ 2017-09-30</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_05.gif\"\r\n" + 
				"								alt=\"대상\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">모든회원</p>\r\n" + 
				"						</li>\r\n" + 
				"					</ul>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"section\"\r\n" + 
				"					style=\"margin: 15px 0px 0px; padding: 15px 0px 0px; list-style: none; overflow: hidden; position: relative; width: 930px; border-top: 1px solid #eaeaea;\">\r\n" + 
				"					<a\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2714\"><img\r\n" + 
				"						class=\"thumb\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; float: left; width: 330px; height: 117px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/file/imagePathView.do?nrFilNm=evnt/20170830174245332650.jpg\"\r\n" + 
				"						alt=\"첫 상담/시승 후 출고고객 블루투스 스피커 증정 이벤트 - Hello, HYUNDAI\" /></a>\r\n" + 
				"					<ul class=\"information\"\r\n" + 
				"						style=\"margin: 0px; padding: 3px 0px 0px; list-style: none; float: right; width: 560px;\">\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_02.gif\"\r\n" + 
				"								alt=\"제목\" /></strong>\r\n" + 
				"							<p class=\"subject\"\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px; color: #666666; font-weight: bold;\">\r\n" + 
				"								<a\r\n" + 
				"									style=\"margin: 0px; padding: 0px; list-style: none; color: #666666; text-decoration-line: none; float: left;\"\r\n" + 
				"									href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2714\">첫\r\n" + 
				"									상담/시승 후 출고고객 블루투스 스피커 증정 이벤트 - Hello, HYUNDAI</a>\r\n" + 
				"							</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_03.gif\"\r\n" + 
				"								alt=\"내용\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">현대차\r\n" + 
				"								생애 첫 고객 홈페이지 상담/시승후 출고시 사은품 증정!</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_04.gif\"\r\n" + 
				"								alt=\"기간\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">2017-09-01\r\n" + 
				"								~ 2017-09-30</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_05.gif\"\r\n" + 
				"								alt=\"대상\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">차량구매회원</p>\r\n" + 
				"						</li>\r\n" + 
				"					</ul>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"section\"\r\n" + 
				"					style=\"margin: 15px 0px 0px; padding: 15px 0px 0px; list-style: none; overflow: hidden; position: relative; width: 930px; border-top: 1px solid #eaeaea;\">\r\n" + 
				"					<a\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2722\"><img\r\n" + 
				"						class=\"thumb\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; float: left; width: 330px; height: 117px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/file/imagePathView.do?nrFilNm=evnt/20170908132836411709.jpg\"\r\n" + 
				"						alt=\"H-Restore - 처음, 그 잊지 못할 순간을 다시 만나다.\" /></a>\r\n" + 
				"					<ul class=\"information\"\r\n" + 
				"						style=\"margin: 0px; padding: 3px 0px 0px; list-style: none; float: right; width: 560px;\">\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_02.gif\"\r\n" + 
				"								alt=\"제목\" /></strong>\r\n" + 
				"							<p class=\"subject\"\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px; color: #666666; font-weight: bold;\">\r\n" + 
				"								<a\r\n" + 
				"									style=\"margin: 0px; padding: 0px; list-style: none; color: #666666; text-decoration-line: none; float: left;\"\r\n" + 
				"									href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2722\">H-Restore\r\n" + 
				"									- 처음, 그 잊지 못할 순간을 다시 만나다.</a>\r\n" + 
				"							</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_03.gif\"\r\n" + 
				"								alt=\"내용\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">노후\r\n" + 
				"								차량 보유 고객 중 선정되신분께 차량 외형 복원 및 정비서비스를 제공해드립니다.</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_04.gif\"\r\n" + 
				"								alt=\"기간\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">2017-09-11\r\n" + 
				"								~ 2017-09-24</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_05.gif\"\r\n" + 
				"								alt=\"대상\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">차량구매회원</p>\r\n" + 
				"						</li>\r\n" + 
				"					</ul>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"section\"\r\n" + 
				"					style=\"margin: 15px 0px 0px; padding: 15px 0px 0px; list-style: none; overflow: hidden; position: relative; width: 930px; border-top: 1px solid #eaeaea;\">\r\n" + 
				"					<a\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2721\"><img\r\n" + 
				"						class=\"thumb\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; float: left; width: 330px; height: 117px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/file/imagePathView.do?nrFilNm=evnt/20170908130055762705.jpg\"\r\n" + 
				"						alt=\"추석 귀향 지원 12박13일 시승 이벤트\" /></a>\r\n" + 
				"					<ul class=\"information\"\r\n" + 
				"						style=\"margin: 0px; padding: 3px 0px 0px; list-style: none; float: right; width: 560px;\">\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_02.gif\"\r\n" + 
				"								alt=\"제목\" /></strong>\r\n" + 
				"							<p class=\"subject\"\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px; color: #666666; font-weight: bold;\">\r\n" + 
				"								<a\r\n" + 
				"									style=\"margin: 0px; padding: 0px; list-style: none; color: #666666; text-decoration-line: none; float: left;\"\r\n" + 
				"									href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2721\">추석\r\n" + 
				"									귀향 지원 12박13일 시승 이벤트</a>\r\n" + 
				"							</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_03.gif\"\r\n" + 
				"								alt=\"내용\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">현대자동차와\r\n" + 
				"								함께하는 풍성한 황금연휴</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_04.gif\"\r\n" + 
				"								alt=\"기간\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">2017-09-11\r\n" + 
				"								~ 2017-09-24</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_05.gif\"\r\n" + 
				"								alt=\"대상\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">모든회원</p>\r\n" + 
				"						</li>\r\n" + 
				"					</ul>\r\n" + 
				"					<a class=\"winner-btn\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left; position: absolute; top: 53px; right: 0px;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnEndPaging.do#link\"><img\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/images/common/button/btn_winner_view.gif\"\r\n" + 
				"						alt=\"당첨자 보기\" /></a>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"section\"\r\n" + 
				"					style=\"margin: 15px 0px 0px; padding: 15px 0px 0px; list-style: none; overflow: hidden; position: relative; width: 930px; border-top: 1px solid #eaeaea;\">\r\n" + 
				"					<a\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2720\"><img\r\n" + 
				"						class=\"thumb\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; float: left; width: 330px; height: 117px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/file/imagePathView.do?nrFilNm=evnt/20170908124222745701.jpg\"\r\n" + 
				"						alt=\"H:EAR-O Tour 마이티/메가트럭 고객 초청 글램핑 이벤트\" /></a>\r\n" + 
				"					<ul class=\"information\"\r\n" + 
				"						style=\"margin: 0px; padding: 3px 0px 0px; list-style: none; float: right; width: 560px;\">\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_02.gif\"\r\n" + 
				"								alt=\"제목\" /></strong>\r\n" + 
				"							<p class=\"subject\"\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px; color: #666666; font-weight: bold;\">\r\n" + 
				"								<a\r\n" + 
				"									style=\"margin: 0px; padding: 0px; list-style: none; color: #666666; text-decoration-line: none; float: left;\"\r\n" + 
				"									href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2720\">H:EAR-O\r\n" + 
				"									Tour 마이티/메가트럭 고객 초청 글램핑 이벤트</a>\r\n" + 
				"							</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_03.gif\"\r\n" + 
				"								alt=\"내용\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">현대상용차\r\n" + 
				"								중형트럭 고객 대상 소통 프로그램</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_04.gif\"\r\n" + 
				"								alt=\"기간\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">2017-09-11\r\n" + 
				"								~ 2017-09-24</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_05.gif\"\r\n" + 
				"								alt=\"대상\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">차량구매회원</p>\r\n" + 
				"						</li>\r\n" + 
				"					</ul>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"section\"\r\n" + 
				"					style=\"margin: 15px 0px 0px; padding: 15px 0px 0px; list-style: none; overflow: hidden; position: relative; width: 930px; border-top: 1px solid #eaeaea;\">\r\n" + 
				"					<a\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2693\"><img\r\n" + 
				"						class=\"thumb\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; float: left; width: 330px; height: 117px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/file/imagePathView.do?nrFilNm=evnt/20170728121914246119.jpg\"\r\n" + 
				"						alt=\"Hyundai Driving Academy with Kona - Kona 구매 고객 특별 혜택\" /></a>\r\n" + 
				"					<ul class=\"information\"\r\n" + 
				"						style=\"margin: 0px; padding: 3px 0px 0px; list-style: none; float: right; width: 560px;\">\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_02.gif\"\r\n" + 
				"								alt=\"제목\" /></strong>\r\n" + 
				"							<p class=\"subject\"\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px; color: #666666; font-weight: bold;\">\r\n" + 
				"								<a\r\n" + 
				"									style=\"margin: 0px; padding: 0px; list-style: none; color: #666666; text-decoration-line: none; float: left;\"\r\n" + 
				"									href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2693\">Hyundai\r\n" + 
				"									Driving Academy with Kona - Kona 구매 고객 특별 혜택</a>\r\n" + 
				"							</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_03.gif\"\r\n" + 
				"								alt=\"내용\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">현대\r\n" + 
				"								드라이빙 아카데미 기초프로그램 무료제공</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_04.gif\"\r\n" + 
				"								alt=\"기간\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">2017-08-17\r\n" + 
				"								~ 2017-09-15</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_05.gif\"\r\n" + 
				"								alt=\"대상\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">차량구매회원</p>\r\n" + 
				"						</li>\r\n" + 
				"					</ul>\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"section\"\r\n" + 
				"					style=\"margin: 15px 0px 0px; padding: 15px 0px 0px; list-style: none; overflow: hidden; position: relative; width: 930px; border-top: 1px solid #eaeaea;\">\r\n" + 
				"					<a\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; float: left;\"\r\n" + 
				"						href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2698\"><img\r\n" + 
				"						class=\"thumb\"\r\n" + 
				"						style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; float: left; width: 330px; height: 117px;\"\r\n" + 
				"						src=\"https://logon.hyundai.com/kr/file/imagePathView.do?nrFilNm=evnt/20170809115208313502.jpg\"\r\n" + 
				"						alt=\"블루북 코나 에디션 증정이벤트 - Kona와 함께하는 전국 핫플레이스 미식여행!\" /></a>\r\n" + 
				"					<ul class=\"information\"\r\n" + 
				"						style=\"margin: 0px; padding: 3px 0px 0px; list-style: none; float: right; width: 560px;\">\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_02.gif\"\r\n" + 
				"								alt=\"제목\" /></strong>\r\n" + 
				"							<p class=\"subject\"\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px; color: #666666; font-weight: bold;\">\r\n" + 
				"								<a\r\n" + 
				"									style=\"margin: 0px; padding: 0px; list-style: none; color: #666666; text-decoration-line: none; float: left;\"\r\n" + 
				"									href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnDetailEnd.do?evntMnSn=2698\">블루북\r\n" + 
				"									코나 에디션 증정이벤트 - Kona와 함께하는 전국 핫플레이스 미식여행!</a>\r\n" + 
				"							</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_03.gif\"\r\n" + 
				"								alt=\"내용\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">8월\r\n" + 
				"								코나를 구매하시면 프리미엄 바우처 블루북 코나 에디션을 드립니다!</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_04.gif\"\r\n" + 
				"								alt=\"기간\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">2017-08-01\r\n" + 
				"								~ 2017-08-31</p></li>\r\n" + 
				"						<li\r\n" + 
				"							style=\"margin: 0px; padding: 7px 0px 0px; list-style: none; overflow: hidden; width: 560px;\"><strong\r\n" + 
				"							class=\"title\"\r\n" + 
				"							style=\"margin: 0px; padding: 0px; list-style: none; display: block; float: left;\"><img\r\n" + 
				"								style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"								src=\"https://logon.hyundai.com/kr/images/event/txt_event01_05.gif\"\r\n" + 
				"								alt=\"대상\" /></strong>\r\n" + 
				"							<p\r\n" + 
				"								style=\"margin: -3px 0px 0px; padding: 0px; list-style: none; float: right; width: 518px;\">차량구매회원</p>\r\n" + 
				"						</li>\r\n" + 
				"					</ul>\r\n" + 
				"				</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"paging\"\r\n" + 
				"				style=\"margin: 30px 0px 0px; padding: 0px; list-style: none; position: relative; z-index: 1; width: 930px; font-size: 0px; line-height: 0; text-align: center; letter-spacing: -5px;\">\r\n" + 
				"				<a\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none;\"\r\n" + 
				"					href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnEndPaging.do\"><img\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"					src=\"https://logon.hyundai.com/kr/images/common/button/btn_prev.gif\"\r\n" + 
				"					alt=\"이전\" border=\"0\" /></a><span class=\"num\"\r\n" + 
				"					style=\"margin: 0px -1px 0px 0px; padding: 0px; list-style: none; position: relative; top: -1px; z-index: 1; line-height: 0; vertical-align: top;\"><a\r\n" + 
				"					class=\"on\"\r\n" + 
				"					style=\"margin: 0px 0px 0px -1px; padding: 7px 0px 0px; list-style: none; color: #3576bc; text-decoration-line: none; display: inline-block; position: relative; width: 25px; height: 20px; border: 1px solid #a8acb6; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12px; line-height: 1.2; letter-spacing: 0px; vertical-align: middle; z-index: 1; font-weight: bold;\"\r\n" + 
				"					href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnEndPaging.do\">1</a><a\r\n" + 
				"					style=\"margin: 0px 0px 0px -1px; padding: 6px 0px 0px; list-style: none; color: #777777; text-decoration-line: none; display: inline-block; position: relative; width: 25px; height: 19px; border: 1px solid #dcdcdc; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12px; line-height: 1.2; letter-spacing: 0px; vertical-align: middle;\"\r\n" + 
				"					href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnEndPaging.do\">2</a></span><a\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none;\"\r\n" + 
				"					href=\"https://logon.hyundai.com/kr/evnt/selectEvntMnEndPaging.do\"><img\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;\"\r\n" + 
				"					src=\"https://logon.hyundai.com/kr/images/common/button/btn_next.gif\"\r\n" + 
				"					alt=\"다음\" border=\"0\" /></a>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"list-search-form\"\r\n" + 
				"				style=\"margin: 30px 0px 0px; padding: 19px 0px 17px; list-style: none; border: 1px solid #eaeaea; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center;\">\r\n" + 
				"				<select id=\"searchConditionTemp\"\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none;\"\r\n" + 
				"					title=\"검색 항목 선택\" name=\"searchConditionTemp\">&nbsp;\r\n" + 
				"					&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;\r\n" + 
				"					&nbsp;&nbsp; &nbsp;\r\n" + 
				"					<option\r\n" + 
				"						style=\"margin: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style: none;\"\r\n" + 
				"						value=\"1\">전체</option> &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;\r\n" + 
				"					&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;\r\n" + 
				"					<option\r\n" + 
				"						style=\"margin: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style: none;\"\r\n" + 
				"						value=\"2\">제목</option> &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;\r\n" + 
				"					&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;\r\n" + 
				"					<option\r\n" + 
				"						style=\"margin: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style: none;\"\r\n" + 
				"						value=\"3\">내용</option> &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;\r\n" + 
				"					&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;\r\n" + 
				"				</select>&nbsp;<input id=\"searchKeywordTemp\" class=\"text\"\r\n" + 
				"					style=\"margin: 0px; padding-top: 0px; padding-bottom: 0px; list-style: none; vertical-align: top; width: 227px;\"\r\n" + 
				"					title=\"검색어 입력\" maxlength=\"15\" name=\"searchKeywordTemp\" type=\"text\" />&nbsp;<input\r\n" + 
				"					style=\"margin: 0px; padding: 0px; list-style: none; vertical-align: middle;\"\r\n" + 
				"					alt=\"검색\"\r\n" + 
				"					src=\"https://logon.hyundai.com/kr/images/common/button/btn_search03.gif\"\r\n" + 
				"					type=\"image\" />\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"	</div>\r\n" + 
				"");
		//menuService.createNewMenu(menuVO);
	}
}
