<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="container">
	<div class="row">
		<div style="margin: 0 auto;">
			<h1
				style="margin: 0 auto; margin-top: 20pt; display: block; text-align: center">표준
				근로 계약서</h1>
			<br>
		</div>

		<form action="/contract/template/contract2.do" method="post" id="frm1"
			name="frm1" onsubmit="return Check()">
			<!-- 자기자신에게 input에 입력된 값을 보낸다. -->
			<div class="col-sm-12">
				<input type="hidden" id="contract_type" name="contract_type"
					value="표준(기간정함)"> <input type="hidden" id="contract_pk"
					name="contract_pk" value="0"> <input type="text"
					onkeyup="setValue();" id="admin_id" value="<c:out value="${result.companyName}"/>"
					name="admin_id" readonly
					style="width: 150px; height: 30px; display: inline-block;"
					maxlength="20"> (이하 "사업주"라 함)과(와) <input type="text"
					onkeyup="setValue();" id="user_id" value="<c:out value="${result.userName}"/>"
					name="user_id" readonly
					style="width: 80px; height: 30px; display: inline-block;"
					maxlength="7"> (이하 "근로자"라 함)은 다음과 같이 근로계약을 채결한다.
			</div>
			<br>
			<div class="col-sm-12">
				1. 근로계약기간: <input type="text" onkeyup="setValue();" id="start_year"
					value="" name="start_year"
					style="width: 60px; height: 30px; display: inline-block;"
					maxlength="4"> 년 <input type="text" onkeyup="setValue();"
					id="start_month" value="" name="start_month"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2"> 월 <input type="text" onkeyup="setValue();"
					id="start_day" value="" name="start_day"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2"> 일부터
			</div>
			<br>
			<div class="col-sm-12">
				2. 근무장소: <input type="text" onkeyup="setValue();" id="work_place"
					value="" name="work_place"
					style="width: 350px; height: 30px; display: inline-block;"
					maxlength="50">
			</div>
			<div class="col-sm-12" style="margin-top: 10px;">
				3. 업무의 내용: <input type="text" onkeyup="setValue();" id="content"
					value="" name="content"
					style="width: 350px; height: 30px; display: inline-block;"
					maxlength="50">
			</div>
			<div class="col-sm-12" style="margin-top: 10px;">
				4. 소정근로시간: <input type="text" onkeyup="setValue();" id="start_hour"
					value="" name="start_hour"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">시 <input type="text" onkeyup="setValue();"
					id="start_min" value="" name="start_min"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">분부터 <input type="text" onkeyup="setValue();"
					id="end_hour" value="" name="end_hour"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">시 <input type="text" onkeyup="setValue();"
					id="end_min" value="" name="end_min"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">분까지 (휴게시간: <input type="text"
					onkeyup="setValue();" id="b_start_hour" value=""
					name="b_start_hour"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">시 <input type="text" onkeyup="setValue();"
					id="b_start_min" value="" name="b_start_min"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">분~ <input type="text" onkeyup="setValue();"
					id="b_end_hour" value="" name="b_end_hour"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">시 <input type="text" onkeyup="setValue();"
					id="b_end_min" value="" name="b_end_min"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">분
			</div>
			<br> <br>
			<div class="col-sm-12">
				5. 근무일/휴일:매주 <select id="work_per_week" onkeyup="setValue();"
					value="" name="work_per_week"
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
					value="" onkeyup="setValue();"
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
			<br> <br>
			<div class="col-sm-12">
				6. 임금<br> - <select id="pay_type" value=""
					name="pay_type" onkeyup="setValue();"
					style="width: 60px; height: 30px; display: inline-block;">
					<option value="1">월급</option>
					<option value="2">주급</option>
					<option value="3">시급</option>
				</select> : <input type="text" maxlength="13" id="pay" value=""
					name="pay"
					style="width: 150px; height: 30px; display: inline-block;"
					onchange="getNumber(this);" onkeyup="getNumber(this);">원<br>
				- 상여금:있음 <input type="radio" onkeyup="setValue();" id="bonus_on"
					name="bonus_check" value="1" style="text-align: center"
					onclick="toggle_bonus(true);"> <input type="text"
					maxlength="13" id="bonus" value="" name="bonus"
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
					onclick="toggle_benefit(false);" checked><br> <input
					type="text" id="benefit_1" value="" name="benefit_1"
					style="width: 150px; height: 30px; display: inline-block; margin: 2px;"
					onchange="getNumber(this);" onkeyup="getNumber(this);"
					maxlength="13">원 <input type="text" id="benefit_2"
					value="" name="benefit_2"
					style="width: 150px; height: 30px; display: inline-block; margin: 2px;"
					onchange="getNumber(this);" onkeyup="getNumber(this);"
					maxlength="13">원<br> <input type="text" id="benefit_3"
					value="" name="benefit_3"
					style="width: 150px; height: 30px; display: inline-block; margin: 2px;"
					onchange="getNumber(this);" onkeyup="getNumber(this);"
					maxlength="13">원 <input type="text" id="benefit_4"
					value="" name="benefit_4"
					style="width: 150px; height: 30px; display: inline-block; margin: 2px;"
					onchange="getNumber(this);" onkeyup="getNumber(this);"
					maxlength="13">원<br> - 임금지급일:매월(매주 또는 매일) <input
					type="text" onkeyup="setValue();" id="payday" value=""
					name="payday"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">일(휴일의 경우는 전일 지급)<br> - 지급방법:근로자에게 직접지급 <input
					type="radio" onkeyup="setValue();" id="for_worker" name="payfor"
					value="1" style="text-align: center">, 근로자 명의 예금통장에 입금 <input
					type="radio" onkeyup="setValue();" id="for_account" name="payfor"
					value="2" style="text-align: center" checked>
			</div>
			<br> <br>
			<div class="col-sm-12" style="margin-top: 10px;">
				7. 연차유급휴가<br> - 연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함
			</div>
			<br> <br>
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
			<br> <br>
			<div class="col-sm-12">
				9. 근로계약서 교부<br>- 사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자의 교부요구와
				관계없이 근로자에게 교부함(근로기준법 제 17조 이행)<br> <br> 10. 근로계약서 교부<br>-
				사업주와 근로자는 각자가 근로계약, 취업규칙, 단체협약을 지키고 성실하게 이행하여야 함<br> <br>
				11. 근로계약, 취업규칙 등의 성실한 이행의무<br>- 이 계약에 정함이 없는 사항은 근로기준법령에 의함
			</div>
			</br>
			<div class="col-sm-12" style="text-align: right">

				<canvas class="canvas" id="canvas-data" name="canvas-data"
					style="float: left;">서명칸</canvas>
				<input type="hidden" value="" id="canvas" name="canvas">

				<input type="text" onkeyup="setValue();" id="contract_year"
					value="" name="contract_year"
					style="width: 60px; height: 30px; display: inline-block;"
					maxlength="4">년 <input type="text" onkeyup="setValue();"
					id="contract_month" value=""
					name="contract_month"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">월 <input type="text" onkeyup="setValue();"
					id="contract_day" value="" name="contract_day"
					style="width: 30px; height: 30px; display: inline-block;"
					maxlength="2">일<br> <br>(사업주) 사업체명: <input
					type="text" onkeyup="setValue();" id="company_name"
					value="<c:out value="${result.companyName}"/>" name="company_name" readonly
					style="width: 150px; height: 30px; display: inline-block;"
					maxlength="20">(전화: <input type="text"
					onkeyup="setValue();" id="company_num" value="<c:out value="${result.companyPhone}"/>"
					name="company_num" readonly
					style="width: 120px; height: 30px; display: inline-block;"
					maxlength="20">)<br>주 소: <input type="text"
					onkeyup="setValue();" id="company_address"
					value="<c:out value="${result.companyAddress}"/>" name="company_address" readonly
					style="width: 250px; height: 30px; display: inline-block;"
					maxlength="40"><br>대 표 자: <input type="text"
					onkeyup="setValue();" id="admin_name" value=""
					name="admin_name"
					style="width: 80px; height: 30px; display: inline-block;"
					maxlength="7"><br>(근로자) 주 소: <input type="text"
					onkeyup="setValue();" id="user_address" value="<c:out value="${result.userAddress}"/>"
					name="user_address" readonly
					style="width: 250px; height: 30px; display: inline-block;"
					maxlength="40"><br>연 락 처: <input type="text"
					onkeyup="setValue();" id="user_num" value="<c:out value="${result.userNum}"/>"
					name="user_num" readonly
					style="width: 120px; height: 30px; display: inline-block;"
					maxlength="20"><br>성 명: <input type="text"
					onkeyup="setValue();" id="user_name" value="<c:out value="${result.userName}"/>"
					name="user_name" readonly
					style="width: 80px; height: 30px; display: inline-block;"
					maxlength="7">
			</div>

			<input type="submit" id="submit" value="저장">

		</form>
	</div>
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
   rgx1 = /\D/g;
   rgx2 = /(\d+)(\d{3})/;
   
   window.onload=function(){
      canvas = document.getElementById("canvas-data");
      ctx = canvas.getContext("2d");

      
      canvas.addEventListener("mousedown",listener);
      canvas.addEventListener("mousemove",listener);
      canvas.addEventListener("mouseup",listener);
      canvas.addEventListener("mouseout",listener);
      
      
      canVas = document.getElementById("canvas-data");
      ccpx = canVas.getContext("2d");
      console.log(canVas);

     img = new Image();
		console.log(img);
		img.onload = function() {
			console.log("DONE");
			ccpx.drawImage(img, 0, 0);
		}
		console.log(document.getElementById("admin_id").value);
		if (document.getElementById("admin_id").value == "null")
			document.getElementById("admin_id").value = "";
		if (document.getElementById("user_id").value == "null")
			document.getElementById("user_id").value = "";
		if (document.getElementById("start_year").value == "null")
			document.getElementById("start_year").value = "";
		if (document.getElementById("start_month").value == "null")
			document.getElementById("start_month").value = "";
		if (document.getElementById("start_day").value == "null")
			document.getElementById("start_day").value = "";
		if (document.getElementById("end_year").value == "null")
			document.getElementById("end_year").value = "";
		if (document.getElementById("end_month").value == "null")
			document.getElementById("end_month").value = "";
		if (document.getElementById("end_day").value == "null")
			document.getElementById("end_day").value = "";
		if (document.getElementById("work_place").value == "null")
			document.getElementById("work_place").value = "";
		if (document.getElementById("content").value == "null")
			document.getElementById("content").value = "";

		if (document.getElementById("work_per_week").value == "null")
			document.getElementById("work_per_week").value = "";

		if (document.getElementById("start_hour").value == "null")
			document.getElementById("start_hour").value = "";
		if (document.getElementById("start_min").value == "null")
			document.getElementById("start_min").value = "";
		if (document.getElementById("end_hour").value == "null")
			document.getElementById("end_hour").value = "";
		if (document.getElementById("end_min").value == "null")
			document.getElementById("end_min").value = "";
		if (document.getElementById("b_start_hour").value == "null")
			document.getElementById("b_start_hour").value = "";
		if (document.getElementById("b_start_min").value == "null")
			document.getElementById("b_start_min").value = "";
		if (document.getElementById("b_end_hour").value == "null")
			document.getElementById("b_end_hour").value = "";
		if (document.getElementById("b_end_min").value == "null")
			document.getElementById("b_end_min").value = "";

		if (document.getElementById("pay").value == "null")
			document.getElementById("pay").value = "";
		if (document.getElementById("bonus").value == "null")
			document.getElementById("bonus").value = "";
		if (document.getElementById("benefit_1").value == "null")
			document.getElementById("benefit_1").value = "";
		if (document.getElementById("benefit_2").value == "null")
			document.getElementById("benefit_2").value = "";
		if (document.getElementById("benefit_3").value == "null")
			document.getElementById("benefit_3").value = "";
		if (document.getElementById("benefit_4").value == "null")
			document.getElementById("benefit_4").value = "";
		if (document.getElementById("payday").value == "null")
			document.getElementById("payday").value = "";
		if (document.getElementById("contract_year").value == "null")
			document.getElementById("contract_year").value = "";
		if (document.getElementById("contract_month").value == "null")
			document.getElementById("contract_month").value = "";
		if (document.getElementById("contract_day").value == "null")
			document.getElementById("contract_day").value = "";
		if (document.getElementById("company_name").value == "null")
			document.getElementById("company_name").value = "";
		if (document.getElementById("company_num").value == "null")
			document.getElementById("company_num").value = "";
		if (document.getElementById("company_address").value == "null")
			document.getElementById("company_address").value = "";
		if (document.getElementById("admin_name").value == "null")
			document.getElementById("admin_name").value = "";
		if (document.getElementById("user_address").value == "null")
			document.getElementById("user_address").value = "";
		if (document.getElementById("user_num").value == "null")
			document.getElementById("user_num").value = "";
		if (document.getElementById("user_name").value == "null")
			document.getElementById("user_name").value = "";
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

	function toggle_bonus(value) {
		bonus = document.getElementById("bonus");
		if (value == true) {
			bonus.readOnly = false;
		} else if (value == false) {
			bonus.readOnly = true;
			bonus.value = "";
		}
	}

	function toggle_benefit(value) {
		bef1 = document.getElementById("benefit_1");
		bef2 = document.getElementById("benefit_2");
		bef3 = document.getElementById("benefit_3");
		bef4 = document.getElementById("benefit_4");
		if (value == true) {
			bef1.readOnly = false;
			bef2.readOnly = false;
			bef3.readOnly = false;
			bef4.readOnly = false;
		} else if (value == false) {
			bef1.readOnly = true;
			bef2.readOnly = true;
			bef3.readOnly = true;
			bef4.readOnly = true;
			bef1.value = ' ';
			bef2.value = ' ';
			bef3.value = ' ';
			bef4.value = ' ';
		}
	}

	function setWPW(value) {
		wpw = document.getElementById("work_per_week");
		console.log(wpw);
		wpw.value = value;
		console.log(wpw.value);
	}

	/* function canvasStr()
	{
	   canVas = document.getElementById("sign-canvas");
	   console.log(canVas.toDataURL());
	   data = document.getElementById("canvas-data");
	   data.value=canVas.toDataURL();
	} */

	function getNumber(obj) {
		num1 = obj.value;
		num2 = num1.replace(rgx1, "");
		num1 = setComma(num2);
		obj.value = num1;
		console.log(document.getElementById("bonus").value);
	}

	function setComma(inNum) {
		outNum = inNum;
		while (rgx2.test(outNum)) {
			outNum = outNum.replace(rgx2, '$1' + ',' + '$2');
		}
		return outNum;
	}

	function Check() {

		canVas = document.getElementById("canvas-data");
		console.log(canVas.toDataURL());
		data = document.getElementById("canvas");
		data.value = canVas.toDataURL();

		if (document.frm1.admin_id.value == ""
				|| document.frm1.user_id.value == ""
				|| document.frm1.start_year.value == ""
				|| document.frm1.start_month.value == ""
				|| document.frm1.start_day.value == ""
				|| document.frm1.work_place.value == ""
				|| document.frm1.content.value == ""
				|| document.frm1.start_hour.value == ""
				|| document.frm1.start_min.value == ""
				|| document.frm1.end_hour.value == ""
				|| document.frm1.end_min.value == ""
				|| document.frm1.b_start_hour.value == ""
				|| document.frm1.b_start_min.value == ""
				|| document.frm1.b_end_hour.value == ""
				|| document.frm1.b_end_min.value == ""
				|| document.frm1.pay.value == ""
				|| document.frm1.payday.value == ""
				|| document.frm1.contract_year.value == ""
				|| document.frm1.contract_month.value == ""
				|| document.frm1.contract_day.value == ""
				|| document.frm1.company_name.value == ""
				|| document.frm1.company_num.value == ""
				|| document.frm1.company_address.value == ""
				|| document.frm1.admin_name.value == ""
				|| document.frm1.user_address.value == ""
				|| document.frm1.user_num.value == ""
				|| document.frm1.user_name.value == "") {

			if (document.frm1.admin_id.value == "") {
				admin_id = document.getElementById("admin_id");
				console.log(admin_id);
				alert("사업주가 비었습니다.");
			}
			if (document.frm1.user_id.value == "") {
				user_id = document.getElementById("user_id");
				console.log(user_id);
				alert("근로자가 비었습니다.");
			}
			if (document.frm1.start_year.value == ""
					|| document.frm1.start_month.value == ""
					|| document.frm1.start_day.value == ""
					|| document.frm1.end_year.value == ""
					|| document.frm1.end_month.value == ""
					|| document.frm1.end_day.value == "") {
				start_year = document.getElementById("start_year");
				start_month = document.getElementById("start_month");
				start_day = document.getElementById("start_day");
				end_year = document.getElementById("end_year");
				end_month = document.getElementById("end_month");
				end_day = document.getElementById("end_day");
				console.log(start_year);
				console.log(start_month);
				console.log(start_day);
				console.log(end_year);
				console.log(end_month);
				console.log(end_day);
				alert("근로계약기간이 비어있습니다.");
			}
			if (document.frm1.start_hour.value == ""
					|| document.frm1.start_min.value == ""
					|| document.frm1.end_hour.value == ""
					|| document.frm1.end_min.value == "") {
				start_hour = document.getElementById("start_hour");
				start_min = document.getElementById("start_min");
				end_hour = document.getElementById("end_hour");
				end_min = document.getElementById("end_min");
				console.log(start_hour);
				console.log(start_min);
				console.log(end_hour);
				console.log(end_min);
				alert("근로시간이 비어있습니다.");
			}
			if (document.frm1.b_start_hour.value == ""
					|| document.frm1.b_start_min.value == ""
					|| document.frm1.b_end_hour.value == ""
					|| document.frm1.b_end_min.value == "") {
				b_start_hour = document.getElementById("b_start_hour");
				b_start_min = document.getElementById("b_start_min");
				b_end_hour = document.getElementById("b_end_hour");
				b_end_min = document.getElementById("b_end_min");
				console.log(b_start_hour);
				console.log(b_start_min);
				console.log(b_end_hour);
				console.log(b_end_min);
				alert("휴게시간이 비어있습니다.");
			}

			if (document.frm1.pay_money.value == "") {
				pay_money = document.getElementById("pay");
				console.log(pay_money);
				alert("임금이 비었습니다.");
			}
			/* if(document.frm1.bonus.value=="") {
			   bonus = document.getElementById("bonus");
			   console.log(bonus);
			   bonus.value="";
			} */
			if (document.frm1.payday.value == "") {
				payday = document.getElementById("payday");
				console.log(payday);
				alert("지급일이 비었습니다.");
			}
			if (document.frm1.contract_year.value == ""
					|| document.frm1.contract_month.value == ""
					|| document.frm1.contract_day.value == "") {
				contract_year = document.getElementById("contract_year");
				contract_month = document.getElementById("contract_month");
				contract_day = document.getElementById("contract_day");
				console.log(contract_year);
				console.log(contract_month);
				console.log(contract_day);
				alert("계약기간이 비었습니다.");
			}
			if (document.frm1.company_name.value == "") {
				company_name = document.getElementById("company_name");
				console.log(company_name);
				alert("회사명이 비었습니다.");
			}
			if (document.frm1.company_num.value == "") {
				company_num = document.getElementById("company_num");
				console.log(company_num);
				alert("회사전화번호가 비었습니다.");
			}
			if (document.frm1.company_address.value == "") {
				company_address = document.getElementById("company_address");
				console.log(company_address);
				alert("회사주소가 비었습니다.");
			}
			if (document.frm1.admin_name.value == "") {
				admin_name = document.getElementById("admin_name");
				console.log(admin_name);
				alert("대표자가 비었습니다.");
			}
			if (document.frm1.user_address.value == "") {
				user_address = document.getElementById("user_address");
				console.log(user_address);
				alert("근로자 주소가 비었습니다.");
			}
			if (document.frm1.user_num.value == "") {
				user_num = document.getElementById("user_num");
				console.log(user_num);
				alert("근로자 전화번호가 비었습니다.");
			}
			if (document.frm1.user_name.value == "") {
				user_name = document.getElementById("user_name");
				console.log(user_name);
				alert("근로자이름이 비었습니다.");
			}
			return false;
		} else {

			return true;
		}
	}

	function setValue(value) {
		obj = document.getElementsByName(value);
		obj.value = value;
	}
</script>