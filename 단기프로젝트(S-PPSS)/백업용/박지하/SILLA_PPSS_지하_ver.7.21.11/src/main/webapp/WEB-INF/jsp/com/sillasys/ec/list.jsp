<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<br>
	<div class="containter">
	<h3 style="margin-left:20px;">작성된 근로계약서 목록</h3>
		<div class="form-group row pull-right">
		
			<div style="magin-left:30px">
				<input class="form-control" type="text" size="20"  style="magin-left:30px">
			</div>
			<div>
				<button class="btn btn-primary" type="button">검색</button>
			
			</div>
			
		</div>
		
		<hr  style="height: 20px; ">
		<div>
		<table class="table" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th style="backgroud-color: #fafafa; text-align: center;">No.</th>
					<th style="backgroud-color: #fafafa; text-align: center;">제목</th>
					<th style="backgroud-color: #fafafa; text-align: center;">유형</th>
					<th style="backgroud-color: #fafafa; text-align: center;">근로자</th>
					<th style="backgroud-color: #fafafa; text-align: center;">계약기간</th>
					<th style="backgroud-color: #fafafa; text-align: center;">작성일</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>1</td>
						<td><a href="" >박창병 근로계약서</a></td>
						<td>표준</td>
						<td>박창병</td>
						<td>2021.09.16 ~ 2022.09.16</td>
						<td>2021년 9월 16일 오전 4시 16분</td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="" >홍길동 근로계약서</a></td>
						<td>표준</td>
						<td>홍길동</td>
						<td>2021.09.16 ~ 2022.09.16</td>
						<td>2021년 9월 16일 오전 4시 16분</td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="" >박지하 근로계약서</a></td>
						<td>단기간</td>
						<td>박지하</td>
						<td>2021.09.16 ~ 2022.09.16</td>
						<td>2021년 9월 16일 오전 4시 16분</td>
					</tr>
			</tbody>
		</table>
		</div>
		<div>
		<form action="" method="post" name="frm" id="frm">
		
		<input type="hidden" id="index" name="index" value="">
		</form>
		<input type="button" onclick="btnLookup(5);" value="조회" style="background-color:red">
		<input type="button" onclick="btnModify();" value="수정" style="background-color:blue">
		<input type="button" onclick="btnDelete();" value="삭제" style="background-color:gray">
		</div>
		
		
	</div>
	
	<script>

		
		function btnLookup(value) {
			console.log("lookup ON");

			index = document.getElementById("index");
			index = value;
			console.log(index);
			parent.moveToModify(index);
		}
		function btnModify() {
			frm = document.getElementById("frm");
			index = document.getElementById("index");
			index.value = "1";
			console.log("parent " + document.getElementById("index").value);
			frm.submit();
			console.log("Modify ON");
		}
		function btnDelete() {
			console.log("Delete ON");
		}

		function CheckIndex(value) {
			index = document.getElementById("index");
			index = value;
			console.log(index);
			parent.moveToModify(index);
		}
	</script>