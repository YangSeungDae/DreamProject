<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/WEB-INF/view/common/header_gray.jsp" />
<title>마이페이지 | 현대자동차</title>
<script type="text/javascript">

$().ready(function() {
	$(".row-wrap .subject").each(function(idx, obj) {
		$(obj).click(function (){
			var url = "<c:url value='/question/read/' />" + $(obj).data("questionid")
			var params = {};
			$.post(url, params, function(response) {
				
				//alert(JSON.stringify(response));
				var qid = response["questionId"];
				$("#viewQuestionId").html(qid);
				$("#questionId").val(qid);
				$("#viewCategory").html(response["categoryVO"]["categoryParentName"] + " " + response["categoryVO"]["categoryName"]);
				$("#viewSubject").html(response["subject"]);
				$("#viewWriteDate").html(response["writeDate"]);
				$("#viewStatus").html(parseInt(response["answerCount"]) > 0 ? "답변완료" : "미답변");
				$("#viewContent").text(response["content"]);
				$("#viewContractNumber").text(response["contractNumber"]);
				$("#viewVinNumber").text(response["vinNumber"]);
				$("#viewCarNumber").text(response["carNumber"]);
				if (response["attachmentVO"]["attachmentName"]) {
					$("#viewAttachment").html("<a href='/DreamProject/attachment/download/" + response["attachmentVO"]["attachmentId"] + "'>" + response["attachmentVO"]["attachmentName"] + "</a>");
				} else {
					$("#viewAttachment").html("");
				}
				loadAnswers(qid);
			});
			$("#writeDiv").show();
		});
	});
	$(".ans_delete").click(function() { 
		if( confirm("이 글을 삭제 하시겠습니까?") ){
			var answerId = ${answerVO.answerId}
			console.log("<c:url value='/ans/delete/'/>" + answerId);
			location.href = "<c:url value='/ans/delete/'/>" + answerId;
		}
	});
	//등록
	$(".ansWrite_insert").click(function() {
		//카테고리 선택 판별

		//등록
		var writeForm = document.getElementById("writeForm");
		writeForm.method = "post";
		writeForm.action = "<c:url value='/ans/write'/>";
		writeForm.submit();
	})
	//취소 (구현 완료)
	$(".ansWrite_cancel").click(function() {
		$("#writeDiv").slideUp('slow', function() {});
	})
	
	
});

function loadAnswers(qid){
	$("#divAnswerList").empty();
	var url = "<c:url value='/ans/read/' />" + qid;
	var params = {};
	$.post(url, params, function(response) {
		for(var i = 0 ; i < response.length ; i++) {
			$("#divAnswerList").append("<div style='border:1px solid #dddddd;height:25px;padding-left:10px;'>" + "관리자 " + response[i]["answerDate"] + "</div>");
			$("#divAnswerList").append("<div style='border-bottom:1px solid #dddddd;height:30px;padding-left:10px;'>" + response[i]["answerContent"] + "</div>");
		}
	});
}

</script>
<style type="text/css">
	.paging a {
		font-size: 17px;
		display:inline-block;
		width: 25px;
		height: 25px;
		line-height: 25px;
		text-decoration: none;
		border: 1px solid #dddddd;
	}
	.row-wrap td {
		text-align:center;
	}
	#divAnswerList {
		margin-top: 30px;
	}
	.subject {
		text-decoration: none;
		color: rgb(112, 112, 112);
	}
	.subject:hover {
		text-decoration: underline;
	}
