<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String admin_id = (String)request.getAttribute("admin_id");
	String user_id = (String)request.getAttribute("user_id");
	String start_year = (String)request.getAttribute("start_year");
	String start_month = (String)request.getAttribute("start_month");
	String start_day = (String)request.getAttribute("start_day");
	String end_year = (String)request.getAttribute("end_year");
	String end_month = (String)request.getAttribute("end_month");
	String end_day = (String)request.getAttribute("end_day");
	String location = (String)request.getAttribute("location");
	String contents = (String)request.getAttribute("contents");
	String start_time = (String)request.getAttribute("start_time");
	String start_min = (String)request.getAttribute("start_min");
	String end_time = (String)request.getAttribute("end_time");
	String end_min = (String)request.getAttribute("end_min");
	String break_start_time = (String)request.getAttribute("break_start_time");
	String break_start_min = (String)request.getAttribute("break_start_min");
	String break_end_time = (String)request.getAttribute("break_end_time");
	String break_end_min = (String)request.getAttribute("break_end_min");
	String work_per_week = (String)request.getAttribute("work_per_week");
	String holiday = (String)request.getAttribute("holiday");
	String pay = (String)request.getAttribute("pay");
	String pay_money = (String)request.getAttribute("pay_money");
	String bonus_check = (String)request.getAttribute("bonus_check");
	String bonus = (String)request.getAttribute("bonus");
	String benefit_check = (String)request.getAttribute("benefit_check");
	String benefit_1 = (String)request.getAttribute("benefit_1");
	String benefit_2 = (String)request.getAttribute("benefit_2");
	String benefit_3 = (String)request.getAttribute("benefit_3");
	String benefit_4 = (String)request.getAttribute("benefit_4");
	String payday = (String)request.getAttribute("payday");
	String payfor = (String)request.getAttribute("payfor");
	String employment_insurance = (String)request.getAttribute("employment_insurance");
	String accident_insurance = (String)request.getAttribute("accident_insurance");
	String national_pension = (String)request.getAttribute("national_pension");
	String health_insurance = (String)request.getAttribute("health_insurance");
	String contract_year = (String)request.getAttribute("contract_year");
	String contract_month = (String)request.getAttribute("contract_month");
	String contract_day = (String)request.getAttribute("contract_day");
	String company_name = (String)request.getAttribute("company_name");
	String company_num = (String)request.getAttribute("company_num");
	String company_address = (String)request.getAttribute("company_address");
	String admin_name = (String)request.getAttribute("admin_name");
	String user_address = (String)request.getAttribute("user_address");
	String user_num = (String)request.getAttribute("user_num");
	String user_name = (String)request.getAttribute("user_name");
	
	 admin_id = request.getParameter("admin_id");
	 user_id = request.getParameter("user_id");
	 start_year = request.getParameter("start_year");
	 start_month = request.getParameter("start_month");
	 start_day = request.getParameter("start_day");
	 end_year = request.getParameter("end_year");
	 end_month = request.getParameter("end_month");
	 end_day = request.getParameter("end_day");
	 location = request.getParameter("location");
	 contents = request.getParameter("contents");
	 start_time = request.getParameter("start_time");
	 start_min = request.getParameter("start_min");
	 end_time = request.getParameter("end_time");
	 end_min = request.getParameter("end_min");
	 break_start_time = request.getParameter("break_start_time");
	 break_start_min = request.getParameter("break_start_min");
	 break_end_time = request.getParameter("break_end_time");
	 break_end_min = request.getParameter("break_end_min");
	 work_per_week = request.getParameter("work_per_week");
	 holiday = request.getParameter("holiday");
	 pay = request.getParameter("pay");
	 pay_money = request.getParameter("pay_money");
	 bonus_check = request.getParameter("bonus_check");
	 bonus = request.getParameter("bonus");
	 benefit_check = request.getParameter("benefit_check");
	 benefit_1 = request.getParameter("benefit_1");
	 benefit_2 = request.getParameter("benefit_2");
	 benefit_3 = request.getParameter("benefit_3");
	 benefit_4 = request.getParameter("benefit_4");
	 payday = request.getParameter("payday");
	 payfor = request.getParameter("payfor");
	 employment_insurance = request.getParameter("employment_insurance");
	 accident_insurance = request.getParameter("accident_insurance");
	 national_pension = request.getParameter("national_pension");
	 health_insurance = request.getParameter("health_insurance");
	 contract_year = request.getParameter("contract_year");
	 contract_month = request.getParameter("contract_month");
	 contract_day = request.getParameter("contract_day");
	 company_name = request.getParameter("company_name");
	 company_num = request.getParameter("company_num");
	 company_address = request.getParameter("company_address");
	 admin_name = request.getParameter("admin_name");
	 user_address = request.getParameter("user_address");
	 user_num = request.getParameter("user_num");
	 user_name = request.getParameter("user_name");	
