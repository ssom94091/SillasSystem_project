<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script type="text/javascript">
    	var request = new XMLHttpRequest();
    	function searchFn(){
    		request.open("Post","./" + encodeURLComponent(document.getElementById("userName")),true);
    	}
    </script>
<br>
	<div class="containter">
	<h3 style="margin-left:20px;">작성된 근로계약서 목록</h3>
		<div class="form-group row pull-right">
		
			<div style="magin-left:30px">
				<input class="form-control" type="text" size="20" id="userName" onkeyup="searchFn();" style="magin-left:30px">
			</div>
			<div>
				<button class="btn btn-primary" type="button" onclick="searchFn();">검색</button>
			
			</div>
			
		</div>
		
		<hr  style="height: 20px; ">
		<div>
		<table class="table" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th style="backgroud-color: #fafafa; text-align: center;">No.</th>
					<th style="backgroud-color: #fafafa; text-align: center;">근로자</th>
					<th style="backgroud-color: #fafafa; text-align: center;">유형</th>
					<th style="backgroud-color: #fafafa; text-align: center;">업무내용</th>
					<th style="backgroud-color: #fafafa; text-align: center;">작성일</th>
					<th style="backgroud-color: #fafafa; text-align: center;">수정일</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>1</td>
						<td><a href="" >송영민</a></td>
						<td>표준</td>
						<td>프론트엔드 개발</td>
						<td>2021년 9월 16일 오전 4시 16분</td>
						<td>2021년 9월 16일 오전 4시 16분</td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="" >홍길동</a></td>
						<td>표준</td>
						<td>백엔드 개발</td>
						<td>2021년 9월 16일 오전 4시 16분</td>
						<td>2021년 9월 16일 오전 4시 16분</td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="" >박지하</a></td>
						<td>단기간</td>
						<td>예약관리시스템 개발</td>
						<td>2021년 9월 16일 오전 4시 16분</td>
						<td>2021년 9월 16일 오전 4시 16분</td>
					</tr>
			</tbody>
		</table>
		</div>
		
		
	</div>