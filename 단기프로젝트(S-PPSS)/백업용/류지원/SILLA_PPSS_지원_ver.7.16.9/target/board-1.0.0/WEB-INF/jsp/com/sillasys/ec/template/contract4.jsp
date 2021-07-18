<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div style="margin:0 auto;">
			<h1 style="margin:0 auto;margin-top:20pt;display:block;text-align:center">단시간근로자 표준근로계약서</h1><br>
		</div>
		
		<form action="/ec/template/contractChk4.do" method="post" name="frm" onsubmit="return Check()">  <!-- 자기자신에게 input에 입력된 값을 보낸다. -->

		<div class="col-sm-12">
		<input type="text" id="admin_id" name="admin_id" style="width:150px; height:30px;display: inline-block;">
		(이하 "사업주"라 함)과(와)
		<input type="text" id="user_id" name="user_id" style="width:80px; height:30px;display: inline-block;">
		(이하 "근로자"라 함)은 다음과 같이 근로계약을 채결한다.</div><br>
		<div class="col-sm-12" style="margin-top:10px;">
		1. 근로개시일:
		<input type="text" id="start_year" name="start_year" style="width:60px; height:30px;display: inline-block;" maxlength="4">
		년
		<input type="text" id="start_month" name="start_month" style="width:30px; height:30px;display: inline-block;" maxlength="2">
		월
		<input type="text" id="start_day" name="start_day" style="width:30px; height:30px;display: inline-block;" maxlength="2">
		일부터</div><br>
		<div class="col-sm-12" style="margin-top:10px;">
		2. 근무장소:
		<input type="text" id="location" name="location" style="width:350px; height:30px;display:inline-block;"></div>
		<div class="col-sm-12" style="margin-top:10px;">
		3. 업무의 내용:
		<input type="text" id="contents" name="contents" style="width:350px;height:30px;display:inline-block;"></div>
		<div class="col-sm-12" style="margin-top:10px;">
		4. 근로일 및 근로일별 근로시간<br></div><br><br>
		<div class="col-sm-12">
			<table class="table table-bordered">
				<tr>
					<td></td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_1" name="work_day_1" style="width:30px;height:30px;display:inline-block;">요일</td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_2" name="work_day_2" style="width:30px;height:30px;display:inline-block;">요일</td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_3" name="work_day_3" style="width:30px;height:30px;display:inline-block;">요일</td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_4" name="work_day_4" style="width:30px;height:30px;display:inline-block;">요일</td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_5" name="work_day_5" style="width:30px;height:30px;display:inline-block;">요일</td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_6" name="work_day_6" style="width:30px;height:30px;display:inline-block;">요일</td>
				</tr>
				<tr>
					<td style="text-align:center;padding:0px;">근로시간</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_1" name="work_time_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_2" name="work_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_3" name="work_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_4" name="work_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_5" name="work_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_6" name="work_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
				</tr>
				<tr>
					<td style="text-align:center;padding:0px;">시업</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_1" name="work_start_time_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_start_min_1" name="work_start_min_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_2" name="work_start_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_start_min_2" name="work_start_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_3" name="work_start_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_start_min_3" name="work_start_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_4" name="work_start_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_start_min_4" name="work_start_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_5" name="work_start_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_start_min_5" name="work_start_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_6" name="work_start_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_start_min_6" name="work_start_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
				</tr>
				<tr>
					<td style="text-align:center;padding:0px;">종업</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_1" name="work_end_time_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_end_min_1" name="work_end_min_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_2" name="work_end_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_end_min_2" name="work_end_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_3" name="work_end_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_end_min_3" name="work_end_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_4" name="work_end_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_end_min_4" name="work_end_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_5" name="work_end_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_end_min_5" name="work_end_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_6" name="work_end_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="work_end_min_6" name="work_end_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
				</tr>
				<tr>
					<td style="text-align:center;padding:auto auto;">휴게 시간</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_1" name="break_start_time_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_start_min_1" name="break_start_min_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
					<input type="text" id="break_end_time_1" name="break_end_time_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_end_min_1" name="break_end_min_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_2" name="break_start_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_start_min_2" name="break_start_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
					<input type="text" id="break_end_time_2" name="break_end_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_end_min_2" name="break_end_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_3" name="break_start_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_start_min_3" name="break_start_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
					<input type="text" id="break_end_time_3" name="break_end_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_end_min_3" name="break_end_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_4" name="break_start_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_start_min_4" name="break_start_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
					<input type="text" id="break_end_time_4" name="break_end_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_end_min_4" name="break_end_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_5" name="break_start_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_start_min_5" name="break_start_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
					<input type="text" id="break_end_time_5" name="break_end_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_end_min_5" name="break_end_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_6" name="break_start_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_start_min_6" name="break_start_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
					<input type="text" id="break_end_time_6" name="break_end_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
					<input type="text" id="break_end_min_6" name="break_end_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
			</table>
		</div>
		<div class="col-sm-12">
		ㅇ 주휴일 매주
        <select id="holiday" name="holiday" style="width:40px;height:30px;display:inline-block;">
        	<option value="1">월</option>
        	<option value="2">화</option>
        	<option value="3">수</option>
        	<option value="4">목</option>
        	<option value="5">금</option>
        	<option value="6">토</option>
        	<option value="7">일</option>
        </select>요일</div><br><br>
        <div class="col-sm-12">
        5. 임금<br> - 
        <select id="pay" name="pay" style="width:60px;height:30px;display:inline-block;">
        	<option value="1">시급</option>
        	<option value="2">일급</option>
        	<option value="3">월급</option>
        </select> : 
        <input type="text" id="pay_money" name="pay_money" style="width:150px;height:30px;display:inline-block;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">원<br> - 상여금:있음
        <input type="radio" id="bonus_on" name="bonus_check" value="1" style="text-align:center" onclick="toggle_bonus(true);">
        <input type="text" id="bonus" name="bonus" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">원, 없음
        <input type="radio" id="bonus_off" name="bonus_check" value="2" style="text-align:center;margin:2px;" onclick="toggle_bonus(false);" checked><br>
        - 기타급여(제수당 등):있음
		<input type="radio" id="benefit_on" name="benefit_check" value="1" style="text-align:center" onclick="toggle_benefit(true);">
		<input type="text" id="benefit" name="benefit_1" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">원(내역별 기재), 없음
        <input type="radio" id="benefit_off" name="benefit_check" value="2" style="text-align:center;margin:2px;"onclick="toggle_benefit(false);" checked><br>
        - 초과근로에 대한 가산임금률:
        <input type="text" id="extra_pay" name="extra_pay" style="width:60px;height:30px;display:inlin-block;margin:2px;">%<br>
		- 임금지급일:매월(매주 또는 매일)
		<input type="text" id="payday" name="payday" style="width:30px;height:30px;display:inline-block;" maxlength="2">일(휴일의 경우는 전일 지급)<br>
		- 지급방법:근로자에게 직접지급
		<input type="radio" id="for_worker" name="payfor" value="1" style="text-align:center">, 근로자 명의 예금통장에 입금
		<input type="radio" id="for_account" name="payfor" value="2" style="text-align:center" checked></div><br><br>
		<div class="col-sm-12" style="margin-top:10px;">
		6. 연차유급휴가: 통상근로자의 근로시간에 비례하여 연차유급휴가 부여</div><br><br>
		<div class="col-sm-12" style="margin-top:10px;">
		7. 사회보험 적용여부(해당란에 체크)<br>
		<input type="checkbox" name="employment_insurance" id="employment_insurance" value="1"><label for="employment_insurance">고용보험</label>
		<input type="checkbox" name="accident_insurance" id="accident_insurance" value="1"><label for="accident_insurance">산재보험</label>
		<input type="checkbox" name="national_pension" id="national_pension" value="1"><label for="national_pension">국민연금</label>
		<input type="checkbox" name="health_insurance" id="health_insurance" value="1"><label for="health_insurance">건강보험</label></div><br><br>
		<div class="col-sm-12">
		8. 근로계약서 교부<br>- 사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자의 교부요구와 관계없이 근로자에게 교부함(근로기준법 제 17조 이행)<br><br>
		9. 기타<br>- 이 계약에 정함이 없는 사항은 근로기준법령에 의함<br><br>
		</div></br>
		<div class="col-sm-12" style="text-align:right">
		
		<canvas class="sign-canvas" id="sign-canvas" name="sign-canvas" style="float:left;">서명칸</canvas>
		<input type="hidden" id="canvas-data" name="canvas-data">
		
		<input type="text" id="contract_year" name="contract_year" style="width:60px;height:30px;display:inline-block;"maxlength="4">년
		<input type="text" id="contract_month" name="contract_month" style="width:30px;height:30px;display:inline-block;"maxlength="2">월
		<input type="text" id="contract_day" name="contract_day" style="width:30px;height:30px;display:inline-block;"maxlength="2">일<br><br>(사업주) 사업체명:
		<input type="text" id="company_name" name="company_name" style="width:150px;height:30px;display:inline-block;">(전화:
		<input type="text" id="company_num" name="company_num" style="width:120px;height:30px;display:inline-block;">)<br>주 소:
		<input type="text" id="company_address" name="company_address" style="width:250px;height:30px;display:inline-block;"><br>대 표 자:
		<input type="text" id="admin_name" name="admin_name" style="width:80px;height:30px;display:inline-block;"><br>(근로자) 주 소:
		<input type="text" id="user_address" name="user_address" style="width:250px;height:30px;display:inline-block;"><br>연 락 처:
		<input type="text" id="user_num" name="user_num" style="width:120px;height:30px;display:inline-block;"><br>성 명:
		<input type="text" id="user_name" name="user_name" style="width:80px;height:30px;display:inline-block;">
		</div>
		
		<input type="submit" id="submit" value="저장"> 
		
		</form>
	</div>
