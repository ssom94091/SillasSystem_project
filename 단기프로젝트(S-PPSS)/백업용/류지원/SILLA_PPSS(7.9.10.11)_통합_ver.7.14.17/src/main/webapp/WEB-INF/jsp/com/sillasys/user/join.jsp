<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="col-md-12">
	<div class="col-md-6" style="margin: 0 auto;">
		<form action="/ec/template/contractChk.do" method="get">
			<!--  -->
			<div class="form-group">
				<p for="id">아이디</p>
				<input type="text" class="form-control" id="userId" name="userId"
					style="width: 35%; display: inline-block;">
				<button class="btn btn-info" style="display: inline-block;">중복확인</button>
				</a>



				<div class="form-group">
					<label for="pw">비밀번호</label> <input type="password"
						class="form-control" id="userPw" name="userPw" style="width: 35%;">
				</div>

				<div class="form-group">
					<label for="name">이름</label> <input type="text"
						class="form-control" id="userName" name="userName"
						style="width: 35%;">
				</div>


				<div class="form-group">
					<label for="address" style="margin: 0 auto;">주소 </label> <input
						id="member_post" type="text" placeholder="우편번호" readonly
						onclick="findAddr()" style="width: 25%;"> <input
						id="userAddress" name="userAddress" type="text" placeholder="주소"
						readonly style="width: 35%; display: block;"> <input
						type="text" placeholder="상세주소" style="width: 35%; display: block;">
				</div>

				<div class="form-group">
					<p for="userResNum">주민등록번호</p>
					<input type="text" class="form-control" id="userResNum_front"
						name="userResNum_front" style="width: 25%; display: inline-block;">
					<label for="userResNum_rear" style="display: inline-block;">
						- </label> <input type="password" class="form-control"
						id="userResNum_rear" name="userResNum_rear"
						style="width: 25%; display: inline-block;">
				</div>

				<div class="form-group">
					<label for="gender">성별 </label> <select name="userGender"
						class="form-control" style="width: 110px; display: inline-block;">
						<option value="">--선택--</option>
						<option value="남">남</option>
						<option value="여">여</option>
					</select>
				</div>

				<div class="form-group">
					<label for="email">이메일</label> <input type="text"
						class="form-control" id="userEmail" name="userEmail"
						style="width: 50%">


					<div class="form-group">
						<label for="phone">전화번호</label> <input type="text"
							class="form-control" id="userPhone" name="userPhone"
							style="width: 50%">
					</div>


					<button class="btn btn-primary">가입</button>
					<a href="/user/login.do" type="button" class="btn btn-success">취소</a>
		</form>

	</div>
</div>

<script>
	function findAddr() {
		new daum.Postcode({
			oncomplete : function(data) {

				console.log(data);

				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('member_post').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("userAddress").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("userAddress").value = jibunAddr;
				}
			}
		}).open();
	}
</script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
