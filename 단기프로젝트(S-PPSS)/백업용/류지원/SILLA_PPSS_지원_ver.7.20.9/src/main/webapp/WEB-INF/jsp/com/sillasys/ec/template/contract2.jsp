<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   String admin_id = request.getParameter("admin_id");
   String user_id = request.getParameter("user_id");
   String start_year = request.getParameter("start_year");
   String start_month = request.getParameter("start_month");
   String start_day = request.getParameter("start_day");
   String work_place = request.getParameter("work_place");
   String content = request.getParameter("content");
   String start_time = request.getParameter("start_time");
   String start_min = request.getParameter("start_min");
   String end_time = request.getParameter("end_time");
   String end_min = request.getParameter("end_min");
   String break_start_time = request.getParameter("break_start_time");
   String break_start_min = request.getParameter("break_start_min");
   String break_end_time = request.getParameter("break_end_time");
   String break_end_min = request.getParameter("break_end_min");
   String work_per_week = request.getParameter("work_per_week");
   String holiday = request.getParameter("holiday");
   String pay_type = request.getParameter("pay_type");
   String pay = request.getParameter("pay");
   String bonus_check = request.getParameter("bonus_check");
   String bonus = request.getParameter("bonus");
   String benefit_check = request.getParameter("benefit_check");
   String benefit_1 = request.getParameter("benefit_1");
   String benefit_2 = request.getParameter("benefit_2");
   String benefit_3 = request.getParameter("benefit_3");
   String benefit_4 = request.getParameter("benefit_4");
   String payday = request.getParameter("payday");
   String payfor = request.getParameter("payfor");
   String em_insurance = request.getParameter("em_insurance");
   String ac_insurance = request.getParameter("ac_insurance");
   String pension = request.getParameter("pension");
   String hlt_insurance = request.getParameter("hlt_insurance");
   String contract_year = request.getParameter("contract_year");
   String contract_month = request.getParameter("contract_month");
   String contract_day = request.getParameter("contract_day");
   String company_name = request.getParameter("company_name");
   String company_num = request.getParameter("company_num");
   String company_address = request.getParameter("company_address");
   String admin_name = request.getParameter("admin_name");
   String user_address = request.getParameter("user_address");
   String user_num = request.getParameter("user_num");
   String user_name = request.getParameter("user_name");
   
   String canvas = request.getParameter("canvas");
   %>
   
