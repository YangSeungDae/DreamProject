
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/common/header_gray.jsp" />
<title>Q&A | 현대자동차</title>
<link rel="stylesheet" href="<c:url value="/css/jinjoo/signup.css" />" />
<link rel="stylesheet" href="<c:url value="/css/jinjoo/signup2.css" />" />
<link rel="stylesheet" href="<c:url value="/css/article.css"/>" />
<link rel="stylesheet" href="<c:url value='/css/board1-style.css' />" />

<script type="text/javascript"
	src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
<script type="text/javascript">
	var categories;

	$().ready(function() {
		categories = JSON.parse($("#divCategoryTempSave").html());
		$("#cate_all").append("<option value='' selected>전체</option>");
		$("#categoryId").append("<option value='' selected>소분류명</option>");
		for(var category in categories) {
			if (category == "1") {
				$("#cate_all").append("<option value='" + categories[category][0] + "'>" + categories[category][0] + "</option>");
			} else if (category != "0" && categories[category][0] != categories[String(parseInt(category) - 1)][0]) {
				$("#cate_all").append("<option value='" + categories[category][0] + "'>" + categories[category][0] + "</option>");
			}
		}
		$("#cate_all").change(function(){
			var cateParent = $(this).val();
			subCategorySelect(cateParent);
		});
		$(".category-sort-select a").click(function(){
			var selCate = $(this).data("category");
			$(".category-sort-select a").each(function(idx,obj){
				if(idx==0) {
					$(obj).css("border", "1px solid #EAEAEA");
				} else {
					$(obj).css("border-top", "1px solid #EAEAEA");
					$(obj).css("border-right", "1px solid #EAEAEA");
					$(obj).css("border-bottom", "1px solid #EAEAEA");
					$(obj).css("border-left", "none");
				}
			});
			$(this).css("border", "1px solid blue");
			$("#cate_all").val(selCate).attr("selected", "selected");
			subCategorySelect(selCate);
		});
	});

    function subCategorySelect(cateParent){
		$("#categoryId").empty();
		$("#categoryId").append("<option value='' selected>소분류명</option>");
    	for(var category in categories) {
			if (categories[category][0] == cateParent) {
				$("#categoryId").append("<option value='" + category + "'>" + categories[category][1] + "</option>");
			}
		}
    	
    	if(cateParent=="차량구매"){
    		$("#vinNumberDiv").hide();
    		$("#contractNumberDiv").show();
    		$("#carNumberDiv").show();
    	} else if(cateParent=="차량정비") {
    		$("#vinNumberDiv").show();
    		$("#contractNumberDiv").hide();
    		$("#carNumberDiv").show();
    	} else if(cateParent=="정비예약") {
    		$("#vinNumberDiv").show();
    		$("#contractNumberDiv").hide();
    		$("#carNumberDiv").hide();
    	} else {
    		$("#vinNumberDiv").hide();
    		$("#contractNumberDiv").hide();
    		$("#carNumberDiv").hide();
    	}
    		
    }
    
    function doWrite(){
    	if($("#cate_all").val()=="") {
    		alert("대분류를 선택하세요");
    	}
    	else if($("#categoryId").val()=="") {
    		alert("소분류를 선택하세요");
    	}
    	else if($("#subject").val()=="") {
    		alert("제목을 입력하세요");
    	}
    	else if($("#content").val()=="") {
    		alert("내용을 입력하세요");
    	} else {
    		$("#serchForm").attr({"action" : "/DreamProject/question/doWrite"}).submit();
    	}
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
				<img src="<c:url value="/img/global_menu/h4_global_menu04_02.gif"/>"/>
				<div id="location">
	    			<a class="home" href="<c:url value="/"/>" style="background:none;">홈</a>
	    			<a href="<c:url value="/faq/faq"/>">Q&amp;A</a><em>Q&amp;A</em>
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
	
	<div style="margin:0px auto;width:930px;">
		<!-- category-sort-select-wrap 시작 -->
		<link rel="stylesheet" href="<c:url value="/css/category-sort-select-wrap.css"/>" />
		<div class="category-sort-select-wrap" style="padding-bottom:20px;">
			<p><img src="<c:url value="/img/global_menu/txt_global_menu04_01.gif"/>" style="vertical-align:middle;"/>&nbsp;(회원가입 및 로그인 후 이용하실 수 있습니다.)</p>
			<div class="category-sort-select">
				<a data-category="차량구매"><img src="<c:url value="/img/global_menu/img_global_menu04_05.gif"/>"/></a>
				<a data-category="차량정비"><img src="<c:url value="/img/global_menu/img_global_menu04_06.gif"/>"/></a>
				<a data-category="정비예약"><img src="<c:url value="/img/global_menu/img_global_menu04_07.gif"/>"/></a>
				<a data-category="홈페이지"><img src="<c:url value="/img/global_menu/img_global_menu04_08.gif"/>"/></a>
				<a data-category="칭찬하기"><img src="<c:url value="/img/global_menu/img_global_menu04_11.gif"/>"/></a>
				<a data-category="카탈로그초기화"><img src="<c:url value="/img/global_menu/img_global_menu04_13.gif"/>"/></a>
				<a data-category="전기차"><img src="<c:url value="/img/global_menu/img_global_menu04_14.gif"/>"/></a>
			</div>
			<div style="clear:left"></div>
		</div>
	</div>
	<div id="divCategoryTempSave" style="display:none;">
		{
		<c:forEach items="${categoryVOList}" var="categoryVO">
			"${categoryVO.categoryId}" : ["${categoryVO.categoryParentName}", "${categoryVO.categoryName}"],
		</c:forEach>
		    "0" : []
		}
	</div>
	<div class="board" style="padding-bottom: 80px;">
		<p><img src="<c:url value='/img/hd/reply.gif'/>"/></p>
    	<div class="boardwrite">
    		<form method="post" action="" name="serchForm" id="serchForm" enctype="multipart/form-data">
         		<!-- <input type="hidden" name="lgrpCd" id="lgrpCd" value="">
         		<input type="hidden" name="attcFilPath" id="attcFilPath" value="">
         		<input type="hidden" name="file" id="file" value="">
         	 	-->
				<!-- Table -->
                <table summary="카테고리, 성명, 이메일, 제목, 상담내용, 파일첨부, 상담 분야별(차대번호, 계약번호, 차량번호)">
					<tbody>
                  		<tr>
                       		<th scope="row"><img src="<c:url value='/img/hd/카테고리.gif'/>" alt="카테고리"/></th>
                      	<td>
							<select name="cate_all" id="cate_all" class="select-type1" title="카테고리 대분류 선택">
							</select>
							<select name="categoryId" id="categoryId" class="select-type2" title="소분류명 선택">
							</select>
                    	</td>
                  	</tr>
				<!-- 이름 가져오기 -->
					<tr>
                        <th scope="row"><img src="<c:url value='/img/hd/성명.gif'/>" alt="성명"/></th>
                        <td class="u-info-txt">
							<!-- 이름 세션에서 가져오기 -->
							${sessionScope._USER_.name }
							<span class="point"><input type="hidden" id="nameTmp" name="nameTmp" value="배현주" class="txt" title="성명 자동표시"></span>   
                        </td>
                    </tr>
                    <!-- 이메일 가져오기 -->
					<tr>
                        <th scope="row"><img src="<c:url value='/img/hd/이메일.gif'/>" alt="이메일"/></th>
                        <td class="u-info-txt">
						<!-- 이메일 세션에서 가져오기-->
						${sessionScope._USER_.memberId }
						<span class="point"><input type="hidden" id="emailTmp" name="emailTmp" value="01030690083@naver.com" class="txt" title="이메일 자동표시"></span> 
                               <em class="tip">* 가입시 등록한 이메일입니다. 상담결과는 해당 이메일에서 확인 할 수 있습니다.</em>
                        </td>
                    </tr>

					<tr id="vinNumberDiv" style="display:none">
                        <th scope="row">
                        <label for="carnum">
                        <img src="<c:url value='/img/hd/차대번호.gif'/>" alt="차대번호"/>
                        </label>
                        </th>
                        <td>
                            <input type="text" name="vinNumber" id="vinNumber" class="txt">
                        </td>
                    </tr>

                    <tr id="contractNumberDiv" style="display:none">
                        <th scope="row">
                        <label for="cntNo">
                        <img src="<c:url value='/img/hd/계약번호.gif'/>" alt="계약번호"/>
                        </label>
                        </th>
                        <td>
                            <input type="text" name="contractNumber" id="contractNumber" class="txt">
                        </td>
                    
                    </tr>
                    <tr id="carNumberDiv" style="display:none">

                        <th scope="row">
                        <label for="carNo">
                        <img src="<c:url value='/img/hd/차량번호.gif'/>" alt="차량번호"/>
                        </label>
                        </th>
                        <td>
                            <input type="text" name="carNumber" id="carNumber" class="txt">
                        </td>
                    
                    </tr>
                    <tr>
                        <th scope="row">
                        <label for="title">
                        <img src="<c:url value='/img/hd/제목.gif'/>" alt="제목"/>
                        </label>
                        </th>
                        <td>
                            <input type="text" name="subject" id="subject" style="width:100%;">
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                        <label for="content">
                        <img src="<c:url value='/img/hd/상담내용.gif'/>" alt="상담내용"/>
                        </label>
                        </th>
                        <td>
                            <textarea name="content" id="content"></textarea>
                        </td>
                    </tr>

			<!-- 파일 업로드 controller -->
			<!-- db연결  -->
                        <tr>
                            <th scope="row"><img src="<c:url value='/img/hd/파일첨부.gif'/>" alt="파일첨부"/></th>
                            <td>
                                <input type="file" class="txt" name="attachment" id="attachment" style="width:400px;" title="파일첨부 파일 찾아보기"> 
                                
                            <!--    <button name="uploadFile" onclick=" ">업로드</button>
                                 <input type="image" src="<c:url value=''/>"  id="uploadfile" alt=""  />--> <br>
                              
                                <em class="tip">* 이미지 및 doc(docx), ppt(pptx), hwp 파일만 첨부 가능 합니다. <br>(첨부파일은 7MB를 초과할 수 없습니다.)</em> 
                            </td>
                     
                        </tr>
                        </tbody>
                </table>
            </form>
         </div>
         <div class="btnwrap">
             <input type="image" src="<c:url value='/img/hd/상담요청.gif'/>" alt="상담요청" onclick="doWrite();">
           
         </div>
    </div>
	<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</body>
</html>





