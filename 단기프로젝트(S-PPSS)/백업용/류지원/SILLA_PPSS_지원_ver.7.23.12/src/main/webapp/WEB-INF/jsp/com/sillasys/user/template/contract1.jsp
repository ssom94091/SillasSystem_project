<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	String canvas = request.getParameter("canvas");
%>


<div class="container">
<c:forEach items="${contentList}" var="contentList">
<c:forEach items="${endList}" var="endList">
<c:forEach items="${workList}" var="workList">
<c:forEach items="${companyList}" var="companyList">
<c:forEach items="${userList}" var="userList">
                  <%-- <c:out value="${contentList.adminId}"/>
                  <c:out value="${contentList.contractType}"/>
                  <c:out value="${contentList.userId}"/>
                  <c:out value="${contentList.startYear}"/>
                  <c:out value="${contentList.startMonth}"/>
                  <c:out value="${contentList.startDay}"/>
                  <c:out value="${contentList.workPlace}"/>
                  <c:out value="${contentList.content}"/>
                  <c:out value="${contentList.workPerWeek}"/>
                  <c:out value="${contentList.holiday}"/>
                  <c:out value="${contentList.payType}"/>
                  <c:out value="${contentList.pay}"/>
                  <c:out value="${contentList.bonus}"/>
                  <c:out value="${contentList.payday}"/>
                  <c:out value="${contentList.payfor}"/>
                  <c:out value="${contentList.contractYear}"/>
                  <c:out value="${contentList.contractMonth}"/>
                  <c:out value="${contentList.contractDay}"/>
                  <c:out value="${contentList.adminName}"/>
                  
                  <c:out value="${endList.endYear}"/>
                  <c:out value="${endList.endMonth}"/>
                  <c:out value="${endList.endDay}"/>
                  <c:out value="${workList.startHour}"/>
                  <c:out value="${workList.startMin}"/>
                  <c:out value="${workList.endHour}"/>
                  <c:out value="${workList.endMin}"/>
                  <c:out value="${workList.bStartHour}"/>
                  <c:out value="${workList.bStartMin}"/>
                  <c:out value="${workList.bEndHour}"/>
                  <c:out value="${workList.bEndMin}"/> --%>

	<div class="row">
		<div style="margin: 0 auto;">
			<h1
				style="margin: 0 auto; margin-top: 20pt; display: block; text-align: center">표준
				근로 계약서</h1>
			<br>
		</div>

		<form action="/user/template/contract1.do" method="post" id="frm1"
			name="frm1">
			<!-- 자기자신에게 input에 입력된 값을 보낸다. -->
			<div class="col-sm-12">
				<input type="hidden" id="contract_type" name="contract_type" value="표준(기간있음)">
				 <input type="hidden" id="contract_pk" name="contract_pk" value="0"> 
				 <input type="hidden" id="flag" name="flag" value="0"> 
				 <input type="text"
					onkeyup="setValue();" id="admin_id" value="<c:out value="${contentList.adminId}"/>"
					name="admin_id"
					style="width: 150px; height: 30px; display: inline-block;"
					maxlength="20"> (이하 "사업주"라 함)과(와) <input type="text"
					onkeyup="setValue();" id="user_id" value="<c:out value="${contentList.userId}"/>"
					name="user_id"
					style="width: 80px; height: 30px; display: inline-block;"
					maxlength="7"> (이하 "근로자"라 함)은 다음과 같이 근로계약을 채결한다.
			</div>
			<br>
			<div class="col-sm-12">
				1. 근로계약기간: <input type="text" onkeyup="setValue();" id="start_year"
					value="<c:out value="${contentList.startYear}"/>" name="start_year"
					style="width: 60px; height: 30px; display: inline-block;"
					maxlength="4"> 년 <input type="text" onkeyup="setValue();"
					id="start_month" value="<c:out value="${contentList.startMonth}"/>" 
					
					name="start_month"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2"> 월 <input type="text" onkeyup="setValue();"
					id="start_day" value="<c:out value="${contentList.startDay}"/>" 
					
					name="start_day"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2"> 일부터 <input type="text" onkeyup="setValue();"
					id="end_year" value="<c:out value="${endList.endYear}"/>" name="end_year"
					style="width: 60px; height: 30px; display: inline-block;"
					maxlength="4"> 년 <input type="text" onkeyup="setValue();"
					id="end_month" value="<c:out value="${endList.endMonth}"/>" name="end_month"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2"> 월 <input type="text" onkeyup="setValue();"
					id="end_day" value="<c:out value="${endList.endDay}"/>" name="end_day"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2"> 일까지<br>※ 근로계약기간을 정하지 않는 경우에는 "근로개시일"만
				기재
			</div>
			<br>
			<div class="col-sm-12">
				2. 근무장소: <input type="text" onkeyup="setValue();" id="work_place"
					value="<c:out value="${contentList.workPlace}"/>" name="work_place"
					style="width: 350px; height: 30px; display: inline-block;"
					maxlength="50">
			</div>
			<div class="col-sm-12" style="margin-top: 10px;">
				3. 업무의 내용: <input type="text" onkeyup="setValue();" id="content"
					value="<c:out value="${contentList.content}"/>" name="content"
					style="width: 350px; height: 30px; display: inline-block;"
					maxlength="50">
			</div>
			<div class="col-sm-12" style="margin-top: 10px;">
				4. 소정근로시간: <input type="text" onkeyup="setValue();" id="start_hour"
					value="<c:out value="${workList.startHour}"/>" name="start_hour"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">시 <input type="text" onkeyup="setValue();"
					id="start_min" value="<c:out value="${workList.startMin}"/>" name="start_min"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">분부터 <input type="text" onkeyup="setValue();"
					id="end_hour" value="<c:out value="${workList.endHour}"/>" name="end_hour"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">시 <input type="text" onkeyup="setValue();"
					id="end_min" value="<c:out value="${workList.endMin}"/>" name="end_min"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">분까지 (휴게시간: <input type="text"
					onkeyup="setValue();" id="b_start_hour" value="<c:out value="${workList.bStartHour}"/>"
					name="b_start_hour"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">시 <input type="text" onkeyup="setValue();"
					id="b_start_min" value="<c:out value="${workList.bStartMin}"/>" name="b_start_min"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">분~ <input type="text" onkeyup="setValue();"
					id="b_end_hour" value="<c:out value="${workList.bEndHour}"/>" name="b_end_hour"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">시 <input type="text" onkeyup="setValue();"
					id="b_end_min" value="<c:out value="${workList.bEndMin}"/>" name="b_end_min"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">분
			</div>
			<br>
			<br>
			<div class="col-sm-12">
				5. 근무일/휴일:매주 <select id="work_per_week" onkeyup="setValue();"
					value="<c:out value="${contentList.workPerWeek}"/>" name="work_per_week"
					style="width: 40px; height: 30px; display: inline-block;"
					onchange="setWPW(this.value)">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
				</select>일(또는 매일단위)근무,주휴일 매주 <select id="holiday" name="holiday"
					value="<c:out value="${contentList.holiday}"/>" onkeyup="setValue();"
					style="width: 40px; height: 30px; display: inline-block;">
					<option value="1">월</option>
					<option value="2">화</option>
					<option value="3">수</option>
					<option value="4">목</option>
					<option value="5">금</option>
					<option value="6">토</option>
					<option value="7">일</option>
				</select>요일
			</div>
			<br>
			<br>
			<div class="col-sm-12">
				6. 임금<br> - <select id="pay_type" value="<c:out value="${contentList.payType}"/>"
					name="pay_type" onkeyup="setValue();"
					style="width: 60px; height: 30px; display: inline-block;">
					<option value="1">월급</option>
					<option value="2">주급</option>
					<option value="3">시급</option>
				</select> : <input type="text" maxlength="13" id="pay" value="<c:out value="${contentList.pay}"/>"
					name="pay"
					style="width: 150px; height: 30px; display: inline-block;"
					onchange="getNumber(this);" onkeyup="getNumber(this);">원<br>
				- 상여금:있음 <input type="radio" onkeyup="setValue();" id="bonus_on"
					name="bonus_check" value="1" style="text-align: center"
					onclick="toggle_bonus(true);"> <input type="text"
					maxlength="13" id="bonus" value="<c:out value="${contentList.bonus}"/>" name="bonus"
					style="width: 150px; height: 30px; display: inline-block; margin: 2px;"
					onchange="getNumber(this);" onkeyup="getNumber(this);"
					onkeyup="setValue();">원, 없음 <input type="radio"
					onkeyup="setValue();" id="bonus_off" name="bonus_check" value="2"
					style="text-align: center; margin: 2px;"
					onclick="toggle_bonus(false);" checked><br> - 기타급여(제수당
				등):있음 <input type="radio" onkeyup="setValue();" id="benefit_on"
					name="benefit_check" value="1" style="text-align: center"
					onclick="toggle_benefit(true);">없음 <input type="radio"
					onkeyup="setValue();" id="benefit_off" name="benefit_check"
					value="2" style="text-align: center; margin: 2px;"
					onclick="toggle_benefit(false);" checked><br> 
					
					<c:forEach items="${benefitList}" var="benefitList">
					
					<input type="text" id="benefit_1" value="<c:if test="${not empty benefitList}"><c:out value="${benefitList.benefit1}" default=""/></c:if>" name="benefit_1"
					style="width: 150px; height: 30px; display: inline-block; margin: 2px;"
					onchange="getNumber(this);" onkeyup="getNumber(this);"
					maxlength="13">
					원 <input type="text" id="benefit_2"
					value="<c:if test="${not empty benefitList}"><c:out value="${benefitList.benefit2}" default=""/></c:if>" name="benefit_2"
					style="width: 150px; height: 30px; display: inline-block; margin: 2px;"
					onchange="getNumber(this);" onkeyup="getNumber(this);"
					maxlength="13">원<br> <input type="text" id="benefit_3"
					value="<c:if test="${not empty benefitList}"><c:out value="${benefitList.benefit3}" default=""/></c:if>" name="benefit_3"
					style="width: 150px; height: 30px; display: inline-block; margin: 2px;"
					onchange="getNumber(this);" onkeyup="getNumber(this);"
					maxlength="13">원 <input type="text" id="benefit_4"
					value="<c:if test="${not empty benefitList}"><c:out value="${benefitList.benefit4}" default=""/></c:if>" name="benefit_4"
					style="width: 150px; height: 30px; display: inline-block; margin: 2px;"
					onchange="getNumber(this);" onkeyup="getNumber(this);"
					maxlength="13">원
					
					</c:forEach>
						<br> - 임금지급일:매월(매주 또는 매일) <input
					type="text" onkeyup="setValue();" id="payday" value="<c:out value="${contentList.payday}"/>"
					name="payday"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">일(휴일의 경우는 전일 지급)<br> - 지급방법:근로자에게 직접지급 <input
					type="radio" onkeyup="setValue();" id="for_worker" name="payfor"
					value="1" style="text-align: center">, 근로자 명의 예금통장에 입금 <input
					type="radio" onkeyup="setValue();" id="for_account" name="payfor"
					value="2" style="text-align: center" checked>
			</div>
			<br>
			<br>
			<div class="col-sm-12" style="margin-top: 10px;">
				7. 연차유급휴가<br> - 연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함
			</div>
			<br>
			<br>
			<div class="col-sm-12" style="margin-top: 10px;">
				8. 사회보험 적용여부(해당란에 체크)<br> <input type="checkbox"
					onkeyup="setValue();" name="em_insurance" id="em_insurance"
					value="1"><label for="employment_insurance">고용보험</label> <input
					type="checkbox" onkeyup="setValue();" name="ac_insurance"
					id="ac_insurance" value="1"><label for="accident_insurance">산재보험</label>
				<input type="checkbox" onkeyup="setValue();" name="pension"
					id="pension" value="1"><label for="national_pension">국민연금</label>
				<input type="checkbox" onkeyup="setValue();" name="hlt_insurance"
					id="hlt_insurance" value="1"><label for="health_insurance">건강보험</label>
			</div>
			<br>
			<br>
			<div class="col-sm-12">
				9. 근로계약서 교부<br>- 사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자의 교부요구와
				관계없이 근로자에게 교부함(근로기준법 제 17조 이행)<br>
				<br> 10. 근로계약서 교부<br>- 사업주와 근로자는 각자가 근로계약, 취업규칙, 단체협약을 지키고
				성실하게 이행하여야 함<br>
				<br> 11. 근로계약, 취업규칙 등의 성실한 이행의무<br>- 이 계약에 정함이 없는 사항은
				근로기준법령에 의함
			</div>
			</br>
			<div class="col-sm-12" style="text-align: right">

				<canvas class="canvas" id="canvas-data" name="canvas-data"
					style="float: left;">서명칸</canvas>
				<input type="hidden" value="<%=canvas %>" id="canvas" name="canvas">
				
				<input type="text" onkeyup="setValue();" id="contract_year"
					value="<c:out value="${contentList.contractYear}"/>" name="contract_year"
					style="width: 60px; height: 30px; display: inline-block;"
					maxlength="4">년 <input type="text" onkeyup="setValue();"
					id="contract_month" value="<c:out value="${contentList.contractMonth}"/>"
					name="contract_month"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">월 <input type="text" onkeyup="setValue();"
					id="contract_day" value="<c:out value="${contentList.contractDay}"/>" name="contract_day"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">일<br>
				<br>(사업주) 사업체명: <input type="text" onkeyup="setValue();"
					id="company_name" value="<c:out value="${companyList.companyName}"/>" name="company_name"
					style="width: 150px; height: 30px; display: inline-block;"
					maxlength="20">(전화: <input type="text"
					onkeyup="setValue();" id="company_num" value="<c:out value="${companyList.companyPhone}"/>"
					name="company_num"
					style="width: 120px; height: 30px; display: inline-block;"
					maxlength="20">)<br>주 소: <input type="text"
					onkeyup="setValue();" id="company_address"
					value="<c:out value="${companyList.companyAddress}"/>" name="company_address"
					style="width: 250px; height: 30px; display: inline-block;"
					maxlength="40"><br>대 표 자: <input type="text"
					onkeyup="setValue();" id="admin_name" value="<c:out value="${contentList.adminName}"/>"
					name="admin_name"
					style="width: 80px; height: 30px; display: inline-block;"
					maxlength="7"><br>(근로자) 주 소: <input type="text"
					onkeyup="setValue();" id="user_address" value="<c:out value="${userList.userAddress}"/>"
					name="user_address"
					style="width: 250px; height: 30px; display: inline-block;"
					maxlength="40"><br>연 락 처: <input type="text"
					onkeyup="setValue();" id="user_num" value="<c:out value="${userList.userPhone}"/>"
					name="user_num"
					style="width: 120px; height: 30px; display: inline-block;"
					maxlength="20"><br>성 명: <input type="text"
					onkeyup="setValue();" id="user_name" value="<c:out value="${userList.userName}"/>"
					name="user_name"
					style="width: 80px; height: 30px; display: inline-block;"
					maxlength="7">
			</div>

			<input type="submit" id="submit" value="저장">

		</form>
	</div>
	</c:forEach>
	</c:forEach>
	</c:forEach>
	</c:forEach>
	</c:forEach>
