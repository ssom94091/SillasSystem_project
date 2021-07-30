<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="containter">
	<div  style="margin: 0, auto;width:100%; text-align:center;">
      <button
       type="button" class="btn_image" id="img_btn1"
        style=" 
        padding: 0;
        border: none; 
        background: none; 
        width: 170px; 
        cursor:pointer; ">
        <img id=btn1_img src="/images/silla/sub_btn1_click.png" style="max-width: 100%; height: auto; margin:0, auto;">
        </button>
         <!-- btn2(양식보기) 버튼 -->
        <button
       type="button" class="btn_image" id="img_btn2"
        style=" 
        padding: 0;
        border: none; 
        background: none; 
        width: 170px;
        margin-left:30px;  
        cursor:pointer;">
        <img id=btn2_img src="/images/silla/sub_btn2_off.png"  style="max-width: 100%; height: auto; margin:0, auto;">
        </button>
        </div>
	<h3 style="margin-left:20px;">미작성 계약서 목록</h3>
		<div class="row">
				<div class="col-sm-12">
				
				<form action="#" method="POST" id="form1">
				<table class="table" style="text-align: center; border: 1px solid #dddddd;">
					<thead style="background-color: #bbdefb; border: 1px">
						<tr>
							<th style="backgroud-color: #fafafa; text-align: center;">No.</th>
							<th style="backgroud-color: #fafafa; text-align: center;">이름</th>
							<th style="backgroud-color: #fafafa; text-align: center;">유형</th>
							<th style="backgroud-color: #fafafa; text-align: center;">업무내용</th>
							<th style="backgroud-color: #fafafa; text-align: center;">작성일</th>
							<th style="backgroud-color: #fafafa; text-align: center;">수정일</th>
							<th style="backgroud-color: #fafafa; text-align: center;"></th>
							<th style="backgroud-color: #fafafa; text-align: center;"></th>
						</tr>
					</thead>
					<tbody id="tbody">
					
						<c:forEach items="${contentList}" var="contentList">
						<tr>
							<td><c:out value="${contentList.contractPk}"/></td>
							<td><c:out value="${contentList.userName}"/></td>
							<td><c:out value="${contentList.contractType}"/></td>
							<td><c:out value="${contentList.content}"/></td>
							<td><c:out value="${contentList.createDate}"/></td>
							<td><c:out value="${contentList.modifyDate}"/></td>
							<td><button class="btn btn-primary" id="viewbtn" name="viewbtn" onclick="viewContract();" value="<c:out value="${contentList.contractPk}"/>">보기</button>
							
								<input type="hidden" id="type" name="type" value="<c:out value="${contentList.contractType}"/>"></td>
							<td><button class="btn btn-danger"id="deletebtn" onclick="deleteContract(<c:out value="${contentList.contractPk}"/>);">삭제</button></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
			
		</div>
			<div class="col-sm-12">
				<p style="float:left; margin-left:30px; display:inline-block;">검색된 레코드 수 : <c:out value="${contractSize}"/>건</p>
			</div>
					<div class="col-sm-12" style="text-align:center;">
					
			<form  action="/contract/list.do" method="post">
					Type
						<select id="search_type" name="search_type" style="height: 100%;">
   							<option value="1">이름</option>
   							<option value="2">유형</option>
   							<option value="3">업무내용</option>
						</select>
      					<input class="form-control" type="text"  name="searchType" id="searchType" onsubmit="searchFn();" style="min-width:200px; max-width:400px; width: 20vw;display:inline-block;">
						<button class="btn btn-primary" type="submit">검색</button>
			</form>
			</div>
			</div> <!-- row 닫는 태그 -->
		</div> <!-- container 닫는  태그-->