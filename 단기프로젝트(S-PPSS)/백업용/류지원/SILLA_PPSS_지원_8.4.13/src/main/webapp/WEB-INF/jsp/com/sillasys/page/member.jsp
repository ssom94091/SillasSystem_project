<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>

	/*선택한 직원 프로필 보기*/
	function createMember() {
		$("#frm0").attr("action", "../page/member/createMember.do");
		$("#frm0").attr("method", "get");
		var popupX = (window.screen.width/2) - (600/2);
		var popupY = (window.screen.height/2)-(400/2);
		childWindow = window.open("/page/member/createMember.do?adminId="
				+ document.frm1.admin_id.value, "", "width=600, height=400 left="+popupX+",top="+popupY);
		console.log("부모adminid="+document.getElementById("admin_id").value);
		$("#frm0").submit();	
	}
	
/*직원목록에서 데이터 삭제*/
function viewProfile(memberPk) {
	 $("#member_pk").val(memberPk);
	 $("#frm1").submit();
	 }
	
/*직원목록에서 데이터 삭제*/
function deleteProfile(memberPk) {
	if(confirm("정말 삭제하겠습니까?")){
			console.log("삭제 정상작동");
			$("#member_pk").val(memberPk);
			$("#frm1").attr("action", "../common/delete.do");
			$("#frm1").submit();
	}
	else {
		alert("삭제가 취소되었습니다.");	
	}
}

</script>

<div class="container-fluid p-0" id="test">
	<!-- About-->
	<section class="resume-section" id="home">
		<div class="resume-section-content">

			<div class="subheading mb-5">
				<h4>
					<span class="text-primary">Member_</span>
				</h4>
			</div>
			<!--  -->
			<div class="col-sm-12">
				<p style="float: left; margin-left: 30px; display: inline-block;">
					검색된 레코드 수 :
					<c:out value="${contractSize}" />
					건
				</p>
			</div>
			<div class="col-sm-12" style="text-align: center;">

				<form action="/page/member.do" method="post" id="frm0">
					<select id="search_type" name="search_type" style="height: 100%;">
						<option value="1">이름</option>
						<option value="2">사원번호</option>
					</select> <input class="form-control" type="text" name="searchType"
						id="searchType" onsubmit="searchFn();"
						style="min-width: 200px; max-width: 400px; width: 20vw; display: inline-block;">
					<button class="btn btn-primary" type="submit">검색</button>
					
					
					<button class="btn btn-success"
											onclick="createMember();">직원추가</button>
				</form>
			</div>

			<div class="container">
				<form action="/page/member/profile.do" method="get" id="frm1">
					<div class="row">
						<!-- 카드 리스트 부분 -->
						<c:forEach items="${contentList}" var="contentList"
							varStatus="status">
							<div class="col-3" style="margin-top: 40px; border: 1px;">
								<div class="card">
									<div class="card-header" style="background-color: #c46200;">
										<b>
											<div style="float: left; color: black;">
												<c:out value="${contentList.memberName}" />
										</b>
									</div>
									<div style="float: right; font-size: 11px; color: white;">
										<c:out value="${contentList.memberPk}" />
									</div>
								</div>
								<div style="margin-top: 20px; text-align: center;">
									<img src="/images/silla/profile_basic.png"
										style="margin: auto, auto; min-width: 150px; min-height: 150px; max-width: 150px; max-height: 150px" />
								</div>
								<div class="card-body">
									<hr>
									<p class="card-text" style="font-size: small;">
										<b>나이 </b>
										<c:out value="${contentList.memberAge}" />
										<br> <b>주민등록번호 </b>
										<c:out value="${contentList.memberResnumFront}" />
										-
										<c:out value="${list[status.index]}" />
										<br> <b>이메일 </b>
										<c:out value="${contentList.memberEmail}" />
									</p>
									<hr>
									<p class="card-text" style="font-size: small;">
										<b>입사연도 - </b>
										<c:out value="${contentList.memberEYear}" />
										<br> <b>직급 - </b>
										<c:out value="${contentList.memberPosition}" />
										<br> <b>부서 - </b>
										<c:out value="${contentList.memberDepartment}" />
										<br>
									</p>
									<div style="text-align: center;">
										<button class="btn btn-success"
											onclick="viewProfile('${contentList.memberPk}');">보기</button>
										<button class="btn btn-danger"
											onclick="deleteProfile('${contentList.memberPk}');">삭제</button>
											<input type="hidden" id="member_pk" name="member_pk"/>
									</div>
								</div>
							</div>
						</div>
				</c:forEach>
				</form>
			</div>
		</div>
</div>
</section>
</div>
<hr class="m-0" />