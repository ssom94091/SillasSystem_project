<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="container">

	<div class="row">
		<div class="col-sm-12" style="margin:40px auto;">
		<table  class="table table-striped" style="text-align: center; border: 1px solid #aaaaaa;border-left:none;border-right:none;border-top:none; background-color:#ffffff">
			<thread>
				<tr style="border: 1px double;border-left:none;border-right:none;">
					<th style="background-color: #bbbbbb; text-align: center;">기업명</th>
					<th style="background-color: #bbbbbb; text-align: center;">사업주</th>
					<th style="background-color: #bbbbbb; text-align: center;">계약기간</th>
				</tr>
			</thread>
		<today>
			<tr>
				<td>신라시스템 qq</td>
				<td>홍길동</td>
				<td>2020-07-06~2021-07-06</td>
			</tr>
			<tr>
				<td>테스트용기업</td>
				<td>테스트용이름</td>
				<td>2020-07-05~2021-07-08</td>
			</tr>
			<tr>
				<td>테스트용기업2</td>
				<td>테스트이름2</td>
				<td>2020-07-08~2024-03-24</td>
			</tr>
			<tr>
				<td>3</td>
				<td>3?</td>
				<td>반영구제</td>
			</tr>
			</today>
		</table>
		<button class ="btn btn-primary" onclick="location.href = '/user/write.do'" style="float:right;margin-right:10px">글쓰기</button>
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
</script>