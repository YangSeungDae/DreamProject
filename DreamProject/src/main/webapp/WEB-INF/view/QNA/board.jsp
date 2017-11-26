<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/css/board1-style.css' />" />
<script type="text/javascript" src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
<script type="text/javascript">

$(document).ready(function(){
    $("#carbuy").click(function(e){
    	 var category = $(this).attr("value");
    	 
     });
});



</script>

</head>
<body>

<!-- 문의 작성-->

<div class="board">

	<p><img src="<c:url value='/img/hd/답변.gif'/>"/></p>
    <div class="boardwrite">
    		<form method="post" action="" name="serchForm" id="serchForm" onsubmit="return false;">
         		<input type="hidden" name="lgrpCd" id="lgrpCd" value="">
         		<input type="hidden" name="attcFilPath" id="attcFilPath" value="">
         		<input type="hidden" name="file" id="file" value="">
         	
				<!-- Table -->
                <table summary="카테고리, 성명, 이메일, 제목, 상담내용, 파일첨부, 상담 분야별(차대번호, 계약번호, 차량번호)">
					<tbody>
                  		<tr>
                       		<th scope="row"><img src="<c:url value='/img/hd/카테고리.gif'/>" alt="카테고리"/></th>
                      	<td>
                         	 <select name="cate_all" id="cate_all" class="select-type1"title="카테고리 대분류 선택">
                              <option value="">전체</option>
                              <option value="CARBUY" id="carbuy">차량구매</option>
                              <option value="CARREP" id="carrep">차량정비</option>
                              <option value="REPRES" id="repres">정비예약</option>
                              <option value="HOMEP" id="homep">홈페이지</option>
                              <option value="CTLGCL" id="catal">카탈로그초기화</option>
                              <option value="COMPLIM" id="complim">칭찬하기</option>
                              <option value="ELECTR" id="electr">전기차</option>
                           </select>
<select name="cate_small" id="cate_small" class="select-type2"  title="소분류명 선택">
                              <option value="">소분류명</option>
                              <option value="CARBUY" class="carbuy">일반</option>
                              <option value="">소분류명</option>
                              <option value="">소분류명</option>
                              <option value="">소분류명</option>
                              <option value="">소분류명</option>
                              <option value="">소분류명</option>
                              <option value="">소분류명</option>
                         </select>
                    	</td>
                  	</tr>
				<!-- 이름 가져오기 -->
					<tr>
                        <th scope="row"><img src="<c:url value='/img/hd/성명.gif'/>" alt="성명"/></th>
                        <td class="u-info-txt">
<!-- 이름 세션에서 가져오기 -->
							<span class="point"><input type="hidden" id="nameTmp" name="nameTmp" value="배현주" class="txt" title="성명 자동표시"></span>   
                        </td>
                    </tr>
                    <!-- 이메일 가져오기 -->
					<tr>
                        <th scope="row"><img src="<c:url value='/img/hd/이메일.gif'/>" alt="이메일"/></th>
                        <td class="u-info-txt">
						<!-- 이메일 세션에서 가져오기-->  
						<span class="point"><input type="hidden" id="emailTmp" name="emailTmp" value="01030690083@naver.com" class="txt" title="이메일 자동표시"></span> 
                               <em class="tip">* 가입시 등록한 이메일입니다. 상담결과는 해당 이메일에서 확인 할 수 있습니다.</em>
                        </td>
                    </tr>

					<tr id="carnumDiv" style="display:none">
                        <th scope="row">
                        <label for="carnum">
                        <img src="<c:url value='/img/hd/차대번호.gif'/>" alt="차대번호"/>
                        </label>
                        </th>
                        <td>
                            <input type="text" name="carnum" id="carnum" class="txt">
                        </td>
                    </tr>

                    <tr id="contnumDiv" style="display:none">
                        <th scope="row">
                        <label for="cntNo">
                        <img src="<c:url value='/img/hd/계약번호.gif'/>" alt="계약번호"/>
                        </label>
                        </th>
                        <td>
                            <input type="text" name="cntNo" id="cntNo" class="txt">
                        </td>
                    
                    </tr>
                    <tr id="carNoDiv" style="display:none">

                        <th scope="row">
                        <label for="carNo">
                        <img src="<c:url value='/img/hd/차량번호.gif'/>" alt="차량번호"/>
                        </label>
                        </th>
                        <td>
                            <input type="text" name="carNo" id="carNo" class="txt">
                        </td>
                    
                    </tr>
                    <tr>
                        <th scope="row">
                        <label for="title">
                        <img src="<c:url value='/img/hd/제목.gif'/>" alt="제목"/>
                        </label>
                        </th>
                        <td>
                            <input type="text" name="title" id="title" >
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
                                <input type="hidden" name=" " id=" " value=" ">
                                <input type="hidden" name=" " value=" ">
                                <input type="hidden" name=" " value=" ">
                                <input type="file" class="txt" name="attcFil" id="attcFil" style="width:400px;" title="파일첨부 파일 찾아보기"> 
                                
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
                        <input type="image" src="<c:url value='/img/hd/상담요청.gif'/>" alt="상담요청" onclick="">
                      
                    </div>
                </div>




</body>
</html>