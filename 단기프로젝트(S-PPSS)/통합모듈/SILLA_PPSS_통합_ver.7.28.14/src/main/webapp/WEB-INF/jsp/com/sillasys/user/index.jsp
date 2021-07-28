<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="container">

	<div class="row">
		<div class="col-sm-12" style="margin:40px auto;">
		<form action="/user/write.do" method="post" id="frm" name="frm">
		<table  class="table table-striped" style="text-align: center; border: 1px solid #aaaaaa;border-left:none;border-right:none;border-top:none; background-color:#ffffff">
			<input type="hidden" id="index" name="index">
			<thread>
				<tr style="border: 1px double;border-left:none;border-right:none;">
					<th style="background-color: #bbbbbb; text-align: center;">기업명</th>
					<th style="background-color: #bbbbbb; text-align: center;">사업주</th>
					<th style="background-color: #bbbbbb; text-align: center;">계약유형</th>
					<th style="background-color: #bbbbbb; text-align: center;"></th>
				</tr>
			</thread>
		<today>
			<tr>
				<td>(주)신라시스템</td>
				<td>박창병</td>
				<td>표준근로계약서</td>	
				<td type="button" style="color:blue; text-decoration:underline;" onclick="CheckIndex(1);" >작성</td>	
			</tr>
			
			<tr>
				<td>(주)신라시스템</td>
				<td>박창병</td>
				<td>기간제 표준근로계약서</td>
				<td type="button" style="color:blue; text-decoration:underline;" onclick="CheckIndex(2);" >작성</td>
			</tr>
			<tr>
				<td>(주)신라시스템</td>
				<td>박창병</td>
				<td>단시간근로자 표준근로계약서</td>
				<td type="button" style="color:blue; text-decoration:underline;" onclick="CheckIndex(3);" >작성</td>
			</tr>
			<tr>
				<td>(주)신라시스템</td>
				<td>박창병</td>
				<td>기간제 단시간근로자 표준근로계약서</td>
				<td type="button" style="color:blue; text-decoration:underline;" onclick="CheckIndex(4);" >작성</td>			
			</tr>
			</today>
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