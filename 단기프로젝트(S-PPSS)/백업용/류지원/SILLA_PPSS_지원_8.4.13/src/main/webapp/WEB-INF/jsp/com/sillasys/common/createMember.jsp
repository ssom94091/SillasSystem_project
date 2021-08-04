<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- iframe 사이즈 -->
<style>
#my_frame {
	width: 1000px;
	height: 700px;
}

.photoFrame{
	width:500px;
	height:500px;
}

.photoFrame:hover{
	cursor:pointer;
}
</style>

<style>
tr, td {
 border: 1px;
}
</style>

<div class="container-fluid p-0">
	<!-- About-->
	<section class="resume-section" id="home">
		<div class="resume-section-content">
		
			<div class="subheading mb-5">
				<h4>
					<span class="text-primary">직원추가_</span>
				</h4>
			</div>
			
			<div class="container">
				<!-- 카드 리스트 부분 -->
				<div class="row">
					<div style="display:table;">
						<button class="btn btn-primary" style="float: right;margin:0">계약서 작성</button><br>
						<table border="1" style="display:table-row border:1px;">
							<tr border="1" style="border:1px;">		
								<td align="center" style="min-height:150px;">프로필 사진</td>
								<td>
									첨부파일(이미지파일만 업로드가능) 
									<input type="file" id="u_file" name="u_file" accept="image/*"> 이미지 미리보기 영역
									<div id="imgViewArea">
									<img src="" id="image">
									</div>
									<button type="button" class="navyBtn" >적용</button>
									<button type="button" class="navyBtn" onclick="delImage();">삭제</button>
								</td> 
							</tr>
							<tr style="border:1px;">
								<td align="center">이름</td>
								<td>
									<input type="text" style="text-align:center;" value="<c:out value=''/>">
								</td>
							</tr>
							<tr style="border:1px;">
								<td align="center">나이</td>
								<td>
									<input type="text" style="text-align:center;" value="">
								</td>
							</tr>
							<tr style="border:1px;">
								<td align="center">성별</td>
								<td>
									<input type="text" style="text-align:center;" value="">
								</td>
							</tr>
							<tr style="border:1px;">
								<td align="center">연락처</td>
								<td>
									<input type="text" style="text-align:center;" value="">
								</td>
							</tr>
							<tr style="border:1px;">
								<td align="center">이메일</td>
								<td>
									<input type="text" style="text-align:center;" value="">
								</td>
							</tr>
							<tr style="border:1px;">
								<td align="center">주소</td>
								<td>
									<input type="text" style="text-align:center;" value="">
								</td>
							</tr>
							<tr style="border:1px;">
								<td align="center">주민등록번호</td>
								<td>
									<input type="text" style="text-align:center;" value=""> - 
									<input type="password" style="text-align:center;" value="">
								</td>
							</tr>
						</table>
							<button class="btn btn-primary" style="float: right;">계약서 보기</button>
							
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

<script>
	fileInput = document.getElementById("u_file");
	
	
	fileInput.addEventListener('change',function(event) {
		var file = event.target.files[0];
		console.log(event.target.files[0]);
		var reader = new FileReader();
		reader.readAsDataURL(file);
		
		console.log(reader);
		reader.onload = function(){
		      img = document.getElementById("image");
		      img.src = reader.result;
		}
	})
	
	function delImage() {
		document.getElementById("image");
		img.src = "";
	}
</script>