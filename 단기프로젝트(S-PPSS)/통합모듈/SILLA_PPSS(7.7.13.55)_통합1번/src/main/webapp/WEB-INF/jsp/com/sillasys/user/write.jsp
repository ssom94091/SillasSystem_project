<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

index


    
<div class="container">
	<div class="raw">
		<form method="post" action="writeAction.jsp">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #ddddd">
				<thread>
				<tr>
					<th style="background-color: #eeeee; text-align: center;">게시판글쓰기 양식</th>
					<th style="background-color: #eeeee; text-align: center;">근로계약서 양식</th>
				</tr>
				</thread>
				<today>
				<tr>
					<td><intput type="text" class="form-control"placeholder="글 제목" name="bbstitle" maxlengh="50"></td>
				</tr>	
				<tr>
					<td><textarea  class="form-control"placeholder="글 내용" name="bbscontent" maxlengh="2048" style="height: 350px;"></textarea></td>
					<td><textarea  class="form-control"placeholder="글 내용" name="bbscontent" maxlengh="1000" style="height: 350px;"></textarea></td>
				</tr>
				</today>
			</table>
			<input type="submit" class="btn-btn-primary pull-right value="글쓰기">
			<input type="submit" class="btn-btn-primary pull-left value="글쓰기">
		</form>
	</div>
</div>