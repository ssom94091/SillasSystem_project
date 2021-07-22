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
						<td id=no name=no>1</td>
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

	<form action="/ec/list.do" method="post" id="functionfrm">
		<div>
			<input type="button" onclick="location.href='../ec/template/findInfo/contractFindInfo1.do'"
				value="조회" style="background-color: red"> 
				
			<input type="button" onclick="location.href='../ec/template/findInfo/contractModify1.do'" value="수정" style="background-color: blue"> 
				
			<input type="button" onclick='frmdelete();' value="삭제" style="background-color: gray">
		</div>
	</form>

</div>
	
	 <script>
      function btnLookup(){
            console.log("lookup ON");
         }
      function btnModify(){
            console.log("Modify ON");
      }
      function btnDelete(){
              console.log("Delete ON");
      }
      
      /* 삭제기능
      function frmdelete() {
    	  alert("삭제되었습니다");
    	   id = document.getElementbyId("no"); 
    	  .submit();
      } */
   </script>
   
   
   