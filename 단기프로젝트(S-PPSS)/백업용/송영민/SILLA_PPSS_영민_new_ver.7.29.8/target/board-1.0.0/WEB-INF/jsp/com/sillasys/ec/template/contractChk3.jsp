<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   String admin_id = request.getParameter("admin_id");
   String user_id = request.getParameter("user_id");
   String start_year = request.getParameter("start_year");
   String start_month = request.getParameter("start_month");
   String start_day = request.getParameter("start_day");
   String end_year = request.getParameter("end_year");
   String end_month = request.getParameter("end_month");
   String end_day = request.getParameter("end_day");
   String location = request.getParameter("location");
   String contents = request.getParameter("contents");
   
   String work_day_1 = request.getParameter("work_day_1");
   String work_day_2 = request.getParameter("work_day_2");
   String work_day_3 = request.getParameter("work_day_3");
   String work_day_4 = request.getParameter("work_day_4");
   String work_day_5 = request.getParameter("work_day_5");
   String work_day_6 = request.getParameter("work_day_6");
   
   String work_time_1 = request.getParameter("work_time_1");
   String work_time_2 = request.getParameter("work_time_2");
   String work_time_3 = request.getParameter("work_time_3");
   String work_time_4 = request.getParameter("work_time_4");
   String work_time_5 = request.getParameter("work_time_5");
   String work_time_6 = request.getParameter("work_time_6");
   
   String work_start_time_1 = request.getParameter("work_start_time_1");
   String work_start_time_2 = request.getParameter("work_start_time_2");
   String work_start_time_3 = request.getParameter("work_start_time_3");
   String work_start_time_4 = request.getParameter("work_start_time_4");
   String work_start_time_5 = request.getParameter("work_start_time_5");
   String work_start_time_6 = request.getParameter("work_start_time_6");
   
   String work_start_min_1 = request.getParameter("work_start_min_1");
   String work_start_min_2 = request.getParameter("work_start_min_2");
   String work_start_min_3 = request.getParameter("work_start_min_3");
   String work_start_min_4 = request.getParameter("work_start_min_4");
   String work_start_min_5 = request.getParameter("work_start_min_5");
   String work_start_min_6 = request.getParameter("work_start_min_6");
   
   String work_end_time_1 = request.getParameter("work_end_time_1");
   String work_end_time_2 = request.getParameter("work_end_time_2");
   String work_end_time_3 = request.getParameter("work_end_time_3");
   String work_end_time_4 = request.getParameter("work_end_time_4");
   String work_end_time_5 = request.getParameter("work_end_time_5");
   String work_end_time_6 = request.getParameter("work_end_time_6");
   
   String work_end_min_1 = request.getParameter("work_end_min_1");
   String work_end_min_2 = request.getParameter("work_end_min_2");
   String work_end_min_3 = request.getParameter("work_end_min_3");
   String work_end_min_4 = request.getParameter("work_end_min_4");
   String work_end_min_5 = request.getParameter("work_end_min_5");
   String work_end_min_6 = request.getParameter("work_end_min_6");
   
   String break_start_time_1 = request.getParameter("break_start_time_1");
   String break_start_time_2 = request.getParameter("break_start_time_2");
   String break_start_time_3 = request.getParameter("break_start_time_3");
   String break_start_time_4 = request.getParameter("break_start_time_4");
   String break_start_time_5 = request.getParameter("break_start_time_5");
   String break_start_time_6 = request.getParameter("break_start_time_6");
   
   String break_start_min_1 = request.getParameter("break_start_min_1");
   String break_start_min_2 = request.getParameter("break_start_min_2");
   String break_start_min_3 = request.getParameter("break_start_min_3");
   String break_start_min_4 = request.getParameter("break_start_min_4");
   String break_start_min_5 = request.getParameter("break_start_min_5");
   String break_start_min_6 = request.getParameter("break_start_min_6");
   
   String break_end_time_1 = request.getParameter("break_end_time_1");
   String break_end_time_2 = request.getParameter("break_end_time_2");
   String break_end_time_3 = request.getParameter("break_end_time_3");
   String break_end_time_4 = request.getParameter("break_end_time_4");
   String break_end_time_5 = request.getParameter("break_end_time_5");
   String break_end_time_6 = request.getParameter("break_end_time_6");
   
   String break_end_min_1 = request.getParameter("break_end_min_1");
   String break_end_min_2 = request.getParameter("break_end_min_2");
   String break_end_min_3 = request.getParameter("break_end_min_3");
   String break_end_min_4 = request.getParameter("break_end_min_4");
   String break_end_min_5 = request.getParameter("break_end_min_5");
   String break_end_min_6 = request.getParameter("break_end_min_6");
   
   String holiday = request.getParameter("holiday");
   String pay = request.getParameter("pay");
   String pay_money = request.getParameter("pay_money");
   String bonus_check = request.getParameter("bonus_check");
   String bonus = request.getParameter("bonus");
   String benefit_check = request.getParameter("benefit_check");
   String benefit_1 = request.getParameter("benefit_1");
   String extra_pay = request.getParameter("extra_pay");
   String payday = request.getParameter("payday");
   String payfor = request.getParameter("payfor");
   String employment_insurance = request.getParameter("employment_insurance");
   String accident_insurance = request.getParameter("accident_insurance");
   String national_pension = request.getParameter("national_pension");
   String health_insurance = request.getParameter("health_insurance");
   
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
   
   String canvas_data = request.getParameter("canvas-data");
