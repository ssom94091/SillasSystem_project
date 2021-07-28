<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
       request.setCharacterEncoding("utf-8");
	String contract_type = request.getParameter("contract_type");
	String flag = request.getParameter("flag");
    String admin_id = request.getParameter("admin_id");
    String user_id = request.getParameter("user_id");
    String start_year = request.getParameter("start_year");
    String start_month = request.getParameter("start_month");
    String start_day = request.getParameter("start_day");
    String end_year = request.getParameter("end_year");
    String end_month = request.getParameter("end_month");
    String end_day = request.getParameter("end_day");
    String work_place = request.getParameter("work_place");
    String content = request.getParameter("content");

    String work_day = request.getParameter("work_day");
    String work_day_2 = request.getParameter("work_day_2");
    String work_day_3 = request.getParameter("work_day_3");
    String work_day_4 = request.getParameter("work_day_4");
    String work_day_5 = request.getParameter("work_day_5");
    String work_day_6 = request.getParameter("work_day_6");

    String work_time = request.getParameter("work_time");
    String work_time_2 = request.getParameter("work_time_2");
    String work_time_3 = request.getParameter("work_time_3");
    String work_time_4 = request.getParameter("work_time_4");
    String work_time_5 = request.getParameter("work_time_5");
    String work_time_6 = request.getParameter("work_time_6");

    String start_hour = request.getParameter("start_hour");
    String start_hour_2 = request.getParameter("start_hour_2");
    String start_hour_3 = request.getParameter("start_hour_3");
    String start_hour_4 = request.getParameter("start_hour_4");
    String start_hour_5 = request.getParameter("start_hour_5");
    String start_hour_6 = request.getParameter("start_hour_6");

    String start_min = request.getParameter("start_min");
    String start_min_2 = request.getParameter("start_min_2");
    String start_min_3 = request.getParameter("start_min_3");
    String start_min_4 = request.getParameter("start_min_4");
    String start_min_5 = request.getParameter("start_min_5");
    String start_min_6 = request.getParameter("start_min_6");

    String end_hour = request.getParameter("end_hour");
    String end_hour_2 = request.getParameter("end_hour_2");
    String end_hour_3 = request.getParameter("end_hour_3");
    String end_hour_4 = request.getParameter("end_hour_4");
    String end_hour_5 = request.getParameter("end_hour_5");
    String end_hour_6 = request.getParameter("end_hour_6");

    String end_min = request.getParameter("end_min");
    String end_min_2 = request.getParameter("end_min_2");
    String end_min_3 = request.getParameter("end_min_3");
    String end_min_4 = request.getParameter("end_min_4");
    String end_min_5 = request.getParameter("end_min_5");
    String end_min_6 = request.getParameter("end_min_6");

    String b_start_hour = request.getParameter("b_start_hour");
    String b_start_hour_2 = request.getParameter("b_start_hour_2");
    String b_start_hour_3 = request.getParameter("b_start_hour_3");
    String b_start_hour_4 = request.getParameter("b_start_hour_4");
    String b_start_hour_5 = request.getParameter("b_start_hour_5");
    String b_start_hour_6 = request.getParameter("b_start_hour_6");

    String b_start_min = request.getParameter("b_start_min");
    String b_start_min_2 = request.getParameter("b_start_min_2");
    String b_start_min_3 = request.getParameter("b_start_min_3");
    String b_start_min_4 = request.getParameter("b_start_min_4");
    String b_start_min_5 = request.getParameter("b_start_min_5");
    String b_start_min_6 = request.getParameter("b_start_min_6");

    String b_end_hour = request.getParameter("b_end_hour");
    String b_end_hour_2 = request.getParameter("b_end_hour_2");
    String b_end_hour_3 = request.getParameter("b_end_hour_3");
    String b_end_hour_4 = request.getParameter("b_end_hour_4");
    String b_end_hour_5 = request.getParameter("b_end_hour_5");
    String b_end_hour_6 = request.getParameter("b_end_hour_6");

    String b_end_min = request.getParameter("b_end_min");
    String b_end_min_2 = request.getParameter("b_end_min_2");
    String b_end_min_3 = request.getParameter("b_end_min_3");
    String b_end_min_4 = request.getParameter("b_end_min_4");
    String b_end_min_5 = request.getParameter("b_end_min_5");
    String b_end_min_6 = request.getParameter("b_end_min_6");

    String holiday = request.getParameter("holiday");
    String pay_type = request.getParameter("pay_type");
    String pay = request.getParameter("pay");
    String bonus_check = request.getParameter("bonus_check");
    String bonus = request.getParameter("bonus");
    String benefit_check = request.getParameter("benefit_check");
    String benefit_1 = request.getParameter("benefit_1");
    String extra_pay = request.getParameter("extra_pay");
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
         <h1 style="margin:0 auto;margin-top:20pt;display:block;text-align:center">단시간근로자 표준근로계약서</h1><br>
      </div>
      
      <form action="/contract/template/contract3.do" method="post" name="frm" onsubmit="return Check()">  <!-- 자기자신에게 input에 입력된 값을 보낸다. -->
            
      <div class="col-sm-12">
      <input type="hidden" id="contract_type" name="contract_type" value="단기간(기간정함)">
       <input type="hidden" id="contract_pk" name="contract_pk" value="0">
      <input type="text" id="admin_id" onkeyup="setValue();" value="<%=admin_id %>" name="admin_id" style="width:150px; height:30px;display: inline-block;"maxlength="20">
      (이하 "사업주"라 함)과(와)
      <input type="text" id="user_id" onkeyup="setValue();" value="<%=user_id %>" name="user_id" style="width:80px; height:30px;display: inline-block;"maxlength="7">
      (이하 "근로자"라 함)은 다음과 같이 근로계약을 채결한다.</div><br>
      <div class="col-sm-12" style="margin-top:10px;">
      1. 근로계약기간:
      <input type="text" id="start_year" onkeyup="setValue();" value="<%=start_year%>" name="start_year" style="width:60px; height:30px;display: inline-block;" maxlength="4">
      년
      <input type="text" id="start_month" onkeyup="setValue();" value="<%=start_month %>" name="start_month" style="width:30px; height:30px;display: inline-block;" maxlength="2">
      월
      <input type="text" id="start_day" onkeyup="setValue();" value="<%=start_day %>" name="start_day" style="width:30px; height:30px;display: inline-block;" maxlength="2">
      일부터
      <input type="text" id="end_year" onkeyup="setValue();" value="<%=end_year %>" name="end_year" style="width:60px; height:30px;display: inline-block;" maxlength="4">
      년
      <input type="text" id="end_month" onkeyup="setValue();" value="<%=end_month %>" name="end_month" style="width:30px; height:30px;display: inline-block;" maxlength="2">
      월
      <input type="text" id="end_day" onkeyup="setValue();" value="<%=end_day %>" name="end_day" style="width:30px; height:30px;display: inline-block;" maxlength="2">
      일까지</div><br>
      <div class="col-sm-12" style="margin-top:10px;">
      2. 근무장소:
      <input type="text" id="work_place" onkeyup="setValue();" value="<%=work_place %>" name="work_place" style="width:350px; height:30px;display:inline-block;"maxlength="50"></div>
      <div class="col-sm-12" style="margin-top:10px;">
      3. 업무의 내용:
      <input type="text" id="content" onkeyup="setValue();" value="<%=content %>" name="content" style="width:350px;height:30px;display:inline-block;"maxlength="50"></div>
      <div class="col-sm-12" style="margin-top:10px;">
      4. 근로일 및 근로일별 근로시간<br></div><br><br>
      <div class="col-sm-12">
      	 <input type="hidden" id="flag" name="flag" value="0">
         <table class="table table-bordered">
            <tr>
               <td></td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day" onkeyup="setValue();" value="<%=work_day %>" name="work_day" style="width:30px;height:30px;display:inline-block;"maxlength="1">요일</td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_2" onkeyup="setValue();" value="<%=work_day_2 %>" name="work_day_2" style="width:30px;height:30px;display:inline-block;"maxlength="1">요일</td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_3" onkeyup="setValue();" value="<%=work_day_3 %>" name="work_day_3" style="width:30px;height:30px;display:inline-block;"maxlength="1">요일</td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_4" onkeyup="setValue();" value="<%=work_day_4 %>" name="work_day_4" style="width:30px;height:30px;display:inline-block;"maxlength="1">요일</td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_5" onkeyup="setValue();" value="<%=work_day_5 %>" name="work_day_5" style="width:30px;height:30px;display:inline-block;"maxlength="1">요일</td>
               <td style="text-align:center;padding:0px;"><input type="text" id="work_day_6" onkeyup="setValue();" value="<%=work_day_6 %>" name="work_day_6" style="width:30px;height:30px;display:inline-block;"maxlength="1">요일</td>
            </tr>
            <tr>
               <td style="text-align:center;padding:0px;">근로시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time" onkeyup="setValue();" value="<%=work_time %>" name="work_time" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_2" onkeyup="setValue();" value="<%=work_time_2 %>" name="work_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_3" onkeyup="setValue();" value="<%=work_time_3 %>" name="work_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_4" onkeyup="setValue();" value="<%=work_time_4 %>" name="work_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_5" onkeyup="setValue();" value="<%=work_time_5 %>" name="work_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="work_time_6" onkeyup="setValue();" value="<%=work_time_6 %>" name="work_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">시간</td>
            </tr>
            <tr>
               <td style="text-align:center;padding:0px;">시업</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="start_hour" onkeyup="setValue();" value="<%=start_hour %>" name="start_hour" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="start_min" value= "<%=start_min %>" name="start_min" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="start_hour_2" onkeyup="setValue();" value="<%=start_hour_2 %>" name="start_hour_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="start_min_2" value="<%=start_min_2 %>" name="start_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="start_hour_3" onkeyup="setValue();" value="<%=start_hour_3 %>" name="start_hour_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="start_min_3" value="<%=start_min_3 %>" name="start_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="start_hour_4" onkeyup="setValue();" value="<%=start_hour_4 %>" name="start_hour_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="start_min_4" value="<%=start_min_4 %>" name="start_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="start_hour_5" onkeyup="setValue();" value="<%=start_hour_5 %>" name="start_hour_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="start_min_5" value="<%=start_min_5 %>" name="start_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="start_hour_6" onkeyup="setValue();" value="<%=start_hour_6 %>" name="start_hour_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="start_min_6" value="<%=start_min_6 %>" name="start_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
            </tr>
            <tr>
               <td style="text-align:center;padding:0px;">종업</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="end_hour" onkeyup="setValue();" value="<%=end_hour %>" name="end_hour" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="end_min" onkeyup="setValue();" value="<%=end_min %>" name="end_min" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="end_hour_2" onkeyup="setValue();" value="<%=end_hour_2 %>" name="end_hour_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="end_min_2" onkeyup="setValue();" value="<%=end_min_2 %>" name="end_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="end_hour_3" onkeyup="setValue();" value="<%=end_hour_3 %>" name="end_hour_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="end_min_3" onkeyup="setValue();" value="<%=end_min_3 %>" name="end_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="end_hour_4" onkeyup="setValue();" value="<%=end_hour_4 %>" name="end_hour_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="end_min_4" onkeyup="setValue();" value="<%=end_min_4 %>" name="end_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="end_hour_5" onkeyup="setValue();" value="<%=end_hour_5 %>" name="end_hour_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="end_min_5" onkeyup="setValue();" value="<%=end_min_5 %>" name="end_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="end_hour_6" onkeyup="setValue();" value="<%=end_hour_6 %>" name="end_hour_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="end_min_6" onkeyup="setValue();" value="<%=end_min_6 %>" name="end_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
            </tr>
            <tr>
               <td style="text-align:center;padding:auto auto;">휴게 시간</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="b_start_hour" onkeyup="setValue();" value="<%=b_start_hour %>" name="b_start_hour" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_start_min" onkeyup="setValue();" value="<%=b_start_min %>" name="b_start_min" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="b_end_hour" onkeyup="setValue();" value="<%=b_end_hour %>" name="b_end_hour" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_end_min" onkeyup="setValue();" value="<%=b_end_min %>" name="b_end_min" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="b_start_hour_2" onkeyup="setValue();" value="<%=b_start_hour_2 %>" name="b_start_hour_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_start_min_2" onkeyup="setValue();" value="<%=b_start_min_2 %>" name="b_start_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="b_end_hour_2" onkeyup="setValue();" value="<%=b_end_hour_2 %>" name="b_end_hour_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_end_min_2" onkeyup="setValue();" value="<%=b_end_min_2 %>" name="b_end_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="b_start_hour_3" onkeyup="setValue();" value="<%=b_start_hour_3 %>" name="b_start_hour_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_start_min_3" onkeyup="setValue();" value="<%=b_start_min_3 %>" name="b_start_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="b_end_hour_3" onkeyup="setValue();" value="<%=b_end_hour_3 %>" name="b_end_hour_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_end_min_3" onkeyup="setValue();" value="<%=b_end_min_3 %>" name="b_end_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="b_start_hour_4" onkeyup="setValue();" value="<%=b_start_hour_4 %>" name="b_start_hour_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_start_min_4" onkeyup="setValue();" value="<%=b_start_min_4 %>" name="b_start_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="b_end_hour_4" onkeyup="setValue();" value="<%=b_end_hour_4 %>" name="b_end_hour_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_end_min_4" onkeyup="setValue();" value="<%=b_end_min_4 %>" name="b_end_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="b_start_hour_5" onkeyup="setValue();" value="<%=b_start_hour_5 %>" name="b_start_hour_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_start_min_5" onkeyup="setValue();" value="<%=b_start_min_5 %>" name="b_start_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="b_end_hour_5" onkeyup="setValue();" value="<%=b_end_hour_5 %>" name="b_end_hour_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_end_min_5" onkeyup="setValue();" value="<%=b_end_min_5 %>" name="b_end_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
               <td style="text-align:right;padding:0px;"><input type="text" id="b_start_hour_6" onkeyup="setValue();" value="<%=b_start_hour_6 %>" name="b_start_hour_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_start_min_6" onkeyup="setValue();" value="<%=b_start_min_6 %>" name="b_start_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">분<br>~
               <input type="text" id="b_end_hour_6" onkeyup="setValue();" value="<%=b_end_hour_6 %>" name="b_end_hour_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">시
               <input type="text" id="b_end_min_6" onkeyup="setValue();" value="<%=b_end_min_6 %>" name="b_end_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">분</td>
         </table>
      </div>
      <div class="col-sm-12">
      ㅇ 주휴일 매주
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
        5. 임금<br> - 
        <select id="pay_type" name="pay_type" value="<%=pay_type %>" style="width:60px;height:30px;display:inline-block;">
           <option value="1">시급</option>
           <option value="2">일급</option>
           <option value="3">월급</option>
        </select> : 
        <input type="text" id="pay" value="<%=pay %>" name="pay" style="width:150px;height:30px;display:inline-block;" onchange="getNumber(this);"
           onkeyup="getNumber(this);"maxlength="13">원<br> - 상여금:있음
        <input type="radio" id="bonus_on" name="bonus_check" value="1" style="text-align:center" onclick="toggle_bonus(true);">
        <input type="text" id="bonus" value="<%=bonus %>" name="bonus" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
           onkeyup="getNumber(this);"maxlength="13">원, 없음
        <input type="radio" id="bonus_off" onkeyup="setValue();" name="bonus_check" value="2" style="text-align:center;margin:2px;" onclick="toggle_bonus(false);" checked><br>
        - 기타급여(제수당 등):있음
      <input type="radio" id="benefit_on" name="benefit_check" value="1" style="text-align:center" onclick="toggle_benefit(true);">
      <input type="text" id="benefit_1" value="<%=benefit_1 %>" name="benefit_1" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
           onkeyup="getNumber(this);"maxlength="13">원(내역별 기재), 없음
        <input type="radio" id="benefit_off" name="benefit_check" value="2" style="text-align:center;margin:2px;" onclick="toggle_benefit(false);"checked><br>
        - 초과근로에 대한 가산임금률:
        <input type="text" id="extra_pay" onkeyup="setValue();" value="<%=extra_pay %>" name="extra_pay" style="width:60px;height:30px;display:inlin-block;margin:2px;"maxlength="3">%<br>
      - 임금지급일:매월(매주 또는 매일)
      <input type="text" id="payday" onkeyup="setValue();" value="<%=payday %>" name="payday" style="width:30px;height:30px;display:inline-block;" maxlength="2">일(휴일의 경우는 전일 지급)<br>
      - 지급방법:근로자에게 직접지급
      <input type="radio" id="for_worker" name="payfor" value="1" style="text-align:center">, 근로자 명의 예금통장에 입금
      <input type="radio" id="for_account" name="payfor" value="2" style="text-align:center" checked></div><br><br>
      <div class="col-sm-12" style="margin-top:10px;">
      6. 연차유급휴가: 통상근로자의 근로시간에 비례하여 연차유급휴가 부여</div><br><br>
      <div class="col-sm-12" style="margin-top:10px;">
      7. 사회보험 적용여부(해당란에 체크)<br>
      <input type="checkbox" name="em_insurance" id="em_insurance" value="1"><label for="employment_insurance">고용보험</label>
      <input type="checkbox" name="ac_insurance" id="ac_insurance" value="1"><label for="accident_insurance">산재보험</label>
      <input type="checkbox" name="pension" id="pension" value="1"><label for="national_pension">국민연금</label>
      <input type="checkbox" name="hlt_insurance" id="hlt_insurance" value="1"><label for="health_insurance">건강보험</label></div><br><br>
      <div class="col-sm-12">
      8. 근로계약서 교부<br>- 사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자의 교부요구와 관계없이 근로자에게 교부함(근로기준법 제 17조 이행)<br><br>
      9. 기타<br>- 이 계약에 정함이 없는 사항은 근로기준법령에 의함<br><br>
      </div></br>
      <div class="col-sm-12" style="text-align:right">
      
      <canvas class="sign-canvas" id="sign-canvas" name="sign-canvas" style="float:left;">서명칸</canvas>
      <input type="hidden" id="canvas" value="<%=canvas %>" name="canvas">
      
      <input type="text" id="contract_year" onkeyup="setValue();" value="<%=contract_year %>" name="contract_year" style="width:60px;height:30px;display:inline-block;"maxlength="4">년
      <input type="text" id="contract_month" onkeyup="setValue();" value="<%=contract_month %>" name="contract_month" style="width:30px;height:30px;display:inline-block;"maxlength="2">월
      <input type="text" id="contract_day" onkeyup="setValue();" value="<%=contract_day %>" name="contract_day" style="width:30px;height:30px;display:inline-block;"maxlength="2">일<br><br>(사업주) 사업체명:
      <input type="text" id="company_name" onkeyup="setValue();" value="<%=company_name %>" name="company_name" style="width:150px;height:30px;display:inline-block;"maxlength="20">(전화:
      <input type="text" id="company_num" onkeyup="setValue();" value="<%=company_num %>" name="company_num" style="width:120px;height:30px;display:inline-block;"maxlength="20">)<br>주 소:
      <input type="text" id="company_address" onkeyup="setValue();" value="<%=company_address %>" name="company_address" style="width:250px;height:30px;display:inline-block;"maxlength="40"><br>대 표 자:
      <input type="text" id="admin_name" onkeyup="setValue();" value="<%=admin_name %>" name="admin_name" style="width:80px;height:30px;display:inline-block;"maxlength="7"><br>(근로자) 주 소:
      <input type="text" id="user_address" onkeyup="setValue();" value="<%=user_address %>" name="user_address" style="width:250px;height:30px;display:inline-block;"maxlength="40"><br>연 락 처:
      <input type="text" id="user_num" onkeyup="setValue();" value="<%=user_num %>" name="user_num" style="width:120px;height:30px;display:inline-block;"maxlength="20"><br>성 명:
      <input type="text" id="user_name" onkeyup="setValue();" value="<%=user_name %>" name="user_name" style="width:80px;height:30px;display:inline-block;"maxlength="7">
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
      
      if(document.getElementById("admin_id").value=="null") document.getElementById("admin_id").value="";
      if(document.getElementById("user_id").value=="null") document.getElementById("user_id").value="";
      if(document.getElementById("start_year").value=="null") document.getElementById("start_year").value="";
      if(document.getElementById("start_month").value=="null") document.getElementById("start_month").value="";
      if(document.getElementById("start_day").value=="null") document.getElementById("start_day").value="";
      if(document.getElementById("end_year").value=="null") document.getElementById("end_year").value="";
      if(document.getElementById("end_month").value=="null") document.getElementById("end_month").value="";
      if(document.getElementById("end_day").value=="null") document.getElementById("end_day").value="";
      if(document.getElementById("work_place").value=="null") document.getElementById("work_place").value="";
      if(document.getElementById("content").value=="null") document.getElementById("content").value="";
      
      if(document.getElementById("work_day").value=="null") document.getElementById("work_day").value="";
      if(document.getElementById("work_day_2").value=="null") document.getElementById("work_day_2").value="";
      if(document.getElementById("work_day_3").value=="null") document.getElementById("work_day_3").value="";
      if(document.getElementById("work_day_4").value=="null") document.getElementById("work_day_4").value="";
      if(document.getElementById("work_day_5").value=="null") document.getElementById("work_day_5").value="";
      if(document.getElementById("work_day_6").value=="null") document.getElementById("work_day_6").value="";

      if(document.getElementById("work_time").value=="null") document.getElementById("work_time").value="";
      if(document.getElementById("work_time_2").value=="null") document.getElementById("work_time_2").value="";
      if(document.getElementById("work_time_3").value=="null") document.getElementById("work_time_3").value="";
      if(document.getElementById("work_time_4").value=="null") document.getElementById("work_time_4").value="";
      if(document.getElementById("work_time_5").value=="null") document.getElementById("work_time_5").value="";
      if(document.getElementById("work_time_6").value=="null") document.getElementById("work_time_6").value="";

      if(document.getElementById("start_hour").value=="null") document.getElementById("start_hour").value="";
      if(document.getElementById("start_hour_2").value=="null") document.getElementById("start_hour_2").value="";
      if(document.getElementById("start_hour_3").value=="null") document.getElementById("start_hour_3").value="";
      if(document.getElementById("start_hour_4").value=="null") document.getElementById("start_hour_4").value="";
      if(document.getElementById("start_hour_5").value=="null") document.getElementById("start_hour_5").value="";
      if(document.getElementById("start_hour_6").value=="null") document.getElementById("start_hour_6").value="";

      if(document.getElementById("start_min").value=="null") document.getElementById("start_min").value="";
      if(document.getElementById("start_min_2").value=="null") document.getElementById("start_min_2").value="";
      if(document.getElementById("start_min_3").value=="null") document.getElementById("start_min_3").value="";
      if(document.getElementById("start_min_4").value=="null") document.getElementById("start_min_4").value="";
      if(document.getElementById("start_min_5").value=="null") document.getElementById("start_min_5").value="";
      if(document.getElementById("start_min_6").value=="null") document.getElementById("start_min_6").value="";
      
      if(document.getElementById("end_hour").value=="null") document.getElementById("end_hour").value="";
      if(document.getElementById("end_hour_2").value=="null") document.getElementById("end_hour_2").value="";
      if(document.getElementById("end_hour_3").value=="null") document.getElementById("end_hour_3").value="";
      if(document.getElementById("end_hour_4").value=="null") document.getElementById("end_hour_4").value="";
      if(document.getElementById("end_hour_5").value=="null") document.getElementById("end_hour_5").value="";
      if(document.getElementById("end_hour_6").value=="null") document.getElementById("end_hour_6").value="";

      if(document.getElementById("end_min").value=="null") document.getElementById("end_min").value="";
      if(document.getElementById("end_min_2").value=="null") document.getElementById("end_min_2").value="";
      if(document.getElementById("end_min_3").value=="null") document.getElementById("end_min_3").value="";
      if(document.getElementById("end_min_4").value=="null") document.getElementById("end_min_4").value="";
      if(document.getElementById("end_min_5").value=="null") document.getElementById("end_min_5").value="";
      if(document.getElementById("end_min_6").value=="null") document.getElementById("end_min_6").value="";
      
      if(document.getElementById("b_start_hour").value=="null") document.getElementById("b_start_hour").value="";
      if(document.getElementById("b_start_hour_2").value=="null") document.getElementById("b_start_hour_2").value="";
      if(document.getElementById("b_start_hour_3").value=="null") document.getElementById("b_start_hour_3").value="";
      if(document.getElementById("b_start_hour_4").value=="null") document.getElementById("b_start_hour_4").value="";
      if(document.getElementById("b_start_hour_5").value=="null") document.getElementById("b_start_hour_5").value="";
      if(document.getElementById("b_start_hour_6").value=="null") document.getElementById("b_start_hour_6").value="";

      if(document.getElementById("b_start_min").value=="null") document.getElementById("b_start_min").value="";
      if(document.getElementById("b_start_min_2").value=="null") document.getElementById("b_start_min_2").value="";
      if(document.getElementById("b_start_min_3").value=="null") document.getElementById("b_start_min_3").value="";
      if(document.getElementById("b_start_min_4").value=="null") document.getElementById("b_start_min_4").value="";
      if(document.getElementById("b_start_min_5").value=="null") document.getElementById("b_start_min_5").value="";
      if(document.getElementById("b_start_min_6").value=="null") document.getElementById("b_start_min_6").value="";
      
      if(document.getElementById("b_end_hour").value=="null") document.getElementById("b_end_hour").value="";
      if(document.getElementById("b_end_hour_2").value=="null") document.getElementById("b_end_hour_2").value="";
      if(document.getElementById("b_end_hour_3").value=="null") document.getElementById("b_end_hour_3").value="";
      if(document.getElementById("b_end_hour_4").value=="null") document.getElementById("b_end_hour_4").value="";
      if(document.getElementById("b_end_hour_5").value=="null") document.getElementById("b_end_hour_5").value="";
      if(document.getElementById("b_end_hour_6").value=="null") document.getElementById("b_end_hour_6").value="";

      if(document.getElementById("b_end_min").value=="null") document.getElementById("b_end_min").value="";
      if(document.getElementById("b_end_min_2").value=="null") document.getElementById("b_end_min_2").value="";
      if(document.getElementById("b_end_min_3").value=="null") document.getElementById("b_end_min_3").value="";
      if(document.getElementById("b_end_min_4").value=="null") document.getElementById("b_end_min_4").value="";
      if(document.getElementById("b_end_min_5").value=="null") document.getElementById("b_end_min_5").value="";
      if(document.getElementById("b_end_min_6").value=="null") document.getElementById("b_end_min_6").value="";

      if(document.getElementById("pay").value=="null") document.getElementById("pay").value="";
      if(document.getElementById("bonus").value=="null") document.getElementById("bonus").value="";
      if(document.getElementById("benefit_1").value=="null") document.getElementById("benefit_1").value="";
      if(document.getElementById("extra_pay").value=="null") document.getElementById("extra_pay").value="";
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
      if(value==true) {
         bef1.readOnly = false;
      }
      else if(value==false) {
         bef1.readOnly = true;
         bef1.value = '';
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
      data = document.getElementById("canvas");
      data.value = canVas.toDataURL();

      <%-- test ver code--%>
      admin_id = document.getElementById("admin_id");
      temp = admin_id.value;
      console.log(admin_id.value + " / " + temp);
      admin_id.value = temp;

      user_id = document.getElementById("user_id");
      temp = user_id.value;
      console.log(user_id.value + " / " + temp);
      user_id.value = temp;
      
      
      
      
      if (document.frm.admin_id.value == ""
            || document.frm.user_id.value == ""
            || document.frm.start_year.value == ""
            || document.frm.start_month.value == ""
            || document.frm.start_day.value == ""
            || document.frm.end_year.value == ""
            || document.frm.end_month.value == ""
            || document.frm.end_day.value == ""
            || document.frm.work_place.value == ""
            || document.frm.content.value == ""
            || document.frm.work_day.value == ""
            || document.frm.start_hour.value == ""
            || document.frm.start_min.value == ""
            || document.frm.end_hour.value == ""
            || document.frm.end_min.value == ""
            || document.frm.b_start_hour.value == ""
            || document.frm.b_start_min.value == ""
            || document.frm.b_end_hour.value == ""
            || document.frm.b_end_min.value == ""
            || document.frm.pay.value == ""
            || document.frm.payday.value == ""
            || document.frm.contract_year.value == ""
            || document.frm.contract_month.value == ""
            || document.frm.contract_day.value == ""
            || document.frm.company_name.value == ""
            || document.frm.extra_pay.value == ""
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
         else if (document.frm.user_id.value == "") {
            user_id = document.getElementById("user_id");
            console.log(user_id);
            alert("근로자가 비었습니다.");
         }
         else if (document.frm.start_year.value == ""
               || document.frm.start_month.value == ""
               || document.frm.start_day.value == ""
               || document.frm.end_year.value == ""
               || document.frm.end_month.value == ""
               || document.frm.end_day.value == "") {
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
            alert("계약기간이 비어있습니다.");
         }
         else if (document.frm.work_place.value == "") {
            work_place = document.getElementById("work_place");
            console.log(work_place);
            alert("근무장소가 비었습니다.");
         }
         else if (document.frm.content.value == "") {
            content = document.getElementById("content");
            console.log(content);
            alert("업무내용이 비었습니다.");
         }
         else if (document.frm.work_day.value == "") {
            work_day = document.getElementById("work_day");
            console.log(work_day);
            alert("필수 근로일이  비었습니다.");
         }
         
         else if (document.frm.work_time.value == ""
               || document.frm.start_hour.value == ""
               || document.frm.start_min.value == ""
               || document.frm.end_hour.value == ""
               || document.frm.end_min.value == "") {
            work_time = document.getElementById("work_time");
            start_hour = document
                  .getElementById("start_hour");
            start_min = document.getElementById("start_min");
            end_hour = document.getElementById("end_hour");
            end_min = document.getElementById("end_min");
            console.log(work_time);
            console.log(start_hour);
            console.log(start_min);
            console.log(end_hour);
            console.log(end_min);
            alert("필수 근로시간이  비었습니다.");
         }

         else if (document.frm.b_start_hour.value == ""
               || document.frm.b_start_min.value == ""
               || document.frm.b_end_hour.value == ""
               || document.frm.b_end_min.value == "") {
            b_start_hour = document
                  .getElementById("b_start_hour");
            b_start_min = document
                  .getElementById("b_start_min");
            b_end_hour = document.getElementById("b_end_hour");
            b_end_min = document.getElementById("b_end_min");
            console.log(b_start_hour);
            console.log(b_start_min);
            console.log(b_end_hour);
            console.log(b_end_min);
            alert("필수 휴게시간이  비었습니다.");
         }

         else if (document.frm.pay.value == "") {
            pay_money = document.getElementById("pay");
            console.log(pay);
            alert("임금이 비었습니다.");
         }
         /* if(document.frm.bonus.value=="") {
            bonus = document.getElementById("bonus");
            console.log(bonus);
            bonus.value="";
         } */
         else if (document.frm.extra_pay.value == "") {
            extra_pay = document.getElementById("extra_pay");
            console.log(extra_pay);
            alert("가산임금률이 비었습니다.");
         }

         else if (document.frm.payday.value == "") {
            payday = document.getElementById("payday");
            console.log(payday);
            alert("지급일이 비었습니다.");
         }
         else if (document.frm.contract_year.value == ""
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
         else if (document.frm.company_name.value == "") {
            company_name = document.getElementById("company_name");
            console.log(company_name);
            alert("회사명이 비었습니다.");
         }
         else if (document.frm.company_num.value == "") {
            company_num = document.getElementById("company_num");
            console.log(company_num);
            alert("회사전화번호가 비었습니다.");
         }
         else if (document.frm.company_address.value == "") {
            company_address = document.getElementById("company_address");
            console.log(company_address);
            alert("회사주소가 비었습니다.");
         }
         else if (document.frm.admin_name.value == "") {
            admin_name = document.getElementById("admin_name");
            console.log(admin_name);
            alert("대표자가 비었습니다.");
         }
         else if (document.frm.user_address.value == "") {
            user_address = document.getElementById("user_address");
            console.log(user_address);
            alert("근로자 주소가 비었습니다.");
         }
         else if (document.frm.user_num.value == "") {
            user_num = document.getElementById("user_num");
            console.log(user_num);
            alert("근로자 전화번호가 비었습니다.");
         }
         else if (document.frm.user_name.value == "") {
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
   
   function setValue(value)
      {
         obj = document.getElementsByName(value);
         obj.value=value;
      }
   
   
</script>