</div>


<style>
.canvas {
	border: 2px solid black;
	background-color: #dddddd;
	width: 300px;
	height: 150px;
	"
}
</style>

<script type="text/javascript">
    var pos={
         drawable: false,x:-1,y:-1
   };
   
   var canvas, ctx;
   
   window.onload = function(){
      canvas = document.getElementById("canvas-data");
      ctx = canvas.getContext("2d");
      
      canvas.addEventListener("mousedown",listener);
      canvas.addEventListener("mousemove",listener);
      canvas.addEventListener("mouseup",listener);
      canvas.addEventListener("mouseout",listener);
      
      console.log(canvas);
      console.log("<%=canvas%>");

     img = new Image();
     img.src = "<%=canvas%>";
		console.log(img);
		img.onload = function() {
			ccpx = canvas.getContext("2d");
			console.log("DONE");
			ccpx.drawImage(img, 0, 0);
		}
		console.log(document.getElementById("admin_id").value);
	}

	function listener(event) {

		switch (event.type) {
		case "mousedown":
			initDraw(event);
			break;

		case "mousemove":
			if (pos.drawable)
				draw(event);
			break;

		case "mouseout":
		case "mouseup":
			finishDraw();
			break;
		}
	}

	function initDraw(event) {
		ctx.beginPath();
		pos.drawable = true;
		var coors = getPosition(event);
		pos.X = coors.X;
		pos.Y = coors.Y;
		ctx.stroke();
		console.log("Start\nPos.X : " + pos.X + " Pos.Y : " + pos.Y);
	}

	function draw(event) {
		var coors = getPosition(event);
		ctx.lineTo(coors.X, coors.Y);
		pos.X = coors.X;
		pos.Y = coors.Y;
		ctx.stroke();
		console.log("Pos.X : " + pos.X + "Pos.Y : " + pos.Y);
	}

	function finishDraw() {
		pos.drawable = false;
		pos.X = -1;
		pos.Y = -1;
	}

	function getPosition(event) {
		var x = event.offsetX
		var y = event.offsetY
		return {
			X : x,
			Y : y
		};
	}
</script>