</div>

<style>
   .sign-canvas {border: 2px solid black;background-color:#dddddd;width:300px;height:150px;"}
</style>

<script type="text/javascript">
   var pos={
         drawable: false,x:-1,y:-1
   };
   
   var canvas, ctx;
   rgx1 = /\D/g;
   rgx2 = /(\d+)(\d{3})/;
   
   window.onload=function(){
      canvas = document.getElementById("sign-canvas");
      ctx = canvas.getContext("2d");

      
      canvas.addEventListener("mousedown",listener);
      canvas.addEventListener("mousemove",listener);
      canvas.addEventListener("mouseup",listener);
      canvas.addEventListener("mouseout",listener);
   }
   
   function listener(event) {
      
      switch(event.type){
         case "mousedown":
            initDraw(event);
            break;
            
         case "mousemove":
            if(pos.drawable)
               draw(event);
            break;
            
         case "mouseout":
         case "mouseup":
            finishDraw();
            break;
      }
   }
   
   function initDraw(event){
      ctx.beginPath();
      pos.drawable = true;
      var coors = getPosition(event);
      pos.X = coors.X;
      pos.Y = coors.Y;
      ctx.stroke();
      console.log("Start\nPos.X : "+pos.X+" Pos.Y : "+pos.Y);
   }
   
   function draw(event){
      var coors = getPosition(event);
      ctx.lineTo(coors.X,coors.Y);
      pos.X = coors.X;
      pos.Y = coors.Y;
      ctx.stroke();
      console.log("Pos.X : "+pos.X+"Pos.Y : "+pos.Y);
   }
   
   function finishDraw() {
      pos.drawable = false;
      pos.X = -1;
      pos.Y = -1;
   }
   
   function getPosition(event) {
      var x = event.offsetX
      var y = event.offsetY
      return {X: x,Y:y};
   }
   
   function toggle_bonus(value) {
      bonus = document.getElementById("bonus");
      if(value==true) {
         bonus.readOnly = false;
      }
      else if(value==false) {
         bonus.readOnly = true;
         bonus.value="";
      }
   }
   
   function toggle_benefit(value) {
      bef1 = document.getElementById("benefit_1");
      bef2 = document.getElementById("benefit_2");
      bef3 = document.getElementById("benefit_3");
      bef4 = document.getElementById("benefit_4");
      if(value==true) {
         bef1.readOnly = false;
         bef2.readOnly = false;
         bef3.readOnly = false;
         bef4.readOnly = false;
      }
      else if(value==false) {
         bef1.readOnly = true;
         bef2.readOnly = true;
         bef3.readOnly = true;
         bef4.readOnly = true;
         bef1.value = '';
         bef2.value = '';
         bef3.value = '';
         bef4.value = '';
      }
   }
   
   function setWPW(value)
   {
      wpw = document.getElementById("work_per_week");
      console.log(wpw);
      wpw.value=value;
      console.log(wpw.value);
   }
   
  /*  function canvasStr()
   {
	   canVas = document.getElementById("sign-canvas");
	   console.log(canVas.toDataURL());
	   data = document.getElementById("canvas-data");
	   data.value=canVas.toDataURL();
   } */
   
   function getNumber(obj) {
	   num1 = obj.value;
	   num2 = num1.replace(rgx1,"");
	   num1 = setComma(num2);
	   obj.value = num1;
   }
   
   function setComma(inNum){
	   outNum = inNum;
	   while(rgx2.test(outNum)) {
		   outNum = outNum.replace(rgx2,'$1'+','+'$2');
	   }
	   return outNum;
   }
   

	function Check() {

		canVas = document.getElementById("sign-canvas");
		console.log(canVas.toDataURL());
		data = document.getElementById("canvas-data");
		data.value = canVas.toDataURL();

		if (document.frm.admin_id.value == ""
				|| document.frm.user_id.value == ""
				|| document.frm.start_year.value == ""
				|| document.frm.start_month.value == ""
				|| document.frm.start_day.value == ""
				|| document.frm.location.value == ""
				|| document.frm.contents.value == ""
				|| document.frm.work_day_1.value == ""
				|| document.frm.work_time_1.value == ""
				|| document.frm.work_start_time_1.value == ""
				|| document.frm.work_start_min_1.value == ""
				|| document.frm.work_end_time_1.value == ""
				|| document.frm.work_end_min_1.value == ""
				|| document.frm.break_start_time_1.value == ""
				|| document.frm.break_start_min_1.value == ""
				|| document.frm.break_end_time_1.value == ""
				|| document.frm.break_end_min_1.value == ""
				/* 주휴일 칸이 비어있음 */
				|| document.frm.pay_money.value == ""
				|| document.frm.extra_pay.value == ""
				|| document.frm.payday.value == ""
				|| document.frm.contract_year.value == ""
				|| document.frm.contract_month.value == ""
				|| document.frm.contract_day.value == ""
				|| document.frm.company_name.value == ""
				|| document.frm.company_num.value == ""
				|| document.frm.company_address.value == ""
				|| document.frm.admin_name.value == ""
				|| document.frm.user_address.value == ""
				|| document.frm.user_num.value == ""
				|| document.frm.user_name.value == "") {

			if (document.frm.admin_id.value == "") {
				admin_id = document.getElementById("admin_id");
				console.log(admin_id);
				alert("사업주가 비었습니다.");
			}
			if (document.frm.user_id.value == "") {
				user_id = document.getElementById("user_id");
				console.log(user_id);
				alert("근로자가 비었습니다.");
			}
			if (document.frm.start_year.value == ""
					|| document.frm.start_month.value == ""
					|| document.frm.start_day.value == "") {
				start_year = document.getElementById("start_year");
				start_month = document.getElementById("start_month");
				start_day = document.getElementById("start_day");
				console.log(start_year);
				console.log(start_month);
				console.log(start_day);
				alert("계약기간이 비어있습니다.");
			}

			if (document.frm.work_day_1.value == "") {
				work_day_1 = document.getElementById("work_day_1");
				console.log(work_day_1);
				alert("필수 근로일이  비었습니다.");
			}
			if (document.frm.work_time_1.value == ""
					|| document.frm.work_start_time_1.value == ""
					|| document.frm.work_start_min_1.value == ""
					|| document.frm.work_end_time_1.value == ""
					|| document.frm.work_end_min_1.value == "") {
				work_time_1 = document.getElementById("work_time_1");
				work_start_time_1 = document.getElementById("work_start_time_1");
				work_start_min_1 = document.getElementById("work_start_min_1");
				work_end_time_1 = document.getElementById("work_end_time_1");
				work_end_min_1 = document.getElementById("work_end_min_1");
				console.log(work_time_1);
				console.log(work_start_time_1);
				console.log(work_start_min_1);
				console.log(work_end_time_1);
				console.log(work_end_min_1);
				alert("필수 근로시간이  비었습니다.");
			}

			if (document.frm.break_start_time_1.value == ""
					|| document.frm.break_start_min_1.value == ""
					|| document.frm.break_end_time_1.value == ""
					|| document.frm.break_end_min_1.value == "") {
				break_start_time_1 = document.getElementById("break_start_time_1");
				break_start_min_1 = document.getElementById("break_start_min_1");
				break_end_time_1 = document.getElementById("break_end_time_1");
				break_end_min_1 = document.getElementById("break_end_min_1");
				console.log(break_start_time_1);
				console.log(break_start_min_1);
				console.log(break_end_time_1);
				console.log(break_end_min_1);
				alert("필수 휴게시간이  비었습니다.");
			}

			if (document.frm.pay_money.value == "") {
				pay_money = document.getElementById("pay_money");
				console.log(pay_money);
				alert("임금이 비었습니다.");
			}
			/* if(document.frm.bonus.value=="") {
			   bonus = document.getElementById("bonus");
			   console.log(bonus);
			   bonus.value="";
			} */
			if (document.frm.extra_pay.value == "") {
				extra_pay = document.getElementById("extra_pay");
				console.log(extra_pay);
				alert("가산임금률이 비었습니다.");
			}

			if (document.frm.payday.value == "") {
				payday = document.getElementById("payday");
				console.log(payday);
				alert("지급일이 비었습니다.");
			}
			if (document.frm.contract_year.value == ""
					|| document.frm.contract_month.value == ""
					|| document.frm.contract_day.value == "") {
				contract_year = document.getElementById("contract_year");
				contract_month = document.getElementById("contract_month");
				contract_day = document.getElementById("contract_day");
				console.log(contract_year);
				console.log(contract_month);
				console.log(contract_day);
				alert("계약기간이 비었습니다.");
			}
			if (document.frm.company_name.value == "") {
				company_name = document.getElementById("company_name");
				console.log(company_name);
				alert("회사명이 비었습니다.");
			}
			if (document.frm.company_num.value == "") {
				company_num = document.getElementById("company_num");
				console.log(company_num);
				alert("회사전화번호가 비었습니다.");
			}
			if (document.frm.company_address.value == "") {
				company_address = document.getElementById("company_address");
				console.log(company_address);
				alert("회사주소가 비었습니다.");
			}
			if (document.frm.admin_name.value == "") {
				admin_name = document.getElementById("admin_name");
				console.log(admin_name);
				alert("대표자가 비었습니다.");
			}
			if (document.frm.user_address.value == "") {
				user_address = document.getElementById("user_address");
				console.log(user_address);
				alert("근로자 주소가 비었습니다.");
			}
			if (document.frm.user_num.value == "") {
				user_num = document.getElementById("user_num");
				console.log(user_num);
				alert("근로자 전화번호가 비었습니다.");
			}
			if (document.frm.user_name.value == "") {
				user_name = document.getElementById("user_name");
				console.log(user_name);
				alert("근로자이름이 비었습니다.");
			}
			return false;
		} 
		else {
			alert("작성해주셔서 감사합니다.");
			return true;
		}
	}
</script>