<div class="container">
	<div class="row">
		<div style="margin:0 auto;">
			<h1 style="margin:0 auto;margin-top:20pt;display:block;text-align:center">표준 근로 계약서</h1><br>
		</div>
		
		<form action="/ec/template/contract2.do" method="post" name="frm" onsubmit="return Check()">  <!-- 자기자신에게 input에 입력된 값을 보낸다. -->
		
		<div class="col-sm-12">
		<input type="text" id="admin_id" name="admin_id" value="<%=admin_id %>" style="width:150px; height:30px;display: inline-block;">
		(이하 "사업주"라 함)과(와)
		<input type="text" id="user_id" name="user_id" value="<%=user_id %>" style="width:80px; height:30px;display: inline-block;">
		(이하 "근로자"라 함)은 다음과 같이 근로계약을 채결한다.</div><br>
		<div class="col-sm-12" style="margin-top:10px;">
		1. 근로개시일:
		<input type="text" id="start_year" value="<%=start_year %>" name="start_year" style="width:60px; height:30px;display: inline-block;" maxlength="4">
		년
		<input type="text" id="start_month" value="<%=start_month %>" name="start_month" style="width:30px; height:30px;display: inline-block;" maxlength="2">
		월
		<input type="text" id="start_day" value="<%=start_day %>" name="start_day" style="width:30px; height:30px;display: inline-block;" maxlength="2">
		일부터
		</div><br>
		<div class="col-sm-12" style="margin-top:10px;">
		2. 근무장소:
		<input type="text" id="work_place" name="work_place" value="<%=work_place %>" style="width:350px; height:30px;display:inline-block;"></div>
		<div class="col-sm-12" style="margin-top:10px;">
		3. 업무의 내용:
		<input type="text" id="content" name="content" value="<%=content %>" style="width:350px;height:30px;display:inline-block;"></div>
		<div class="col-sm-12" style="margin-top:10px;">
		4. 소정근로시간:
		<input type="text" id="start_time" name="start_time" value="<%=start_time %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="start_min" name="start_min" value="<%=start_min %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분부터
		
		<input type="text" id="end_time" name="end_time" value="<%=end_time %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="end_min" name="end_min" value="<%=end_min %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분까지 (휴게시간:
		
		<input type="text" id="break_start_time" value="<%=break_start_time %>" name="break_start_time" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="break_start_min" value="<%=break_start_min %>" name="break_start_min" style="width:30px;height:30px;display:inline-block;"maxlength="2">분~
		<input type="text" id="break_end_time" value="<%=break_end_time %>" name="break_end_time" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="break_end_min" value="<%=break_end_min %>" name="break_end_min" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</div><br><br>
		<div class="col-sm-12">
		5. 근무일/휴일:매주
		<select id="work_per_week" name="work_per_week" value="<%=work_per_week %>" style="width:40px;height:30px;display:inline-block;">
        	<option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        	<option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
        </select>일(또는 매일단위)근무,주휴일 매주
        <select id="holiday" name="holiday" value="<%=holiday %>" style="width:40px;height:30px;display:inline-block;">
        	<option value="1">월</option>
        	<option value="2">화</option>
        	<option value="3">수</option>
        	<option value="4">목</option>
        	<option value="5">금</option>
        	<option value="6">토</option>
        	<option value="7">일</option>
        </select>요일</div><br><br>
        <div class="col-sm-12">
        6. 임금<br> - 
        <select id="pay_type" name="pay_type" value="<%=pay_type %>" style="width:60px;height:30px;display:inline-block;">
        	<option value="1">월급</option>
        	<option value="2">주급</option>
        	<option value="3">시급</option>
        </select> : 
        <input type="text" id="pay" value="<%=pay %>" name="pay" style="width:150px;height:30px;display:inline-block;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">원<br> - 상여금:있음
        <input type="radio" id="bonus_on" name="bonus_check" value="1" style="text-align:center" onclick="toggle_bonus(true);">
        <input type="text" id="bonus" value="<%=bonus %>" name="bonus" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">원, 없음
        <input type="radio" id="bonus_off" name="bonus_check" value="2" style="text-align:center;margin:2px;" onclick="toggle_bonus(false);" checked><br>
        - 기타급여(제수당 등):있음
		<input type="radio" id="benefit_on" name="benefit_check" value="1" style="text-align:center" onclick="toggle_benefit(true);">없음
        <input type="radio" id="benefit_off" name="benefit_check" value="2" style="text-align:center;margin:2px;" onclick="toggle_benefit(false);"checked><br>
		<input type="text" id="benefit_1" value="<%=benefit_1 %>" name="benefit_1" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">원
		<input type="text" id="benefit_2" value="<%=benefit_2 %>" name="benefit_2" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">원<br>
		<input type="text" id="benefit_3" value="<%=benefit_3 %>" name="benefit_3" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">원
		<input type="text" id="benefit_4" value="<%=benefit_4 %>" name="benefit_4" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">원<br>
		- 임금지급일:매월(매주 또는 매일)
		<input type="text" id="payday" value="<%=payday %>" name="payday" style="width:30px;height:30px;display:inline-block;" maxlength="2">일(휴일의 경우는 전일 지급)<br>
		- 지급방법:근로자에게 직접지급
		<input type="radio" id="for_worker" name="payfor" value="1" style="text-align:center">, 근로자 명의 예금통장에 입금
		<input type="radio" id="for_account" name="payfor" value="2" style="text-align:center" checked></div><br><br>
		<div class="col-sm-12" style="margin-top:10px;">
		7. 연차유급휴가<br>
		- 연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함</div><br><br>
		<div class="col-sm-12" style="margin-top:10px;">
		8. 사회보험 적용여부(해당란에 체크)<br>
		<input type="checkbox" name="em_insurance" id="em_insurance" value="1"><label for="employment_insurance">고용보험</label>
		<input type="checkbox" name="ac_insurance" id="ac_insurance" value="1"><label for="accident_insurance">산재보험</label>
		<input type="checkbox" name="pension" id="pension" value="1"><label for="national_pension">국민연금</label>
		<input type="checkbox" name="hlt_insurance" id="hlt_insurance" value="1"><label for="health_insurance">건강보험</label></div><br><br>
		<div class="col-sm-12">
		9. 근로계약서 교부<br>- 사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자의 교부요구와 관계없이 근로자에게 교부함(근로기준법 제 17조 이행)<br><br>
		10. 근로계약서 교부<br>- 사업주와 근로자는 각자가 근로계약, 취업규칙, 단체협약을 지키고 성실하게 이행하여야 함<br><br>
		11. 근로계약, 취업규칙 등의 성실한 이행의무<br>- 이 계약에 정함이 없는 사항은 근로기준법령에 의함</div></br>
		<div class="col-sm-12" style="text-align:right">
		
		<canvas class="sign-canvas" id="sign-canvas" name="sign-canvas" style="float:left;">서명칸</canvas>
		<input type="hidden" value="<%=canvas %>" id="canvas" name="canvas">
		
		<input type="text" id="contract_year" value="<%=contract_year %>" name="contract_year" style="width:60px;height:30px;display:inline-block;"maxlength="4">년
		<input type="text" id="contract_month" value="<%=contract_month %>" name="contract_month" style="width:30px;height:30px;display:inline-block;"maxlength="2">월
		<input type="text" id="contract_day" value="<%=contract_day %>" name="contract_day" style="width:30px;height:30px;display:inline-block;"maxlength="2">일<br><br>(사업주) 사업체명:
		<input type="text" id="company_name" value="<%=company_name %>" name="company_name" style="width:150px;height:30px;display:inline-block;">(전화:
		<input type="text" id="company_num" value="<%=company_num %>" name="company_num" style="width:120px;height:30px;display:inline-block;">)<br>주 소:
		<input type="text" id="company_address" value="<%=company_address %>" name="company_address" style="width:250px;height:30px;display:inline-block;"><br>대 표 자:
		<input type="text" id="admin_name" value="<%=admin_name %>" name="admin_name" style="width:80px;height:30px;display:inline-block;"><br>(근로자) 주 소:
		<input type="text" id="user_address" value="<%=user_address %>" name="user_address" style="width:250px;height:30px;display:inline-block;"><br>연 락 처:
		<input type="text" id="user_num" value="<%=user_num %>" name="user_num" style="width:120px;height:30px;display:inline-block;"><br>성 명:
		<input type="text" id="user_name" value="<%=user_name %>" name="user_name" style="width:80px;height:30px;display:inline-block;">
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
      
      work_per_week = document.getElementById("work_per_week");
      if(<%=work_per_week%>!=null) {
    	  work_per_week.value = <%=work_per_week%>;
      }
      holiday = document.getElementById("holiday");
      console.log(holiday);
      if(<%=holiday %>!=null) {
      holiday.value = <%=holiday %>;
      }

      pay_type = document.getElementById("pay_type");
      console.log(pay_type);
      if(<%=pay_type%>!=null)
    	pay_type.value = <%=pay_type%>;
      
     
      bonusOn = document.getElementById("bonus_on");
      bonusOff = document.getElementById("bonus_off");
      benefitOn = document.getElementById("benefit_on");
      benefitOff = document.getElementById("benefit_off"); 
      for_worker = document.getElementById("for_worker");
      for_account = document.getElementById("for_account");
      if(<%=bonus_check%>==1) {
      bonusOn.checked = true;
      bonusOff.checked = false;
      }
      else {
         bonusOn.checked = false;
         bonusOff.checked = true;
      }
      
      if(<%=benefit_check%>==1) {
         benefitOn.checked = true;
         benefitOff.checked = false;
      }
      else {
         benefitOff.checked = true;
         benefitOn.checked = false;
      }
      
      if(<%=payfor%>==1) {
         for_worker.checked = true;
         for_account.checked = false;
      }
      else {
         for_worker.checked = false;
         for_account.checked = true;       
      }
      
      empIn = document.getElementById("em_insurance");
      accIn = document.getElementById("ac_insurance");
      natPn = document.getElementById("pension");
      heaIn = document.getElementById("hlt_insurance");
      if(<%=em_insurance%>!=null)
         empIn.checked = true;
      if(<%=ac_insurance%>!=null)
          accIn.checked = true;
      if(<%=pension%>!=null)
          natPn.checked = true;
      if(<%=hlt_insurance%>!=null)
          heaIn.checked = true;
      canVas = document.getElementById("sign-canvas");
      ccpx = canVas.getContext("2d");
      console.log(canVas);
      console.log("<%=canvas%>");

  	img = new Image();
  	img.src = "<%=canvas%>";
  	console.log(img);
  	img.onload = function() {
  		console.log("DONE");
  		ccpx.drawImage(img,0,0);
  	}
      console.log(document.getElementById("admin_id").value);
      if(document.getElementById("admin_id").value=="null") document.getElementById("admin_id").value="";
      if(document.getElementById("user_id").value=="null") document.getElementById("user_id").value="";
      if(document.getElementById("start_year").value=="null") document.getElementById("start_year").value="";
      if(document.getElementById("start_month").value=="null") document.getElementById("start_month").value="";
      if(document.getElementById("start_day").value=="null") document.getElementById("start_day").value="";
      if(document.getElementById("work_place").value=="null") document.getElementById("work_place").value="";
      if(document.getElementById("content").value=="null") document.getElementById("content").value="";
      
      if(document.getElementById("work_per_week").value=="null") document.getElementById("work_per_week").value="";

      if(document.getElementById("start_time").value=="null") document.getElementById("start_time").value="";
      if(document.getElementById("start_min").value=="null") document.getElementById("start_min").value="";
      if(document.getElementById("end_time").value=="null") document.getElementById("end_time").value="";
      if(document.getElementById("end_min").value=="null") document.getElementById("end_min").value="";
      if(document.getElementById("break_start_time").value=="null") document.getElementById("break_start_time").value="";
      if(document.getElementById("break_start_min").value=="null") document.getElementById("break_start_min").value="";
      if(document.getElementById("break_end_time").value=="null") document.getElementById("break_end_time").value="";
      if(document.getElementById("break_end_min").value=="null") document.getElementById("break_end_min").value="";

      if(document.getElementById("pay").value=="null") document.getElementById("pay").value="";
      if(document.getElementById("bonus").value=="null") document.getElementById("bonus").value="";
      if(document.getElementById("benefit_1").value=="null") document.getElementById("benefit_1").value="";
      if(document.getElementById("benefit_2").value=="null") document.getElementById("benefit_2").value="";
      if(document.getElementById("benefit_3").value=="null") document.getElementById("benefit_3").value="";
      if(document.getElementById("benefit_4").value=="null") document.getElementById("benefit_4").value="";
      if(document.getElementById("payday").value=="null") document.getElementById("payday").value="";
      if(document.getElementById("contract_year").value=="null") document.getElementById("contract_year").value="";
      if(document.getElementById("contract_month").value=="null") document.getElementById("contract_month").value="";
      if(document.getElementById("contract_day").value=="null") document.getElementById("contract_day").value="";
      if(document.getElementById("company_name").value=="null") document.getElementById("company_name").value="";
      if(document.getElementById("company_num").value=="null") document.getElementById("company_num").value="";
      if(document.getElementById("company_address").value=="null") document.getElementById("company_address").value="";
      if(document.getElementById("admin_name").value=="null") document.getElementById("admin_name").value="";
      if(document.getElementById("user_address").value=="null") document.getElementById("user_address").value="";
      if(document.getElementById("user_num").value=="null") document.getElementById("user_num").value="";
      if(document.getElementById("user_name").value=="null") document.getElementById("user_name").value="";
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
   
   /* function canvasStr()
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
				|| document.frm.work_place.value == ""
				|| document.frm.content.value == ""
				|| document.frm.start_time.value == ""
				|| document.frm.start_min.value == ""
				|| document.frm.end_time.value == ""
				|| document.frm.end_min.value == ""
				|| document.frm.break_start_time.value == ""
				|| document.frm.break_start_min.value == ""
				|| document.frm.break_end_time.value == ""
				|| document.frm.break_end_min.value == ""
				|| document.frm.pay.value == ""
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
			if (document.frm.pay.value == "") {
				pay = document.getElementById("pay");
				console.log(pay);
				alert("임금이 비었습니다.");
			}
			/* if(document.frm.bonus.value=="") {
			   bonus = document.getElementById("bonus");
			   console.log(bonus);
			   bonus.value="";
			} */
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
		} else {
			alert("작성해주셔서 감사합니다.");
			return true;
		}
	}
</script>