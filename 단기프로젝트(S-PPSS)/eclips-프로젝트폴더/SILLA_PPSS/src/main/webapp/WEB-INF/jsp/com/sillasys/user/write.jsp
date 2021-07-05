<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class ="container">
		<div class ="raw">
		<form method="post" action="writeAction.jsp">
		<table class="table table-striped" style="text-align: center; border: 1px solid #ddddd">
			<thread>
				<tr>
					<th colspan="2" style="background-color: #eeeee; text-align: center;">게시판 글쓰기 양식</th>
				</tr>
			</thread>
			<today>
				<tr>
					<td><input type=" text" class= "from-control" placeholder="글 제목" name="indexTitle" maxlength="50"></td>
				</tr>
				<tr>
					<td><textarea class= "from-control" placeholder="글 내용" name="indexContent" maxlength="2048" style="height: 350px";></textarea></td>
				</tr>
			</today>
		</table>
			<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
		</div>
		</form>
</div>
