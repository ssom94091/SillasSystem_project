<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>	
	function open_in_frame(url) {
		location.href= url;
	}
</script>
<div class="container-fluid p-0">
<section class="resume-section" id="home">
	<div class="container">

						<div class="row">
							<div>
								<button class="btn btn-danger" onclick='open_in_frame("/page/contract/contlist.do")'>계약서목록</button>
								<button class="btn btn-danger" onclick='open_in_frame("/page/contract/form.do")'>양식보관함</button>
							</div>
							
						</div>
		 <table class="table table-hover table table-striped">
			<tr>
				<th>계약서 목록</th>
				<th>기능</th>
			</tr>
			<tr>
				<th>류지원의 근로계약서</th>
				<th>
					<button type="button" class="navyBtn" onClick="location.href='/page/contract/view.do'">조회</button>
					<button type="button" class="navyBtn" >삭제</button>
			</th>
			</tr>
			</table>
	</div>
	</section>
</div>
		