</style>
	<div class="myPagemain" style="position: relative; width: 100%; min-width: 930px; padding-top: 38px;">
		<div class="mypage_sub">
			<h2 style="height: 50px;font-size: 0;line-height: 0;text-align: center;"><img src="<c:url value='/img/mypage/mymenu.gif'/>"/></h2>
			<p style="height: 50px;font-size: 0;line-height: 0;text-align: center;"><img src="<c:url value='/img/mypage/menu.gif'/>"/></p>
			<div style=" height: 281px;text-align: center; border-bottom: 1px solid rgba(0, 0, 0, 0.15);"><img src="<c:url value='/img/mypage/mypage.jpg'/>"/></div>
			<span style="z-index: 2; width: 138px; height: 23px;margin-left: -69px;padding: 0;display: block; position: absolute; left: 50%;">
			<img src="<c:url value='/img/mypage/btn_control.png'/>"/></span>
		
		<div class="myPage_inner" style=" margin-right: 83px;position: absolute;right: 0;font-size: 11px;line-height: 1.2;">
			<a class="home" style="padding: 0; margin: 0;background: none;color: #747474;text-decoration:none;" href="DreamProject/">홈</a>
			<img src="<c:url value='/img/mypage/right.gif'/>"/>
			<em style=" margin-left: 2px; padding-left: 7px;color: #648ab9; font-style: normal;">마이페이지</em>
		</div>
		</div>
		
		<div class="article" style="position: relative; width: 930px; margin: 0 auto; padding: 40px 0 120px 0;">
			<h4><img src="<c:url value='/img/mypage/q&a이력.gif'/>"/></h4>
			
			<div class="context" style="position: relative;width: 100%; margin-top: 40px;">
				<h5> <img src="<c:url value='/img/mypage/q&alist.gif'/>"/></h5>
				
            <!-- 내용을 집어넣어야 해서 for문 돌려야 하고  -->                                                        
			<form action="" id="questionForm" name="questionForm" method="post">
				<table style="border-collapse: collapse; width: 100%;" summary="Q&amp;A 이력의 번호, 카테고리, 제목, 등록일자, 상태를 나타낸 표">
					<colgroup>
						<col width="10%">
						<col width="25%">
						<col width="*">
						<col width="20%">
						<col width="15%">
					</colgroup>
					<thead>
					<tr>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2;" scope="col">NO</th>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2; "scope="col">카테고리</th>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2; "scope="col">제목</th>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2; " scope="col">등록일자</th>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2; " scope="col">상태</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${questionList}" var="questionVO">
						<tr class="row-wrap" class="row" style="margin-top:5px;height: 31px;color: rgb(112, 112, 112);font-family: 돋움, dotum, sans-serif;font-size: 12px; border-bottom: 1px solid #eaeaea;">
							<td>
								${questionVO.questionId}
							</td>
							<td>
								${questionVO.categoryVO.categoryParentName}&nbsp;${questionVO.categoryVO.categoryName}
							</td>
							<td>
								<a class="subject" href="javascript:void(0);" data-questionid="${questionVO.questionId}">${questionVO.subject}</a>
							</td>
							<td>
								${fn:substring(questionVO.writeDate, 0, 10)}
							</td>
							<td>
								<c:if test="${questionVO.answerCount gt 0}">
									답변완료
								</c:if>
								<c:if test="${questionVO.answerCount eq 0}">
									미답변
								</c:if>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			<div class="paging" style="position: relative; width: 100%;margin-top: 30px;font-size: 0;line-height: 0;text-align: center;letter-spacing: -5px;">
                      ${pager}
			</div>
		</form>
	
		<div id="writeDiv" style="display:none;width:930px;padding-top:40px;margin: 0 auto 0;">
			<form id="writeForm" method="post" action="">
			 	<input type="hidden" id="questionId" name="questionId" />
				<table style="border-collapse: collapse; width: 100%;" summary="Q&amp;A 이력의 번호, 카테고리, 제목, 등록일자, 상태를 나타낸 표">
					<colgroup>
						<col width="10%">
						<col width="25%">
						<col width="*">
						<col width="20%">
						<col width="15%">
					</colgroup>
					<thead>
					<tr>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2;" scope="col">NO</th>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2; "scope="col">카테고리</th>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2; "scope="col">제목</th>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2; " scope="col">등록일자</th>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2; " scope="col">상태</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td id="viewQuestionId" style="text-align:center;height:25px;"></td>
						<td id="viewCategory" style="text-align:center;height:25px;"></td>
						<td id="viewSubject" style="text-align:center;height:25px;"></td>
						<td id="viewWriteDate" style="text-align:center;height:25px;"></td>
						<td id="viewStatus" style="text-align:center;height:25px;"></td>
					</tr>
					</tbody>
				</table>
				<table style="border-collapse: collapse; width: 100%;" summary="Q&amp;A 계약번호, 차량번호, 차대번호, 업로드 파일">
					<colgroup>
						<col width="20%">
						<col width="20%">
						<col width="20%">
						<col width="*">
					</colgroup>
					<thead>
					<tr>
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2;" scope="col">계약번호</th>
   						
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2;" scope="col">차대번호</th>
   						
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2;" scope="col">차량번호</th>
   						
						<th style="    padding: 8px 0 5px 0;
  									   border: 1px solid #626875;
   									   border-width: 1px 1px 1px 0;
   									   background: #707683;
   									   color: #ffffff;
   									   font-size: 11px;
   									   line-height: 1.2;" scope="col">업로드 파일</th>
   					</tr>
   					<tr>
   						<td id="viewContractNumber" style="text-align:center;height:25px;"></td>
   						<td id="viewVinNumber" style="text-align:center;height:25px;"></td>
   						<td id="viewCarNumber" style="text-align:center;height:25px;"></td>
   						<td id="viewAttachment" style="height:25px;"></td>
   					</tr>
					<tr>
						<td id="viewContent" colspan="4" style="height:60px;border:1px solid #dddddd;padding:10px;"></td>
					</tr>
				</table>
				<div id="divAnswerList">
				</div>
				<c:if test="${_USER_.authLev eq 5}">
				<div style="width: 900px; margin: 15px auto 0;">
					<textarea id="answerContent" name="answerContent" style="width:900px;height:200px;"></textarea>
					<div style="width: 900px; margin: 0 auto 0; text-align: right;">
						<a href="javascript:void(0)" class="ansWrite_insert" style="text-decoration: none; color: black; margin-right: 5px;">
						등록 
						</a>
						<a href="javascript:void(0)" class="ansWrite_cancel" style="text-decoration: none; color: black;">
						취소
						</a>
					</div>
				</div>
				</c:if>
			</form>
		</div>
			</div>
		</div>
	</div>
<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</body>
</html>