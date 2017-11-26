
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/common/header_gray.jsp" />
<title>Q&A | 현대자동차</title>
<link rel="stylesheet" href="<c:url value="/css/jinjoo/signup.css" />" />
<link rel="stylesheet" href="<c:url value="/css/jinjoo/signup2.css" />" />
<link rel="stylesheet" href="<c:url value="/css/article.css"/>" />
<link rel="stylesheet" href="<c:url value="/css/FaqList.css"/>" />
<script type="text/javascript"
	src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
<script type="text/javascript">
	$().ready(function() {
		/*$("#registBtn").click(function() {
			$("#signUpForm").attr({
				method : "post",
				action : "<c:url value='/member/doSignUp'/>"
			}).submit();
		});*/

		$(".answer").hide();
		
		$(".subject").click(function() {
			if($(this).parent().next(".answer").is(":not(:visible)")) {
				$(".subject").css({
					"background": "url('/DreamProject/img/FaqList/bg_subject_close.gif') no-repeat 703px 8px"
				});
				
				$(this).css({
				"background": "url('/DreamProject/img/FaqList/bg_subject_open.gif') no-repeat 703px 8px"});
				$(".answer").hide();
				$(this).parent().next(".answer").slideDown( "slow", function() {});
			}
		});
		
		$("#inputQuestionContent").val($("input[name='questionContent']").val());
		$("#selectQuestionContent option").each(function(idx, obj){
			if ($(obj).val()==$("input[name='faqCategoryName']").val()) {
				$(obj).attr("selected", "selected");
			}
		});
		
		
		
		// 김준영 수정 부분 입니다 !!!!!!!!!!
		
		$("#writeDiv").hide(); 
		//수정
		$(".faq_update").click(function(){
			$("#writeDiv").slideDown('slow', function(){});
			
			$("#writeForm #faqId").val($(this).closest(".row-wrap").find(".num").data("number"));
			$("#writeForm #questionContent").val($(this).closest(".row-wrap").find(".subject a").html());
			$("#writeForm #faqCategoryName").val($(this).closest(".row-wrap").find(".sort").html());
			$("#writeForm #answerContent").val($(this).closest(".row-wrap").find(".answer-on span").html());
		}); 
		//삭제 (구현 완료)
		$(".faq_delete").click(function() { 
			if( confirm("이 글을 삭제 하시겠습니까?") ){
				var faqId = $(this).closest(".row-wrap").find(".num").data("number");
				console.log("<c:url value='/faq/delete/'/>" + faqId);
				location.href = "<c:url value='/faq/delete/'/>" + faqId;
			}
		})
		//글쓰기
		$(".faq_insert").click(function() {
			$("#writeDiv").slideDown('slow', function(){});
			
			$("#writeForm #faqId").val("0");
			$("#writeForm #questionContent").val("");
			$("#writeForm #faqCategoryName").val("");
			$("#writeForm #answerContent").val(""); 
		})
		//등록
		$(".faqWrite_insert").click(function() {
			//카테고리 선택 판별
			if($("#faqCategoryName").val()==""){
				alert("카테고리를 선택하세요.")
			}
			else {
				
				if($("#writeForm #faqId").val()=="0") {
					console.log("실행되는 확인중 입니다")
					//등록
					var writeForm = document.getElementById("writeForm");
					writeForm.method = "post";
					writeForm.action = "<c:url value='/faq/write'/>";
					writeForm.submit();
					
				} 
				else {
					//수정
					var writeForm = document.getElementById("writeForm");
					writeForm.method = "post";
					writeForm.action = "<c:url value='/faq/update'/>";
					writeForm.submit();
				}
			}
		})
		//취소 (구현 완료)
		$(".faqWrite_cancel").click(function() {
			$("#writeDiv").slideUp('slow', function() {});
		})
		// 김준영 수준 부분 끝입니다!!!!!!!!!!!!

		
		
		
	});
	
	function searchFaq() {
		$("input[name='questionContent']").val($("#inputQuestionContent").val());
		$("input[name='faqCategoryName']").val($("#selectQuestionContent").val());
		$("input[name='faqId']").val("0");
		$("#faqForm").submit();
	}
	
	function searchFaqById(faqId){
		$("input[name='questionContent']").val('');
		$("input[name='faqCategoryName']").val('');
		$("input[name='faqId']").val(faqId);
		$("#faqForm").submit();
	}
</script>
<style type="text/css">
body {
	user-drag: none;
	user-select: none;
	-moz-user-select: none;
	-webkit-user-drag: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}
</style>   
	<div style="width: 930px; margin: 44px auto 0px;">
		<div class="Btn">
			<img src="<c:url value="/img/jinjoo/b0.png" />" /> <br> <br>
		</div>
		<div class="Bte">
			<img src="<c:url value="/img/jinjoo/b1.png" />" />
		</div>
		<img src="<c:url value="/img/jinjoo/b5.png" />" /> 
	</div>
