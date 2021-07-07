<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

index


<div class ="container">
		<div class ="raw">
		<table class="table table-striped" style="text-align: center; border: 1px solid #ddddd">
			<thread>
				<tr>
					<th style="background-color: #eeeee; text-align: center;">기업명</th>
					<th style="background-color: #eeeee; text-align: center;">사업주</th>
					<th style="background-color: #eeeee; text-align: center;">계약기간</th>
				</tr>
			</thread>
			<today>
				<tr>
					<td>1</td>
					<td>안녕하세요.</td>
					<td>홍길동</td>
					<td>2020-05-10</td>
				</tr>
			</today>
		</table>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
</div>
<h1>${loginUser.userNick }</h1>