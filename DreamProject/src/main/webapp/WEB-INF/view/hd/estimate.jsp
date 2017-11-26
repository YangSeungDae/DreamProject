<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/common/header_gray.jsp" />
<title>견적내기|현대자동차</title>
<link rel="stylesheet" href="<c:url value='/css/sonata-style.css' />" />
	<div id="sub-header-wrap"
		style="margin: 0 auto; padding: 0px 0px; list-style: none; position: relative; z-index: 3; width: 1182px; min-width: 930px;">
		<div id="sub-header"
			style="margin: 0px; padding: 0px; list-style: none; height: 350px;">
			<h3
				style="margin: 0px; padding-top: 40px; padding-bottom:10px; list-style: none; font-size: 0px; line-height: 0; height: 50px; text-align: center;">
				<img
					style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;"
					src="https://logon.hyundai.com/kr/images/title/h3_estimation01.gif"
					alt="견적내기" />
			</h3>
			<p class="title-desc"
				style="margin: 0px; padding: 0px; list-style: none; height: 20px; text-align: center;">
				<img
					style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;"
					src="https://logon.hyundai.com/kr/images/title/h3_estimation01_desc.gif"
					alt="견적을 내고자하는 차종을 선택해주세요. 최고의 모델과 최고의 서비스로 고객님을 모십니다." />
			</p>
			<div class="depth-visual"
				style="border-bottom: 1px solid #d4d4d4; margin: 0px; padding: 0px; list-style: none; height: 281px; text-align: center;">
				<img
					style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;"
					src="https://logon.hyundai.com/kr/images/estimation/img_subvisual01.jpg"
					alt="" />
			</div>
		</div>
		<div id="subnavigation-wrap"
			style="margin: 0px; padding: 0px; list-style: none; height: 23px; vertical-align: top;">
			<div id="subnavigation"
				style="margin: 0px; padding: 0px; list-style: none; position: relative; width: 1182px; min-width: 930px; border-width: 1px 0px 0px; border-image: initial; background: #f1f3f6; border-color: #d6d7db #d6d7db initial #d6d7db; border-style: solid solid initial solid;">
				<a class="snb-control"
					style="margin: 0px 0px 0px -69px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none; display: block; position: absolute; top: -1px; left: 591px; z-index: 2; width: 138px; height: 23px;"
					href="https://logon.hyundai.com/kr/quotation/main.do?WT.ac=gnb_quot_qoutation"><img
					style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;"
					src="https://logon.hyundai.com/kr/images/common/snb/btn_control_up.png"
					alt="스크롤 올리기" /></a>
			</div>
		</div>
	</div>
	<form id="insertForm"
		style="margin: 0px; padding: 0px; list-style: none;"
		action="https://logon.hyundai.com/kr/quotation/main.do?WT.ac=gnb_quot_qoutation"
		method="post" name="insertForm"></form>
	<div id="container"
		style="margin: 0px auto; padding: 0px; list-style: none; position: relative; z-index: 1; width: 1182px;">
		<div id="subtitle-area"
			style="margin: 0px; padding: 0px; list-style: none; position: relative; min-width: 930px; height: 53px; border-bottom: 0px; color: #707070; font-family: 돋움, dotum, sans-serif; font-size: 12px; background-color: #fbfbfb;">
			<div class="subtitle-area-inner"
				style="margin: 0px auto; padding: 0px; list-style: none; position: relative; width: 930px;">
				<div id="location"
					style="margin: 0px; padding: 0px; list-style: none; position: absolute; top: -8px; right: 0px; font-size: 11px; line-height: 1.2;">
					<a class="home"
						style="margin: 0px; padding: 0px; list-style: none; color: #747474; text-decoration-line: none; background: none;"
						href="https://logon.hyundai.com/kr/index.do">홈</a>&nbsp;<a
						style="margin: 0px 0px 0px 2px; padding: 0px 0px 0px 7px; list-style: none; color: #747474; text-decoration-line: none; background: url('https://logon.hyundai.com/kr/images/common/icon/bul_arrow_right02.gif') 0px 4px no-repeat;"
						href="https://logon.hyundai.com/kr/quotation/main.do">견적</a><span
						style="margin: 0px 0px 0px 2px; padding: 0px 0px 0px 7px; list-style: none; background: url('https://logon.hyundai.com/kr/images/common/icon/bul_arrow_right02.gif') 0px 4px no-repeat; color: #55769f;">견적내기</span>
				</div>
			</div>
		</div>
		<div id="article"
			style="margin: 0px auto; padding: 0px 0px 120px; list-style: none; position: relative; z-index: 1; width: 930px; color: #707070; font-family: 돋움, dotum, sans-serif; font-size: 12px; background-color: #fbfbfb;">
			<div class="estimation-wrap-renewal"
				style="margin: 0px; padding: 0px; list-style: none; position: relative; width: 930px; min-height: 851px;">
				<div class="estimation-step-renewal"
					style="margin: 0px; padding: 0px; list-style: none;">
					<div class="step-tit step-01"
						style="margin: 0px; padding: 0px; list-style: none; width: 930px; height: 55px; background: url('<c:url value='/img/tit_s_step01.gif'/>');">&nbsp;</div>
					<div id="step1" class="stepDiv"
						style="margin: 0px; padding: 0px; list-style: none;">
						<div class="step-wrap"
							style="margin: 0px; padding: 0px; list-style: none;">
							<div class="step-cont"
								style="margin: 30px 0px 0px; padding: 0px; list-style: none; position: relative; width: 930px; display: inline-block;">
								<div id="carArea"
									style="margin: 0px; padding: 0px; list-style: none;">
									<div class="car-cont"
										style="margin: 0px; padding: 0px; list-style: none; position: relative;">
										<p class="title"
											style="margin: 0px; padding: 0px; list-style: none; position: absolute; top: -1px; left: -1px; width: 130px; height: 309px; border: 1px solid #434a57; background-color: #4e5869;">
											<span
												style="margin: 0px; padding: 20px 0px 0px; list-style: none; display: block; text-align: center; width: 130px; background: none; border-top: 1px solid #5e6777;"><img
												style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;"
												src="https://logon.hyundai.com/kr/images/estimation/menu_title_car.gif"
												alt="승용" /></span>
										</p>
										<div class="section"
											style="margin-left: 151px; padding: 0px; list-style: none; display: inline-block; width: 772px; border-bottom: 1px solid #e4e4e4;">
											<div id="carSectionRBJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=73196"
													alt="엑센트" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">엑센트</p>
											</div>
											<div id="carSectionADJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=69609"
													alt="아반떼" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">아반떼</p>
											</div>
											<div id="carSectionPDJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=57859"
													alt="i30" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">i30</p>
											</div>
											<div id="carSectionFSJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=39576"
													alt="벨로스터" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">벨로스터</p>
											</div>
											<div id="carSectionGFJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=65157"
													alt="LF쏘나타" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">LF쏘나타</p>
											</div>
											<div id="carSectionGFZ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=72816"
													alt="쏘나타 hybrid" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">쏘나타
													hybrid</p>
											</div>
										</div>
										<div class="section"
											style="margin-left: 151px; padding: 0px; list-style: none; display: inline-block; width: 772px; border-bottom: 1px solid #e4e4e4;">
											<div id="carSectionGFE"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=72012"
													alt="쏘나타 plug-in" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">쏘나타
													plug-in</p>
											</div>
											<div id="carSectionVFJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=39580"
													alt="i40" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">i40</p>
											</div>
											<div id="carSectionIGJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=60807"
													alt="그랜저IG" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">그랜저IG</p>
											</div>
											<div id="carSectionIGZ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=67100"
													alt="그랜저IG hybrid" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">그랜저IG
													hybrid</p>
											</div>
											<div id="carSectionAGJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=59133"
													alt="아슬란" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">아슬란</p>
											</div>
											<div id="carSectionAEZ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=49077"
													alt="아이오닉 hybrid" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">아이오닉
													hybrid</p>
											</div>
										</div>
										<div class="section"
											style="margin-left: 151px; padding: 0px; list-style: none; display: inline-block; width: 772px; border-bottom: none;">
											<div id="carSectionAEV"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=52155"
													alt="아이오닉 electric" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">아이오닉
													electric</p>
											</div>
											<div id="carSectionAEE"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=64434"
													alt="아이오닉 plug-in" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">아이오닉
													plug-in</p>
											</div>
										</div>
									</div>
									<div class="car-cont"
										style="margin: 0px; padding: 0px; list-style: none; position: relative;">
										<p class="title"
											style="margin: 0px; padding: 0px; list-style: none; position: absolute; top: -1px; left: -1px; width: 130px; height: 103px; border: 1px solid #434a57; background-color: #4e5869;">
											<span
												style="margin: 0px; padding: 20px 0px 0px; list-style: none; display: block; text-align: center; width: 130px; background: none; border-top: 1px solid #5e6777;"><img
												style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;"
												src="https://logon.hyundai.com/kr/images/estimation/menu_title_rv.gif"
												alt="RV" /></span>
										</p>
										<div class="section"
											style="margin-left: 151px; padding: 0px; list-style: none; display: inline-block; width: 772px; border-bottom: none;">
											<div id="carSectionOSJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=71028"
													alt="코나" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">코나</p>
											</div>
											<div id="carSectionTLJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=70253"
													alt="투싼" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">투싼</p>
											</div>
											<div id="carSectionDMJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=40327"
													alt="싼타페" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">싼타페</p>
											</div>
											<div id="carSectionJRJ"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=44204"
													alt="맥스크루즈" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">맥스크루즈</p>
											</div>
										</div>
									</div>
									<div class="car-cont"
										style="margin: 0px; padding: 0px; list-style: none; position: relative;">
										<p class="title"
											style="margin: 0px; padding: 0px; list-style: none; position: absolute; top: -1px; left: -1px; width: 130px; height: 102px; border: 1px solid #434a57; background-color: #4e5869;">
											<span
												style="margin: 0px; padding: 20px 0px 0px; list-style: none; display: block; text-align: center; width: 130px; background: none; border-top: 1px solid #5e6777;"><img
												style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top;"
												src="https://logon.hyundai.com/kr/images/estimation/menu_title_c_use.gif"
												alt="상용차 및 영업용" /></span>
										</p>
										<div class="section"
											style="margin-left: 151px; padding: 0px; list-style: none; display: inline-block; width: 772px; border-bottom: none;">
											<div id="carSectionJAC"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=43364"
													alt="그랜드 스타렉스" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">그랜드
													스타렉스</p>
											</div>
											<div id="carSectionM51"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=62511"
													alt="포터II" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">포터II</p>
											</div>
											<div id="carSectionRSH"
												style="margin: 0px; padding: 15px 0px 0px; list-style: none; float: left; width: 128px; height: 87px; text-align: center;">
												<a style="margin: 0px; padding: 0px; list-style: none;"><img
													style="margin: 0px; padding: 0px; list-style: none; border: 0px; vertical-align: top; width: 90px; height: 55px; cursor: pointer;"
													src="https://logon.hyundai.com/kr/file/imageView.do?filSn=29129"
													alt="영업용택시" width="90px" height="55px" /></a>
												<p class="name"
													style="margin: 3px 0px 0px; padding: 0px; list-style: none; font-size: 11px; line-height: 1.2; letter-spacing: -1px;">영업용택시</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="step2" class="stepDiv"
						style="margin: 0px; padding: 0px; list-style: none;">&nbsp;</div>
					<p class="p_notice_lt pt0"
						style="margin: 0px; padding: 30px 0px 0px; list-style: none; color: #747474; font-size: 11px; line-height: 1.2;">&nbsp;</p>
					<p class="p_notice_lt_02 pt0"
						style="margin: 0px; padding: 30px 0px 0px; list-style: none; color: #444444; font-size: 11px; line-height: 1.2; font-weight: bold;">
						* 본 견적내기 서비스의&nbsp;<span class="point04"
							style="margin: 0px; padding: 0px; list-style: none; color: #3576bc;">차량
							외관 및 색상은 실제 차량과는 차이가 있을 수 있으므로,</span>&nbsp;반드시 카탈로그 및 가격표 확인 부탁드리며<br
							style="margin: 0px; padding: 0px; list-style: none;" />&nbsp;&nbsp;자세한
						내용은 카마스터에게 문의하시기 바랍니다.
					</p>
					<p class="p_notice_lt pt0"
						style="margin: 0px; padding: 30px 0px 0px; list-style: none; color: #747474; font-size: 11px; line-height: 1.2;">&nbsp;</p>
					<p class="p_notice_lt_02 pt0"
						style="margin: 0px; padding: 30px 0px 0px; list-style: none; color: #444444; font-size: 11px; line-height: 1.2; font-weight: bold;">
						* 본 견적내기 서비스는 고객님의 편리한 견적산출을 위해 구현된 서비스로, 실제 계약 시 견적 내용과 일부 차이가 있을
						수 있으니,&nbsp;<br
							style="margin: 0px; padding: 0px; list-style: none;" />
						<span class=" point04"
							style="margin: 0px; padding: 0px; list-style: none; color: #3576bc;">&nbsp;&nbsp;자세한
							내용은 반드시 카마스터에게 문의하시기 바랍니다.</span>
					</p>
					<p class="p_notice_lt pt0"
						style="margin: 0px; padding: 30px 0px 0px; list-style: none; color: #747474; font-size: 11px; line-height: 1.2;">&nbsp;</p>
					<p class="p_notice_lt pt0"
						style="margin: 0px; padding: 30px 0px 0px; list-style: none; color: #747474; font-size: 11px; line-height: 1.2;">
						* 아이오닉 EV 관련 내용은 가까운 지점/대리점에 문의 부탁드립니다.<a
							style="margin: 0px; padding: 0px; list-style: none; color: #707070; text-decoration-line: none;"
							title="새창 열림"
							href="http://www.hyundai.com/kr/biz/selectBizNwrkMgmtPaging.do"
							target="_blank" rel="noopener"><span class="point04"
							style="margin: 0px; padding: 0px; list-style: none; color: #3576bc;">(영업망
								바로가기)</span></a>
					</p>
					<p class="p_notice_lt pt0"
						style="margin: 0px; padding: 30px 0px 0px; list-style: none; color: #747474; font-size: 11px; line-height: 1.2;">&nbsp;</p>
					<p class="p_notice_lt pt0"
						style="margin: 0px; padding: 30px 0px 0px; list-style: none; color: #747474; font-size: 11px; line-height: 1.2;">
						* 장애인, 렌터카 차량의 기본가격은 면세가격 기준입니다.&nbsp;<br
							style="margin: 0px; padding: 0px; list-style: none;" />&nbsp;&nbsp;면세
						적용 여부에 따른 자세한 견적 금액은 반드시 카마스터에게 문의하시기 바랍니다.
					</p>
					<p class="p_notice_lt pt0"
						style="margin: 0px; padding: 30px 0px 0px; list-style: none; color: #747474; font-size: 11px; line-height: 1.2;">&nbsp;</p>
					<p class="p_notice_lt pt0"
						style="margin: 0px; padding: 30px 0px 0px; list-style: none; color: #747474; font-size: 11px; line-height: 1.2;">*
						본 견적내용은 계약 시 변경될 수 있으며, 법적 구속력은 없습니다.</p>
				</div>
				<div class="estimation_banner"
					style="margin: 0px; padding: 50px 0px; list-style: none; width: 930px; height: 160px;">
					<img
						style="margin: 0px; padding: 0px; list-style: none; border: 0px none; vertical-align: top;"
						src="https://logon.hyundai.com/kr/images/estimation/estimation_banner_01.jpg"
						alt="배너 - 정직한 가격은 어디서나 똑같습니다. 현대자동차 Promise Together로 마음이 놓입니다. 언제 어디서나 누구에게나 정직한 가격과 서비스로 신뢰를 약속합니다." />
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</body>
</html>