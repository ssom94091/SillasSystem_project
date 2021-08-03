<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!-- iframe 사이즈 -->
<style>
#my_frame {
	width: 1000px;
	height: 700px;
}
</style>

<!-- iframe 페이지 이동 함수 -->
<script>	
	function open_in_frame(url) {
		$("#my_frame").attr('src', url);
	}
</script>



<div class="container-fluid p-0">
	<!-- About-->
	<section class="resume-section" id="home">
		<div class="resume-section-content">

			<div class="subheading mb-5">
				<h4>
					<span class="text-primary">프로필_</span>
				</h4>
			</div>
			<div class="container">
				<!-- 카드 리스트 부분 -->
				<div class="row">
					<div>
						<table border="1">
							<tr>
								<td align="center">프로필 사진</td>
								<button class="btn btn-danger" style="float: right;">계약서 작성</button>
								<td>
									<img src="images/200x200.png" alt="My Image"> <br>
									<button type="button" class="navyBtn" >사진 변경</button>
									<button type="button" class="navyBtn" >삭제</button>
								</td>
							</tr>
							<tr>
								<td align="center">이름</td>
								<td>
									<input type="text" style="text-align:center;" value="류지원">
								</td>
							</tr>
							<tr>
								<td align="center">나이</td>
								<td>
									<input type="text" style="text-align:center;" value="25">
								</td>
							</tr>
							<tr>
								<td align="center">성별</td>
								<td>
									<input type="text" style="text-align:center;" value="남성">
								</td>
							</tr>
							<tr>
								<td align="center">연락처</td>
								<td>
									<input type="text" style="text-align:center;" value="010"> -
									<input type="text" style="text-align:center;" value="3277"> - 
									<input type="text" style="text-align:center;" value="2742">
								</td>
							</tr>
							<tr>
								<td align="center">이메일</td>
								<td>
									<input type="text" style="text-align:center;" value="wonn970510"> @
									<input type="text" style="text-align:center;" value="gmail.com">
								</td>
							</tr>
							<tr>
								<td align="center">주소</td>
								<td>
									<input type="text" style="text-align:center;" value="대구광역시 북구 동천로">
								</td>
							</tr>
							<tr>
								<td align="center">주민등록번호</td>
								<td>
									<input type="text" style="text-align:center;" value="970510"> - 
									<input type="password" style="text-align:center;" value="1698338">
								</td>
							</tr>
						</table>
							<button class="btn btn-danger" style="float: right;">계약서 보기</button>
					</div>
				</div>
			</div>

		</div>
	</section>
</div>