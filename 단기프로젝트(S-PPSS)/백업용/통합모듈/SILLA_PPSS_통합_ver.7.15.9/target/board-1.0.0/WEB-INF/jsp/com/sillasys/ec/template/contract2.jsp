<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div style="margin:0 auto;">
			<h1 style="margin:0 auto;margin-top:20pt;display:block;text-align:center">표준 근로 계약서</h1><br>
		</div>
		<div class="col-sm-12">
		<input type="text" id="admin_id" name="admin_id" style="width:100px; height:30px;display: inline-block;">
		(이하 "사업주"라 함)과(와)
		<input type="text" id="user_id" name="user_id" style="width:100px; height:30px;display: inline-block;">
		(이하 "근로자"라 함)은 다음과 같이 근로계약을 채결한다.</div><br>
		<div class="col-sm-12" style="margin-top:10px;">
		1. 근로개시일:
		<input type="text" id="start_year" name="start_year" style="width:60px; height:30px;display: inline-block;" maxlength="4">
		년
		<input type="text" id="start_month" name="start_month" style="width:30px; height:30px;display: inline-block;" maxlength="2">
		월
		<input type="text" id="start_day" name="start_day" style="width:30px; height:30px;display: inline-block;" maxlength="2">
		일부터
		</div><br>
		<div class="col-sm-12" style="margin-top:10px;">
		2. 근무장소:
		<input type="text" id="location" name="location" style="width:350px; height:30px;display:inline-block;"></div>
		<div class="col-sm-12" style="margin-top:10px;">
		3. 업무의 내용:
		<input type="text" id="contents" name="contents" style="width:350px;height:30px;display:inline-block;"></div>
		<div class="col-sm-12" style="margin-top:10px;">
		4. 소정근로시간:
		<input type="text" id="start_time" name="start_time" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="start_time" name="start_min" style="width:30px;height:30px;display:inline-block;"maxlength="2">분부터
		
		<input type="text" id="start_time" name="end_time" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="start_time" name="end_min" style="width:30px;height:30px;display:inline-block;"maxlength="2">분까지 (휴게시간:
		
		<input type="text" id="break_start_time" name="break_start_time" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="break_start_min" name="break_start_min" style="width:30px;height:30px;display:inline-block;"maxlength="2">분~
		<input type="text" id="break_end_time" name="break_end_time" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
		<input type="text" id="break_end_min" name="break_end_min" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</div><br><br>
		<div class="col-sm-12">
		5. 근무일/휴일:매주
		<select name="work_per_week" style="width:40px;height:30px;display:inline-block;">
        	<option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        	<option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
        </select>일(또는 매일단위)근무,주휴일 매주
        <select name="holiday" style="width:40px;height:30px;display:inline-block;">
        	<option value="월">월</option>
        	<option value="화">화</option>
        	<option value="수">수</option>
        	<option value="목">목</option>
        	<option value="금">금</option>
        	<option value="토">토</option>
        	<option value="일">일</option>
        </select>요일</div><br><br>
        <div class="col-sm-12">
        6. 임금<br> - 
        <select name="pay" style="width:60px;height:30px;display:inline-block;">
        	<option value="월급">월급</option>
        	<option value="주급">주급</option>
        	<option value="시급">시급</option>
        </select> : 
        <input type="text" id="pay_money" name="pay_money" style="width:150px;height:30px;display:inline-block;">원<br> - 상여금:있음
        <input type="radio" id="bonus_on" name="bonus_check" value="on" style="text-align:center">
        <input type="text" id="bonus" name="bonus" style="width:150px;height:30px;display:inline-block;margin:2px;">원, 없음
        <input type="radio" id="bonus_off" name="bonus_check" value="off" style="text-align:center;margin:2px;" checked><br>
        - 기타급여(제수당 등):있음
		<input type="radio" id="benefit_on" name="benefit_check" value="on" style="text-align:center">없음
        <input type="radio" id="benefit_off" name="benefit_check" value="off" style="text-align:center;margin:2px;" checked><br>
		<input type="text" id="benefit_1" name="benefit_1" style="width:150px;height:30px;display:inline-block;margin:2px;">원
		<input type="text" id="benefit_2" name="benefit_2" style="width:150px;height:30px;display:inline-block;margin:2px;">원<br>
		<input type="text" id="benefit_3" name="benefit_3" style="width:150px;height:30px;display:inline-block;margin:2px;">원
		<input type="text" id="benefit_4" name="benefit_4" style="width:150px;height:30px;display:inline-block;margin:2px;">원<br>
		- 임금지급일:매월(매주 또는 매일)
		<input type="text" id="payday" name="payday" style="width:30px;height:30px;display:inline-block;" maxlength="2">일(휴일의 경우는 전일 지급)<br>
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
		<input type="text" id="contract_year" name="contract_year" style="width:60px;height:30px;display:inline-block;"maxlength="4">년
		<input type="text" id="contract_month" name="contract_month" style="width:30px;height:30px;display:inline-block;"maxlength="4">월
		<input type="text" id="contract_day" name="contract_day" style="width:30px;height:30px;display:inline-block;"maxlength="4">일<br><br>(사업주) 사업체명:
		<input type="text" id="company_name" name="company_name" style="width:100px;height:30px;display:inline-block;">(전화:
		<input type="text" id="company_num" name="company_num" style="width:100px;height:30px;display:inline-block;">)<br>주 소:
		<input type="text" id="company_address" name="company_address" style="width:200px;height:30px;display:inline-block;"><br>대 표 자:
		<input type="text" id="admin_name" name="admin_name" style="width:100px;height:30px;display:inline-block;"><br>(근로자) 주 소:
		<input type="text" id="user_address" name="user_address" style="width:200px;height:30px;display:inline-block;"><br>연 락 처:
		<input type="text" id="user_num" name="user_num" style="width:100px;height:30px;display:inline-block;"><br>성 명:
		<input type="text" id="user_name" name="user_name" style="width:100px;height:30px;display:inline-block;">
		</div>
	</div>
</div>