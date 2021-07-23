<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container">

	<div class="row">
		<div class="col-sm-12" style="margin:40px auto;">
		<form action="/user/write.do" method="post" id="frm" name="frm">
		<table  class="table" style="text-align: center; border: 2px solid black; border-collapse:collapse;background-color:#ffffff">
			<input type="hidden" id="user_id" name="user_id">
			<thead>
				<tr style="border:1px solid black;">
					<th style="background-color: #dadada; text-align: center;width:25%;">기업명</th>
					<th style="background-color: #dadada; text-align: center;width:18%;border-right:1px solid;border-left:1px solid;">사업주</th>
					<th style="background-color: #dadada; text-align: center;width:47%;">계약유형</th>
					<th style="background-color: #dadada; text-align: center;width:10%;border-left:1px solid""></th>
				</tr>
			</thead>
	<tbody>
	<c:forEach items="${contentList}" var="contentList">
               <tr style="border-bottom:1px solid">
                  <td><c:out value="${contentList.adminName}"/></td>
                  <td style="border-right:1px solid;border-left:1px solid;"><c:out value="${contentList.adminName}"/></td>
                  <td><c:out value="${contentList.contractType}"/></td>
                  <td style="border-left:1px solid"><c:out value="${contentList.contractType}"/></td>
               </tr>
    </c:forEach>
	</tbody>
		</table>
	</form>
	</div>
	</div>
</div>

<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<style>
	.sidebar {
		display:block;
		position: fixed;
		background-image: url("/images/silla/silla_side_logo.PNG");
		background-color: red;
		width:80%;
		height:auto;
	}
</style>

<script>
	var currentPosition = parseInt($("#sidebox").css("top"));
	$(window).scroll(function(){
		var position = $(window).scrollTop();
		$("#sidebox".stop().animate({}))
	})
	
	
	function CheckIndex(value) {
		index = document.getElementById("index");
		index = value;
		console.log(index);
		parent.moveToWrite(index);
	}
	
	function moveToWrite(value) {
	      frm = document.getElementById("frm");
	      index = document.getElementById("index");
	      index.value = value;
	      console.log("parent "+document.getElementById("index").value);
	      frm.submit();
	   }
</script>