%>

<div class="container">
   <div class="row">
      <div style="margin:0 auto;">
         <h1 style="margin:0 auto;margin-top:20pt;display:block;text-align:center">단시간근로자 표준근로계약서</h1><br>
      </div>
      <div class="col-sm-12">
      <input type="text" id="admin_id" name="admin_id" value=<%=admin_id %> style="width:100px; height:30px;display: inline-block;">
      (이하 "사업주"라 함)과(와)
      <input type="text" id="user_id" name="user_id" value=<%=user_id %> style="width:100px; height:30px;display: inline-block;">
      (이하 "근로자"라 함)은 다음과 같이 근로계약을 채결한다.</div><br>
      <div class="col-sm-12" style="margin-top:10px;">
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
      일까지</div><br>
      <div class="col-sm-12" style="margin-top:10px;">
      2. 근무장소:
      <input type="text" id="location" name="location" value=<%=location %> style="width:350px; height:30px;display:inline-block;"></div>
      <div class="col-sm-12" style="margin-top:10px;">
      3. 업무의 내용:
      <input type="text" id="contents" name="contents" value=<%=contents %> style="width:350px;height:30px;display:inline-block;"></div>
      <div class="col-sm-12" style="margin-top:10px;">
      4. 근로일 및 근로일별 근로시간<br></div><br><br>
      <div class="col-sm-12">
         <table class="table table-bordered">
            <tr>
               <td></td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_1" name="work_day_1" value=<%=work_day_1 %> style="width:30px;height:30px;display:inline-block;">요일</td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_2" name="work_day_2" value="<%=work_day_2 %>" style="width:30px;height:30px;display:inline-block;">요일</td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_3" name="work_day_3" value="<%=work_day_3 %>"style="width:30px;height:30px;display:inline-block;">요일</td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_4" name="work_day_4" value="<%=work_day_4 %>" style="width:30px;height:30px;display:inline-block;">요일</td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_5" name="work_day_5" value="<%=work_day_5 %>" style="width:30px;height:30px;display:inline-block;">요일</td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_6" name="work_day_6" value="<%=work_day_6 %>" style="width:30px;height:30px;display:inline-block;">요일</td>
            </tr>
            <tr>
               <td style="text-align:center;padding:0px;">근로시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_1" name="work_time_1" value=<%=work_time_1 %> style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_2" name="work_time_2" value="<%=work_time_2 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_3" name="work_time_3" value="<%=work_time_3 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_4" name="work_time_4" value="<%=work_time_4 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_5" name="work_time_5" value="<%=work_time_5 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_6" name="work_time_6" value="<%=work_time_6 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
            </tr>
            <tr>
               <td style="text-align:center;padding:0px;">시업</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_1" name="work_start_time_1" value=<%=work_start_time_1 %> style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_start_min_1" name="work_start_min_1" value=<%=work_start_min_1 %> style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_2" name="work_start_time_2" value="<%=work_start_time_2 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_start_min_2" name="work_start_min_2" value="<%=work_start_min_2 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_3" name="work_start_time_3" value="<%=work_start_time_3 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_start_min_3" name="work_start_min_3" value="<%=work_start_min_3 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_4" name="work_start_time_4" value="<%=work_start_time_4 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_start_min_4" name="work_start_min_4" value="<%=work_start_min_4 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_5" name="work_start_time_5" value="<%=work_start_time_5 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_start_min_5" name="work_start_min_5" value="<%=work_start_min_5 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_6" name="work_start_time_6" value="<%=work_start_time_6 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_start_min_6" name="work_start_min_6" value="<%=work_start_min_6 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
            </tr>
            <tr>
               <td style="text-align:center;padding:0px;">종업</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_1" name="work_end_time_1" value=<%=work_end_time_1 %> style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_end_min_1" name="work_end_min_1" value=<%=work_end_min_1 %> style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_2" name="work_end_time_2" value="<%=work_end_time_2 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_end_min_2" name="work_end_min_2" value="<%=work_end_min_2 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_3" name="work_end_time_3" value="<%=work_end_time_3 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_end_min_3" name="work_end_min_3" value="<%=work_end_min_3 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_4" name="work_end_time_4" value="<%=work_end_time_4 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_end_min_4" name="work_end_min_4" value="<%=work_end_min_4 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_5" name="work_end_time_5" value="<%=work_end_time_5 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_end_min_5" name="work_end_min_5" value="<%=work_end_min_5 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_6" name="work_end_time_6" value="<%=work_end_time_6 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="work_end_min_6" name="work_end_min_6" value="<%=work_end_min_6 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
            </tr>
            <tr>
               <td style="text-align:center;padding:auto auto;">휴게 시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_1" name="break_start_time_1" value=<%=break_start_time_1 %> style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_start_min_1" name="break_start_min_1" value=<%=break_start_min_1 %> style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="break_end_time_1" name="break_end_time_1" value=<%=break_end_time_1 %> style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_end_min_1" name="break_end_min_1" value=<%=break_end_min_1 %> style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_2" name="break_start_time_2" value="<%=break_start_time_2 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_start_min_2" name="break_start_min_2" value="<%=break_start_min_2 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="break_end_time_2" name="break_end_time_2" value="<%=break_end_time_2 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_end_min_2" name="break_end_min_2" value="<%=break_end_min_2 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_3" name="break_start_time_3" value="<%=break_start_time_3 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_start_min_3" name="break_start_min_3" value="<%=break_start_min_3 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="break_end_time_3" name="break_end_time_3" value="<%=break_end_time_3 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_end_min_3" name="break_end_min_3" value="<%=break_end_min_3 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_4" name="break_start_time_4" value="<%=break_start_time_4 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_start_min_4" name="break_start_min_4" value="<%=break_start_min_4 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="break_end_time_4" name="break_end_time_4" value="<%=break_end_time_4 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_end_min_4" name="break_end_min_4" value="<%=break_end_min_4 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_5" name="break_start_time_5" value="<%=break_start_time_5 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_start_min_5" name="break_start_min_5" value="<%=break_start_min_5 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="break_end_time_5" name="break_end_time_5" value="<%=break_end_time_5 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_end_min_5" name="break_end_min_5" value="<%=break_end_min_5 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_6" name="break_start_time_6" value="<%=break_start_time_6 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_start_min_6" name="break_start_min_6" value="<%=break_start_min_6 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="break_end_time_6" name="break_end_time_6" value="<%=break_end_time_6 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="break_end_min_6" name="break_end_min_6" value="<%=break_end_min_6 %>" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
         </table>
      </div>
      <div class="col-sm-12">
      ㅇ 주휴일 매주
        <select id="holiday" name="holiday" value=<%=holiday %> style="width:40px;height:30px;display:inline-block;">
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
        <select id="pay" name="pay" value=<%=pay %> style="width:60px;height:30px;display:inline-block;">
           <option value="1">시급</option>
           <option value="2">일급</option>
           <option value="3">월급</option>
        </select> : 
        <input type="text" id="pay_money" name="pay_money" value=<%=pay_money %> style="width:150px;height:30px;display:inline-block;">원<br> - 상여금:있음
        <input type="radio" id="bonus_on" name="bonus_check" value="1" style="text-align:center">
        <input type="text" id="bonus" name="bonus" value="<%=bonus %>" style="width:150px;height:30px;display:inline-block;margin:2px;">원, 없음
        <input type="radio" id="bonus_off" name="bonus_check" value="2" style="text-align:center;margin:2px;" checked><br>
        - 기타급여(제수당 등):있음
      <input type="radio" id="benefit_on" name="benefit_check" value=<%=benefit_check %> value="on" style="text-align:center">
      <input type="text" id="benefit" name="benefit_1" value="<%=benefit_1 %>" style="width:150px;height:30px;display:inline-block;margin:2px;">원(내역별 기재), 없음
        <input type="radio" id="benefit_off" name="benefit_check" value="off" style="text-align:center;margin:2px;" checked><br>
        
        - 초과근로에 대한 가산임금률:
        <input type="text" id="extra_pay" name="extra_pay" value=<%=extra_pay %> style="width:60px;height:30px;display:inlin-block;margin:2px;">%<br>
      - 임금지급일:매월(매주 또는 매일)
      <input type="text" id="payday" name="payday" value=<%=payday %> style="width:30px;height:30px;display:inline-block;" maxlength="2">일(휴일의 경우는 전일 지급)<br>
      - 지급방법:근로자에게 직접지급
      <input type="radio" id="for_worker" name="payfor" value="1" style="text-align:center">, 근로자 명의 예금통장에 입금
      <input type="radio" id="for_account" name="payfor" value="2" style="text-align:center" checked></div><br><br>
      <div class="col-sm-12" style="margin-top:10px;">
      6. 연차유급휴가: 통상근로자의 근로시간에 비례하여 연차유급휴가 부여</div><br><br>
      <div class="col-sm-12" style="margin-top:10px;">
      7. 사회보험 적용여부(해당란에 체크)<br>
      <input type="checkbox" id="employment_insurance" name="employment_insurance" ><label for="employment_insurance">고용보험</label>
      <input type="checkbox" id="accident_insurance" name="accident_insurance" ><label for="accident_insurance">산재보험</label>
      <input type="checkbox" id="national_pension" name="national_pension" ><label for="national_pension">국민연금</label>
      <input type="checkbox" id="health_insurance" name="health_insurance" ><label for="health_insurance">건강보험</label></div><br><br>
      <div class="col-sm-12">
      8. 근로계약서 교부<br>- 사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자의 교부요구와 관계없이 근로자에게 교부함(근로기준법 제 17조 이행)<br><br>
      9. 기타<br>- 이 계약에 정함이 없는 사항은 근로기준법령에 의함<br><br>
      </div></br>
      <div class="col-sm-12" style="text-align:right">
      
      <canvas class="sign-canvas" id="sign-canvas" name="sign-canvas" style="float:left;">서명칸</canvas>
      <input type="hidden" id="canvas-data" name="canvas-data" value=<%=canvas_data %>>
      
      <input type="text" id="contract_year" name="contract_year" value=<%=contract_year %> style="width:60px;height:30px;display:inline-block;"maxlength="4">년
      <input type="text" id="contract_month" name="contract_month" value=<%=contract_month %> style="width:30px;height:30px;display:inline-block;"maxlength="2">월
      <input type="text" id="contract_day" name="contract_day" value=<%=contract_day %> style="width:30px;height:30px;display:inline-block;"maxlength="2">일<br><br>(사업주) 사업체명:
      <input type="text" id="company_name" name="company_name" value=<%=company_name %> style="width:150px;height:30px;display:inline-block;">(전화:
      <input type="text" id="company_num" name="company_num" value=<%=company_num %> style="width:120px;height:30px;display:inline-block;">)<br>주 소:
      <input type="text" id="company_address" name="company_address" value=<%=company_address %> style="width:250px;height:30px;display:inline-block;"><br>대 표 자:
      <input type="text" id="admin_name" name="admin_name" value=<%=admin_name %> style="width:80px;height:30px;display:inline-block;"><br>(근로자) 주 소:
      <input type="text" id="user_address" name="user_address" value=<%=user_address %> style="width:250px;height:30px;display:inline-block;"><br>연 락 처:
      <input type="text" id="user_num" name="user_num" value=<%=user_num %> style="width:120px;height:30px;display:inline-block;"><br>성 명:
      <input type="text" id="user_name" name="user_name" value=<%=user_name %> style="width:80px;height:30px;display:inline-block;">
      </div>
   </div>
</div>

<style>
   .sign-canvas {border: 2px solid black;background-color:#dddddd;width:300px;height:150px;"}
</style>

<script>
window.onload=function(){
    holiday = document.getElementById("holiday");
    console.log(holiday);
    holiday.value = <%=holiday%>;
    
    pay = document.getElementById("pay");
    console.log(pay);
    pay.value = <%=pay%>;
    
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
    
    empIn = document.getElementById("employment_insurance");
    accIn = document.getElementById("accident_insurance");
    natPn = document.getElementById("national_pension");
    heaIn = document.getElementById("health_insurance");
    if(<%=employment_insurance%>!=null)
       empIn.checked = true;
    if(<%=accident_insurance%>!=null)
        accIn.checked = true;
    if(<%=national_pension%>!=null)
        natPn.checked = true;
    if(<%=health_insurance%>!=null)
        heaIn.checked = true;
    
    canVas = document.getElementById("sign-canvas");
    ccpx = canVas.getContext("2d");
    console.log(canVas);
    console.log("<%=canvas_data%>");

	img = new Image();
	img.src = "<%=canvas_data%>";
	console.log(img);
	img.onload = function() {
		console.log("DONE");
		ccpx.drawImage(img,0,0);
	}
}
</script>