%>

<jsp:foward page="contractResult.do"></jsp:foward>

<div class="container">
	<div class="row">
		<div style="margin:0 auto;">
			<h1 style="margin:0 auto;margin-top:20pt;display:block;text-align:center">표준 근로 계약서</h1><br>
		</div>
		
		<form method="get" action="">  <!-- 자기자신에게 input에 입력된 값을 보낸다. -->
		<div class="col-sm-12">
		<input type="text" id="admin_id" name="admin_id" value=<%=admin_id %> style="width:100px; height:30px;display: inline-block;">
		(이하 "사업주"라 함)과(와)
		<input type="text" id="user_id" name="user_id" value=<%=user_id %> style="width:100px; height:30px;display: inline-block;">
		(이하 "근로자"라 함)은 다음과 같이 근로계약을 채결한다.</div><br>
		<div class="col-sm-12">
		1. 근로계약기간:
		<input type="text" id="start_year" name="start_year" value=<%=start_year %> style="width:60px; height:30px;display: inline-block;" maxlength="4">
		년
		<input type="text" id="start_month" name="start_month" value=<%=start_month %> style="width:30px; height:30px;display: inline-block;" maxlength="2">
		월
		<input type="text" id="start_day" name="start_day" value=<%=start_day %> style="width:30px; height:30px;display: inline-block;" maxlength="2">
		일부터
		<input type="text" id="end_year" name="end_year" value=<%=end_year %> style="width:60px; height:30px;display: inline-block;" maxlength="4">
		년
		<input type="text" id="end_month" name="end_month" value=<%=end_month %> style="width:30px; height:30px;display: inline-block;" maxlength="2">
		월
		<input type="text" id="end_day" name="end_day" value=<%=end_day %> style="width:30px; height:30px;display: inline-block;" maxlength="2">
		일까지<br>※ 근로계약기간을 정하지 않는 경우에는 "근로개시일"만 기재</div><br>
		<div class="col-sm-12">
		2. 근무장소:
		<input type="text" id="location" name="location" value=<%=location %> style="width:350px; height:30px;display:inline-block;"></div>
		<div class="col-sm-12" style="margin-top:10px;">
		3. 업무의 내용:
		<input type="text" id="contents" name="contents" value=<%=contents %> style="width:350px;height:30px;display:inline-block;"></div>
		<div class="col-sm-12" style="margin-top:10px;">
		4. 소정근로시간:
		<input type="text" id="start_time" name="start_time" value=<%=start_time %> style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="start_time" name="start_min" value=<%=start_min %> style="width:30px;height:30px;display:inline-block;"maxlength="2">분부터
		
		<input type="text" id="start_time" name="end_time" value=<%=end_time %> style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="start_time" name="end_min" value=<%=end_min %> style="width:30px;height:30px;display:inline-block;"maxlength="2">분까지 (휴게시간:
		
		<input type="text" id="break_start_time" name="break_start_time" value=<%=break_start_time %> style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="break_start_min" name="break_start_min" value=<%=break_start_min %> style="width:30px;height:30px;display:inline-block;"maxlength="2">분~
		<input type="text" id="break_end_time" name="break_end_time" value=<%=break_end_time %> style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="break_end_min" name="break_end_min" value=<%=break_end_min %> style="width:30px;height:30px;display:inline-block;"maxlength="2">분</div><br><br>
		<div class="col-sm-12">
		5. 근무일/휴일:매주
		<select name="work_per_week" value=<%=work_per_week %> style="width:40px;height:30px;display:inline-block;">
        </select>일(또는 매일단위)근무,주휴일 매주
        <select name="holiday" value=<%=holiday %> style="width:40px;height:30px;display:inline-block;">
        </select>요일</div><br><br>
        <div class="col-sm-12">
        6. 임금<br> - 
        <select name="pay" value=<%=pay %> style="width:60px;height:30px;display:inline-block;">
        </select> : 
        <input type="text" id="pay_money" name="pay_money" value=<%=pay_money %> style="width:150px;height:30px;display:inline-block;">원<br> - 상여금:있음
        <input type="radio" id="bonus_on" name="bonus_check" value="on" style="text-align:center">
        <input type="text" id="bonus" name="bonus" value=<%=bonus %> style="width:150px;height:30px;display:inline-block;margin:2px;">원, 없음
        <input type="radio" id="bonus_off" name="bonus_check" value="off" style="text-align:center;margin:2px;" checked><br>
        - 기타급여(제수당 등):있음
		<input type="radio" id="benefit_on" name="benefit_check" value="on" style="text-align:center">없음
        <input type="radio" id="benefit_off" name="benefit_check" value="off" style="text-align:center;margin:2px;" checked><br>
		<input type="text" id="benefit_1" name="benefit_1" value=<%=benefit_1 %> style="width:150px;height:30px;display:inline-block;margin:2px;">원
		<input type="text" id="benefit_2" name="benefit_2" value=<%=benefit_2 %> style="width:150px;height:30px;display:inline-block;margin:2px;">원<br>
		<input type="text" id="benefit_3" name="benefit_3" value=<%=benefit_3 %> style="width:150px;height:30px;display:inline-block;margin:2px;">원
		<input type="text" id="benefit_4" name="benefit_4" value=<%=benefit_4 %> style="width:150px;height:30px;display:inline-block;margin:2px;">원<br>
		- 임금지급일:매월(매주 또는 매일)
		<input type="text" id="payday" name="payday" value=<%=payday %> style="width:30px;height:30px;display:inline-block;" maxlength="2">일(휴일의 경우는 전일 지급)<br>
		- 지급방법:근로자에게 직접지급
		<input type="radio" id="for_worker" name="payfor" value="worker" style="text-align:center">, 근로자 명의 예금통장에 입금
		<input type="radio" id="for_account" name="payfor" value="account" style="text-align:center" checked></div><br><br>
		<div class="col-sm-12" style="margin-top:10px;">
		7. 연차유급휴가<br>
		- 연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함</div><br><br>
		<div class="col-sm-12" style="margin-top:10px;">
		8. 사회보험 적용여부(해당란에 체크)<br>
		<input type="checkbox" id="employment_insurance"><label for="employment_insurance">고용보험</label>
		<input type="checkbox" id="accident_insurance"><label for="accident_insurance">산재보험</label>
		<input type="checkbox" id="national_pension"><label for="national_pension">국민연금</label>
		<input type="checkbox" id="health_insurance"><label for="health_insurance">건강보험</label></div><br><br>
		<div class="col-sm-12">
		9. 근로계약서 교부<br>- 사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자의 교부요구와 관계없이 근로자에게 교부함(근로기준법 제 17조 이행)<br><br>
		10. 근로계약서 교부<br>- 사업주와 근로자는 각자가 근로계약, 취업규칙, 단체협약을 지키고 성실하게 이행하여야 함<br><br>
		11. 근로계약, 취업규칙 등의 성실한 이행의무<br>- 이 계약에 정함이 없는 사항은 근로기준법령에 의함</div></br>
		<div class="col-sm-12" style="text-align:right">
		<input type="text" id="contract_year" name="contract_year" value=<%=contract_year %> style="width:60px;height:30px;display:inline-block;"maxlength="4">년
		<input type="text" id="contract_month" name="contract_month" value=<%=contract_month %> style="width:30px;height:30px;display:inline-block;"maxlength="4">월
		<input type="text" id="contract_day" name="contract_month" value=<%=contract_month %> style="width:30px;height:30px;display:inline-block;"maxlength="4">일<br><br>(사업주) 사업체명:
		<input type="text" id="company_name" name="company_name" value=<%=company_name %> style="width:100px;height:30px;display:inline-block;">(전화:
		<input type="text" id="company_num" name="company_num" value=<%=company_num %> style="width:100px;height:30px;display:inline-block;">)<br>주 소:
		<input type="text" id="company_address" name="company_address" value=<%=company_address %> style="width:200px;height:30px;display:inline-block;"><br>대 표 자:
		<input type="text" id="admin_name" name="admin_name" value=<%=admin_name %> style="width:100px;height:30px;display:inline-block;"><br>(근로자) 주 소:
		<input type="text" id="user_address" name="user_address" value=<%=user_address %> style="width:200px;height:30px;display:inline-block;"><br>연 락 처:
		<input type="text" id="user_num" name="user_num" value=<%=user_num %> style="width:100px;height:30px;display:inline-block;"><br>성 명:
		<input type="text" id="user_name" name="user_name" value=<%=user_name %> style="width:100px;height:30px;display:inline-block;">
		</div>
		
		<input type="submit" id="submit" class="btn-btn-primary pull-left value="완료"> 
		
		</form>
	</div>
</div>