<div id="container">
	<div id="subnavigation-wrap">
		<div class="subnavigation-inner">
			<div class="listcutter" style="width: 324px;">
				<div class="listcutter-inner" style="width: 324px;">
					<ul id="sub-navigation" class="col1" style="width: 324px;">
		                <li>
		                	<a href="/DreamProject/faq/faq">
		                		<img src="/DreamProject/img/global_menu/snb_global_menu04_01_out.gif" alt="FAQ"></a></li>
		                <li style="background: none;">
		                	<a href="/DreamProject/question/write">
		                		<img src="/DreamProject/img/global_menu/snb_global_menu04_02_out.gif" alt="Qamp;A"></a></li>
					</ul>
					<div style="clear:both;"></div>
				</div>
			</div>
			<a href="#" class="snb-control">
				<img src="/DreamProject/img/global_menu/btn_control_up.gif" alt="스크롤 올리기" />
			</a>
		</div>
	</div>
	<div style="border-bottom:1px solid #dddddd;">
		<div style="margin:0px auto;width:930px;padding:15px 0px 15px 0px;position:relative;">
			<img src="<c:url value="/img/global_menu/h4_global_menu04_01.gif"/>"/>
			<div id="location">
    			<a class="home" href="<c:url value="/"/>" style="background:none;">홈</a>
    			<a href="<c:url value="/faq/faq"/>">Q&amp;A</a><em>FAQ</em>
    		</div>
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
				<ol>
					<c:forEach items="${frequentFaqList}" var="faqVO">
					<li>
						<a href="javascript:searchFaqById(${faqVO.faqId});"><b>[${faqVO.faqCategoryName}]</b>${faqVO.questionContent }</a></li>
					</c:forEach>
				</ol>
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

<form id="faqForm" method="post" action="">
	<div class="toggle_list_wrap subsection">
		<input type="hidden" name="questionContent" value="${faqSearchVO.questionContent}"></input>
		<input type="hidden" name="faqCategoryName" value="${faqSearchVO.faqCategoryName}"></input>
		<input type="hidden" name="faqId" value="${faqSearchVO.faqId}"></input>
		<c:forEach items="${faqList}" var="faqVO">
			<div class="row-wrap">
				<div class="row">
					<div class="num" title="번호" data-number="${faqVO.faqId }">${faqVO.faqId }</div>
					<div class="sort" title="구분">${faqVO.faqCategoryName }</div>
					<div class="subject" title="제목">
						<a href="#none">${faqVO.questionContent }</a>
					</div>
				</div>
				<div class="answer answer-on">
					<span>${faqVO.answerContent }</span>
					
					<c:if test="${_USER_.authLev eq 5}">
						<br/> 
						<div style="text-align: right; margin-right: 59px;">
							<a href="javascript:void(0)" class="faq_update" style="width: fit-content; text-decoration: none; color: black; margin-right: 5px;">
								수정
							</a>
							<a href="javascript:void(0)" class="faq_delete" style="width: fit-content; text-decoration: none; color: black;">
								삭제 
							</a> 
						</div>
					</c:if> 
				</div>
			</div>
		</c:forEach>
	</div>
		<div class="paging" style="position: relative;">
			<div style="display: inline-block;">
				${pager}
			</div>
			<c:if test="${_USER_.authLev eq 5}">
			<div style="display: inline-block; position: absolute; right: 40px;">
				<a class="faq_insert" style="width: fit-content; ">
					글쓰기
				</a>
			</div>
			</c:if>
		</div>
	
		
</form>


	<!-- 여기가 토글될 부분입니다 !!!!!!!!!!!!!!!!                            -->
	<div id="writeDiv" style="width: 930px; margin: 0 auto 0;">
		<form id="writeForm" method="post" action="">
		 
		 
			<input type="hidden" id="faqId" name="faqId" value="0" readonly="readonly"/>
			
			
			<div style="width: 900px; margin: 0 auto 0;">
				<div style="display: inline-block;">
					<input id="questionContent" name="questionContent" type="text" style="width: 750px"/>
				</div>
				<div style="display: inline-block;"> 
					<select id="faqCategoryName" name="faqCategoryName"> 
						<option value="">선택하세요</option>
						<option value="차량구매">차량 구매</option>
						<option value="차량정비">차량 정비</option>
						<option value="정비예약">정비 예약</option>
						<option value="홈페이지">홈페이지</option>
						<option value="카탈로그초기화">카탈로그초기화</option>
						<option value="칭찬하기">칭찬하기</option>
						<option value="전기차">전기차</option>
					</select>
					
				</div>
			</div>  
			
			
			<div style="width: 900px; margin: 15px auto 0;"> 
				<textarea id="answerContent" name="answerContent" style="width:900px;height:200px;">
				</textarea>
			</div>
			 
			<div style="width: 900px; margin: 0 auto 0; text-align: right;">
				<a href="javascript:void(0)" class="faqWrite_insert" style="text-decoration: none; color: black; margin-right: 5px;">
				등록 
				</a>
				<a href="javascript:void(0)" class="faqWrite_cancel" style="text-decoration: none; color: black;">
				취소
				</a>
			</div>
		</form>
	</div>
	<!-- 토글 끝입니다 !!!!!!!!!!!!!!!      				 -->


	<div class="list-search-form">
		<select name="selectQuestionContent" id="selectQuestionContent" title="검색 항목 선택">
			<option value="">전체</option>
			<option value="차량구매">차량구매</option>
			<option value="차량정비">차량정비</option>
			<option value="정비예약">정비예약</option>
			<option value="홈페이지">홈페이지</option>
			<option value="카탈로그초기화">카탈로그초기화</option>
			<option value="칭찬하기">칭찬하기</option>
			<option value="전기차">전기차</option>
		</select>
				
		<input type="text" class="text" name="inputQuestionContent" id="inputQuestionContent" style="width:227px;" title="검색어 입력">
					
		<input type="image" src="/DreamProject/img/FaqList/btn_search03.gif"  alt="검색"  onclick="javascript:searchFaq();" >
			
	</div>
		<div style="margin:0px auto;width:930px;">
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
		</div>
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</body>
</html>