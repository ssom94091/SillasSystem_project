<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
    	request.setCharacterEncoding("utf-8");
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
			<h1 style="margin:0 auto;margin-top:20pt;display:block;text-align:center">?????????????????? ?????????????????????</h1><br>
		</div>
		
		<form action="/ec/template/contract3.do" method="post" name="frm" onsubmit="return Check()">  <!-- ?????????????????? input??? ????????? ?????? ?????????. -->
				
		<div class="col-sm-12">
		<input type="text" id="admin_id" onkeyup="setValue();" value="<%=admin_id %>" name="admin_id" style="width:150px; height:30px;display: inline-block;">
		(?????? "?????????"??? ???)???(???)
		<input type="text" id="user_id" onkeyup="setValue();" value="<%=user_id %>" name="user_id" style="width:80px; height:30px;display: inline-block;">
		(?????? "?????????"??? ???)??? ????????? ?????? ??????????????? ????????????.</div><br>
		<div class="col-sm-12" style="margin-top:10px;">
		1. ??????????????????:
		<input type="text" id="start_year" onkeyup="setValue();" value="<%=start_year%>" name="start_year" style="width:60px; height:30px;display: inline-block;" maxlength="4">
		???
		<input type="text" id="start_month" onkeyup="setValue();" value="<%=start_month %>" name="start_month" style="width:30px; height:30px;display: inline-block;" maxlength="2">
		???
		<input type="text" id="start_day" onkeyup="setValue();" value="<%=start_day %>" name="start_day" style="width:30px; height:30px;display: inline-block;" maxlength="2">
		?????????
		<input type="text" id="end_year" onkeyup="setValue();" value="<%=end_year %>" name="end_year" style="width:60px; height:30px;display: inline-block;" maxlength="4">
		???
		<input type="text" id="end_month" onkeyup="setValue();" value="<%=end_month %>" name="end_month" style="width:30px; height:30px;display: inline-block;" maxlength="2">
		???
		<input type="text" id="end_day" onkeyup="setValue();" value="<%=end_day %>" name="end_day" style="width:30px; height:30px;display: inline-block;" maxlength="2">
		?????????</div><br>
		<div class="col-sm-12" style="margin-top:10px;">
		2. ????????????:
		<input type="text" id="location" onkeyup="setValue();" value="<%=location %>" name="location" style="width:350px; height:30px;display:inline-block;"></div>
		<div class="col-sm-12" style="margin-top:10px;">
		3. ????????? ??????:
		<input type="text" id="contents" onkeyup="setValue();" value="<%=contents %>" name="contents" style="width:350px;height:30px;display:inline-block;"></div>
		<div class="col-sm-12" style="margin-top:10px;">
		4. ????????? ??? ???????????? ????????????<br></div><br><br>
		<div class="col-sm-12">
			<table class="table table-bordered">
				<tr>
					<td></td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_1" onkeyup="setValue();" value="<%=work_day_1 %>" name="work_day_1" style="width:30px;height:30px;display:inline-block;">??????</td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_2" onkeyup="setValue();" value="<%=work_day_2 %>" name="work_day_2" style="width:30px;height:30px;display:inline-block;">??????</td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_3" onkeyup="setValue();" value="<%=work_day_3 %>" name="work_day_3" style="width:30px;height:30px;display:inline-block;">??????</td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_4" onkeyup="setValue();" value="<%=work_day_4 %>" name="work_day_4" style="width:30px;height:30px;display:inline-block;">??????</td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_5" onkeyup="setValue();" value="<%=work_day_5 %>" name="work_day_5" style="width:30px;height:30px;display:inline-block;">??????</td>
					<td style="text-align:center;padding:0px;"><input type="text" id="work_day_6" onkeyup="setValue();" value="<%=work_day_6 %>" name="work_day_6" style="width:30px;height:30px;display:inline-block;">??????</td>
				</tr>
				<tr>
					<td style="text-align:center;padding:0px;">????????????</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_1" onkeyup="setValue();" value="<%=work_time_1 %>" name="work_time_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">??????</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_2" onkeyup="setValue();" value="<%=work_time_2 %>" name="work_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">??????</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_3" onkeyup="setValue();" value="<%=work_time_3 %>" name="work_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">??????</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_4" onkeyup="setValue();" value="<%=work_time_4 %>" name="work_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">??????</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_5" onkeyup="setValue();" value="<%=work_time_5 %>" name="work_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">??????</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_time_6" onkeyup="setValue();" value="<%=work_time_6 %>" name="work_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">??????</td>
				</tr>
				<tr>
					<td style="text-align:center;padding:0px;">??????</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_1" onkeyup="setValue();" value="<%=work_start_time_1 %>" name="work_start_time_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_start_min_1" value="<%=work_start_min_1 %>" name="work_start_min_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_2" onkeyup="setValue();" value="<%=work_start_time_2 %>" name="work_start_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_start_min_2" value="<%=work_start_min_2 %>" name="work_start_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_3" onkeyup="setValue();" value="<%=work_start_time_3 %>" name="work_start_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_start_min_3" value="<%=work_start_min_3 %>" name="work_start_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_4" onkeyup="setValue();" value="<%=work_start_time_4 %>" name="work_start_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_start_min_4" value="<%=work_start_min_4 %>" name="work_start_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_5" onkeyup="setValue();" value="<%=work_start_time_5 %>" name="work_start_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_start_min_5" value="<%=work_start_min_5 %>" name="work_start_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_start_time_6" onkeyup="setValue();" value="<%=work_start_time_6 %>" name="work_start_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_start_min_6" value="<%=work_start_min_6 %>" name="work_start_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
				</tr>
				<tr>
					<td style="text-align:center;padding:0px;">??????</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_1" onkeyup="setValue();" value="<%=work_end_time_1 %>" name="work_end_time_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_end_min_1" onkeyup="setValue();" value="<%=work_end_min_1 %>" name="work_end_min_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_2" onkeyup="setValue();" value="<%=work_end_time_2 %>" name="work_end_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_end_min_2" onkeyup="setValue();" value="<%=work_end_min_2 %>" name="work_end_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_3" onkeyup="setValue();" value="<%=work_end_time_3 %>" name="work_end_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_end_min_3" onkeyup="setValue();" value="<%=work_end_min_3 %>" name="work_end_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_4" onkeyup="setValue();" value="<%=work_end_time_4 %>" name="work_end_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_end_min_4" onkeyup="setValue();" value="<%=work_end_min_4 %>" name="work_end_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_5" onkeyup="setValue();" value="<%=work_end_time_5 %>" name="work_end_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_end_min_5" onkeyup="setValue();" value="<%=work_end_min_5 %>" name="work_end_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="work_end_time_6" onkeyup="setValue();" value="<%=work_end_time_6 %>" name="work_end_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="work_end_min_6" onkeyup="setValue();" value="<%=work_end_min_6 %>" name="work_end_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
				</tr>
				<tr>
					<td style="text-align:center;padding:auto auto;">?????? ??????</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_1" onkeyup="setValue();" value="<%=break_start_time_1 %>" name="break_start_time_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_start_min_1" onkeyup="setValue();" value="<%=break_start_min_1 %>" name="break_start_min_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">???<br>~
					<input type="text" id="break_end_time_1" onkeyup="setValue();" value="<%=break_end_time_1 %>" name="break_end_time_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_end_min_1" onkeyup="setValue();" value="<%=break_end_min_1 %>" name="break_end_min_1" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_2" onkeyup="setValue();" value="<%=break_start_time_2 %>" name="break_start_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_start_min_2" onkeyup="setValue();" value="<%=break_start_min_2 %>" name="break_start_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">???<br>~
					<input type="text" id="break_end_time_2" onkeyup="setValue();" value="<%=break_end_time_2 %>" name="break_end_time_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_end_min_2" onkeyup="setValue();" value="<%=break_end_min_2 %>" name="break_end_min_2" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_3" onkeyup="setValue();" value="<%=break_start_time_3 %>" name="break_start_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_start_min_3" onkeyup="setValue();" value="<%=break_start_min_3 %>" name="break_start_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">???<br>~
					<input type="text" id="break_end_time_3" onkeyup="setValue();" value="<%=break_end_time_3 %>" name="break_end_time_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_end_min_3" onkeyup="setValue();" value="<%=break_end_min_3 %>" name="break_end_min_3" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_4" onkeyup="setValue();" value="<%=break_start_time_4 %>" name="break_start_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_start_min_4" onkeyup="setValue();" value="<%=break_start_min_4 %>" name="break_start_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">???<br>~
					<input type="text" id="break_end_time_4" onkeyup="setValue();" value="<%=break_end_time_4 %>" name="break_end_time_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_end_min_4" onkeyup="setValue();" value="<%=break_end_min_4 %>" name="break_end_min_4" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_5" onkeyup="setValue();" value="<%=break_start_time_5 %>" name="break_start_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_start_min_5" onkeyup="setValue();" value="<%=break_start_min_5 %>" name="break_start_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">???<br>~
					<input type="text" id="break_end_time_5" onkeyup="setValue();" value="<%=break_end_time_5 %>" name="break_end_time_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_end_min_5" onkeyup="setValue();" value="<%=break_end_min_5 %>" name="break_end_min_5" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
					<td style="text-align:right;padding:0px;"><input type="text" id="break_start_time_6" onkeyup="setValue();" value="<%=break_start_time_6 %>" name="break_start_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_start_min_6" onkeyup="setValue();" value="<%=break_start_min_6 %>" name="break_start_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">???<br>~
					<input type="text" id="break_end_time_6" onkeyup="setValue();" value="<%=break_end_time_6 %>" name="break_end_time_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
					<input type="text" id="break_end_min_6" onkeyup="setValue();" value="<%=break_end_min_6 %>" name="break_end_min_6" style="width:30px;height:30px;display:inline-block;"maxlength="2">???</td>
			</table>
		</div>
		<div class="col-sm-12">
		??? ????????? ??????
        <select id="holiday" name="holiday" value="<%=holiday %>" style="width:40px;height:30px;display:inline-block;">
        	<option value="1">???</option>
        	<option value="2">???</option>
        	<option value="3">???</option>
        	<option value="4">???</option>
        	<option value="5">???</option>
        	<option value="6">???</option>
        	<option value="7">???</option>
        </select>??????</div><br><br>
        <div class="col-sm-12">
        5. ??????<br> - 
        <select id="pay" name="pay" value="<%=pay %>" style="width:60px;height:30px;display:inline-block;">
        	<option value="1">??????</option>
        	<option value="2">??????</option>
        	<option value="3">??????</option>
        </select> : 
        <input type="text" id="pay_money" value="<%=pay_money %>" name="pay_money" style="width:150px;height:30px;display:inline-block;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">???<br> - ?????????:??????
        <input type="radio" id="bonus_on" name="bonus_check" value="1" style="text-align:center" onclick="toggle_bonus(true);">
        <input type="text" id="bonus" value="<%=bonus %>" name="bonus" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">???, ??????
        <input type="radio" id="bonus_off" onkeyup="setValue();" name="bonus_check" value="2" style="text-align:center;margin:2px;" onclick="toggle_bonus(false);" checked><br>
        - ????????????(????????? ???):??????
		<input type="radio" id="benefit_on" name="benefit_check" value="1" style="text-align:center" onclick="toggle_benefit(true);">
		<input type="text" id="benefit" value="<%=benefit_1 %>" name="benefit_1" style="width:150px;height:30px;display:inline-block;margin:2px;" onchange="getNumber(this);"
        	onkeyup="getNumber(this);">???(????????? ??????), ??????
        <input type="radio" id="benefit_off" name="benefit_check" value="2" style="text-align:center;margin:2px;" onclick="toggle_benefit(false);"checked><br>
        - ??????????????? ?????? ???????????????:
        <input type="text" id="extra_pay" onkeyup="setValue();" value="<%=extra_pay %>" name="extra_pay" style="width:60px;height:30px;display:inlin-block;margin:2px;">%<br>
		- ???????????????:??????(?????? ?????? ??????)
		<input type="text" id="payday" onkeyup="setValue();" value="<%=payday %>" name="payday" style="width:30px;height:30px;display:inline-block;" maxlength="2">???(????????? ????????? ?????? ??????)<br>
		- ????????????:??????????????? ????????????
		<input type="radio" id="for_worker" name="payfor" value="1" style="text-align:center">, ????????? ?????? ??????????????? ??????
		<input type="radio" id="for_account" name="payfor" value="2" style="text-align:center" checked></div><br><br>
		<div class="col-sm-12" style="margin-top:10px;">
		6. ??????????????????: ?????????????????? ??????????????? ???????????? ?????????????????? ??????</div><br><br>
		<div class="col-sm-12" style="margin-top:10px;">
		7. ???????????? ????????????(???????????? ??????)<br>
		<input type="checkbox" name="employment_insurance" id="employment_insurance" value="1"><label for="employment_insurance">????????????</label>
		<input type="checkbox" name="accident_insurance" id="accident_insurance" value="1"><label for="accident_insurance">????????????</label>
		<input type="checkbox" name="national_pension" id="national_pension" value="1"><label for="national_pension">????????????</label>
		<input type="checkbox" name="health_insurance" id="health_insurance" value="1"><label for="health_insurance">????????????</label></div><br><br>
		<div class="col-sm-12">
		8. ??????????????? ??????<br>- ???????????? ??????????????? ???????????? ????????? ??? ???????????? ???????????? ???????????? ??????????????? ???????????? ??????????????? ?????????(??????????????? ??? 17??? ??????)<br><br>
		9. ??????<br>- ??? ????????? ????????? ?????? ????????? ????????????????????? ??????<br><br>
		</div></br>
		<div class="col-sm-12" style="text-align:right">
		
		<canvas class="sign-canvas" id="sign-canvas" name="sign-canvas" style="float:left;">?????????</canvas>
		<input type="hidden" id="canvas-data" value="<%=canvas_data %>" name="canvas-data">
		
		<input type="text" id="contract_year" onkeyup="setValue();" value="<%=contract_year %>" name="contract_year" style="width:60px;height:30px;display:inline-block;"maxlength="4">???
		<input type="text" id="contract_month" onkeyup="setValue();" value="<%=contract_month %>" name="contract_month" style="width:30px;height:30px;display:inline-block;"maxlength="2">???
		<input type="text" id="contract_day" onkeyup="setValue();" value="<%=contract_day %>" name="contract_day" style="width:30px;height:30px;display:inline-block;"maxlength="2">???<br><br>(?????????) ????????????:
		<input type="text" id="company_name" onkeyup="setValue();" value="<%=company_name %>" name="company_name" style="width:150px;height:30px;display:inline-block;">(??????:
		<input type="text" id="company_num" onkeyup="setValue();" value="<%=company_num %>" name="company_num" style="width:120px;height:30px;display:inline-block;">)<br>??? ???:
		<input type="text" id="company_address" onkeyup="setValue();" value="<%=company_address %>" name="company_address" style="width:250px;height:30px;display:inline-block;"><br>??? ??? ???:
		<input type="text" id="admin_name" onkeyup="setValue();" value="<%=admin_name %>" name="admin_name" style="width:80px;height:30px;display:inline-block;"><br>(?????????) ??? ???:
		<input type="text" id="user_address" onkeyup="setValue();" value="<%=user_address %>" name="user_address" style="width:250px;height:30px;display:inline-block;"><br>??? ??? ???:
		<input type="text" id="user_num" onkeyup="setValue();" value="<%=user_num %>" name="user_num" style="width:120px;height:30px;display:inline-block;"><br>??? ???:
		<input type="text" id="user_name" onkeyup="setValue();" value="<%=user_name %>" name="user_name" style="width:80px;height:30px;display:inline-block;">
		</div>
		
		<input type="submit" id="submit" value="??????"> 
		
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

      pay = document.getElementById("pay");
      console.log(pay);
      if(<%=pay%>!=null)
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
      
      if(document.getElementById("admin_id").value=="null") document.getElementById("admin_id").value="";
      if(document.getElementById("user_id").value=="null") document.getElementById("user_id").value="";
      if(document.getElementById("start_year").value=="null") document.getElementById("start_year").value="";
      if(document.getElementById("start_month").value=="null") document.getElementById("start_month").value="";
      if(document.getElementById("start_day").value=="null") document.getElementById("start_day").value="";
      if(document.getElementById("end_year").value=="null") document.getElementById("end_year").value="";
      if(document.getElementById("end_month").value=="null") document.getElementById("end_month").value="";
      if(document.getElementById("end_day").value=="null") document.getElementById("end_day").value="";
      if(document.getElementById("location").value=="null") document.getElementById("location").value="";
      if(document.getElementById("contents").value=="null") document.getElementById("contents").value="";
      
      if(document.getElementById("work_day_1").value=="null") document.getElementById("work_day_1").value="";
      if(document.getElementById("work_day_2").value=="null") document.getElementById("work_day_2").value="";
      if(document.getElementById("work_day_3").value=="null") document.getElementById("work_day_3").value="";
      if(document.getElementById("work_day_4").value=="null") document.getElementById("work_day_4").value="";
      if(document.getElementById("work_day_5").value=="null") document.getElementById("work_day_5").value="";
      if(document.getElementById("work_day_6").value=="null") document.getElementById("work_day_6").value="";

      if(document.getElementById("work_time_1").value=="null") document.getElementById("work_time_1").value="";
      if(document.getElementById("work_time_2").value=="null") document.getElementById("work_time_2").value="";
      if(document.getElementById("work_time_3").value=="null") document.getElementById("work_time_3").value="";
      if(document.getElementById("work_time_4").value=="null") document.getElementById("work_time_4").value="";
      if(document.getElementById("work_time_5").value=="null") document.getElementById("work_time_5").value="";
      if(document.getElementById("work_time_6").value=="null") document.getElementById("work_time_6").value="";

      if(document.getElementById("work_start_time_1").value=="null") document.getElementById("work_start_time_1").value="";
      if(document.getElementById("work_start_time_2").value=="null") document.getElementById("work_start_time_2").value="";
      if(document.getElementById("work_start_time_3").value=="null") document.getElementById("work_start_time_3").value="";
      if(document.getElementById("work_start_time_4").value=="null") document.getElementById("work_start_time_4").value="";
      if(document.getElementById("work_start_time_5").value=="null") document.getElementById("work_start_time_5").value="";
      if(document.getElementById("work_start_time_6").value=="null") document.getElementById("work_start_time_6").value="";

      if(document.getElementById("work_start_min_1").value=="null") document.getElementById("work_start_min_1").value="";
      if(document.getElementById("work_start_min_2").value=="null") document.getElementById("work_start_min_2").value="";
      if(document.getElementById("work_start_min_3").value=="null") document.getElementById("work_start_min_3").value="";
      if(document.getElementById("work_start_min_4").value=="null") document.getElementById("work_start_min_4").value="";
      if(document.getElementById("work_start_min_5").value=="null") document.getElementById("work_start_min_5").value="";
      if(document.getElementById("work_start_min_6").value=="null") document.getElementById("work_start_min_6").value="";
      
      if(document.getElementById("work_end_time_1").value=="null") document.getElementById("work_end_time_1").value="";
      if(document.getElementById("work_end_time_2").value=="null") document.getElementById("work_end_time_2").value="";
      if(document.getElementById("work_end_time_3").value=="null") document.getElementById("work_end_time_3").value="";
      if(document.getElementById("work_end_time_4").value=="null") document.getElementById("work_end_time_4").value="";
      if(document.getElementById("work_end_time_5").value=="null") document.getElementById("work_end_time_5").value="";
      if(document.getElementById("work_end_time_6").value=="null") document.getElementById("work_end_time_6").value="";

      if(document.getElementById("work_end_min_1").value=="null") document.getElementById("work_end_min_1").value="";
      if(document.getElementById("work_end_min_2").value=="null") document.getElementById("work_end_min_2").value="";
      if(document.getElementById("work_end_min_3").value=="null") document.getElementById("work_end_min_3").value="";
      if(document.getElementById("work_end_min_4").value=="null") document.getElementById("work_end_min_4").value="";
      if(document.getElementById("work_end_min_5").value=="null") document.getElementById("work_end_min_5").value="";
      if(document.getElementById("work_end_min_6").value=="null") document.getElementById("work_end_min_6").value="";
      
      if(document.getElementById("break_start_time_1").value=="null") document.getElementById("break_start_time_1").value="";
      if(document.getElementById("break_start_time_2").value=="null") document.getElementById("break_start_time_2").value="";
      if(document.getElementById("break_start_time_3").value=="null") document.getElementById("break_start_time_3").value="";
      if(document.getElementById("break_start_time_4").value=="null") document.getElementById("break_start_time_4").value="";
      if(document.getElementById("break_start_time_5").value=="null") document.getElementById("break_start_time_5").value="";
      if(document.getElementById("break_start_time_6").value=="null") document.getElementById("break_start_time_6").value="";

      if(document.getElementById("break_start_min_1").value=="null") document.getElementById("break_start_min_1").value="";
      if(document.getElementById("break_start_min_2").value=="null") document.getElementById("break_start_min_2").value="";
      if(document.getElementById("break_start_min_3").value=="null") document.getElementById("break_start_min_3").value="";
      if(document.getElementById("break_start_min_4").value=="null") document.getElementById("break_start_min_4").value="";
      if(document.getElementById("break_start_min_5").value=="null") document.getElementById("break_start_min_5").value="";
      if(document.getElementById("break_start_min_6").value=="null") document.getElementById("break_start_min_6").value="";
      
      if(document.getElementById("break_end_time_1").value=="null") document.getElementById("break_end_time_1").value="";
      if(document.getElementById("break_end_time_2").value=="null") document.getElementById("break_end_time_2").value="";
      if(document.getElementById("break_end_time_3").value=="null") document.getElementById("break_end_time_3").value="";
      if(document.getElementById("break_end_time_4").value=="null") document.getElementById("break_end_time_4").value="";
      if(document.getElementById("break_end_time_5").value=="null") document.getElementById("break_end_time_5").value="";
      if(document.getElementById("break_end_time_6").value=="null") document.getElementById("break_end_time_6").value="";

      if(document.getElementById("break_end_min_1").value=="null") document.getElementById("break_end_min_1").value="";
      if(document.getElementById("break_end_min_2").value=="null") document.getElementById("break_end_min_2").value="";
      if(document.getElementById("break_end_min_3").value=="null") document.getElementById("break_end_min_3").value="";
      if(document.getElementById("break_end_min_4").value=="null") document.getElementById("break_end_min_4").value="";
      if(document.getElementById("break_end_min_5").value=="null") document.getElementById("break_end_min_5").value="";
      if(document.getElementById("break_end_min_6").value=="null") document.getElementById("break_end_min_6").value="";

      if(document.getElementById("pay_money").value=="null") document.getElementById("pay_money").value="";
      if(document.getElementById("bonus").value=="null") document.getElementById("bonus").value="";
      if(document.getElementById("benefit").value=="null") document.getElementById("benefit").value="";
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
      bef1 = document.getElementById("benefit");
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
		data = document.getElementById("canvas-data");
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
				|| document.frm.location.value == ""
				|| document.frm.contents.value == ""
				|| document.frm.work_day_1.value == ""
				|| document.frm.work_start_time_1.value == ""
				|| document.frm.work_start_min_1.value == ""
				|| document.frm.work_end_time_1.value == ""
				|| document.frm.work_end_min_1.value == ""
				|| document.frm.break_start_time_1.value == ""
				|| document.frm.break_start_min_1.value == ""
				|| document.frm.break_end_time_1.value == ""
				|| document.frm.break_end_min_1.value == ""
				|| document.frm.pay_money.value == ""
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
				alert("???????????? ???????????????.");
			}
			else if (document.frm.user_id.value == "") {
				user_id = document.getElementById("user_id");
				console.log(user_id);
				alert("???????????? ???????????????.");
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
				alert("??????????????? ??????????????????.");
			}

			else if (document.frm.work_day_1.value == "") {
				work_day_1 = document.getElementById("work_day_1");
				console.log(work_day_1);
				alert("?????? ????????????  ???????????????.");
			}
			else if (document.frm.work_time_1.value == ""
					|| document.frm.work_start_time_1.value == ""
					|| document.frm.work_start_min_1.value == ""
					|| document.frm.work_end_time_1.value == ""
					|| document.frm.work_end_min_1.value == "") {
				work_time_1 = document.getElementById("work_time_1");
				work_start_time_1 = document
						.getElementById("work_start_time_1");
				work_start_min_1 = document.getElementById("work_start_min_1");
				work_end_time_1 = document.getElementById("work_end_time_1");
				work_end_min_1 = document.getElementById("work_end_min_1");
				console.log(work_time_1);
				console.log(work_start_time_1);
				console.log(work_start_min_1);
				console.log(work_end_time_1);
				console.log(work_end_min_1);
				alert("?????? ???????????????  ???????????????.");
			}

			else if (document.frm.break_start_time_1.value == ""
					|| document.frm.break_start_min_1.value == ""
					|| document.frm.break_end_time_1.value == ""
					|| document.frm.break_end_min_1.value == "") {
				break_start_time_1 = document
						.getElementById("break_start_time_1");
				break_start_min_1 = document
						.getElementById("break_start_min_1");
				break_end_time_1 = document.getElementById("break_end_time_1");
				break_end_min_1 = document.getElementById("break_end_min_1");
				console.log(break_start_time_1);
				console.log(break_start_min_1);
				console.log(break_end_time_1);
				console.log(break_end_min_1);
				alert("?????? ???????????????  ???????????????.");
			}

			else if (document.frm.pay_money.value == "") {
				pay_money = document.getElementById("pay_money");
				console.log(pay_money);
				alert("????????? ???????????????.");
			}
			/* if(document.frm.bonus.value=="") {
			   bonus = document.getElementById("bonus");
			   console.log(bonus);
			   bonus.value="";
			} */
			else if (document.frm.extra_pay.value == "") {
				extra_pay = document.getElementById("extra_pay");
				console.log(extra_pay);
				alert("?????????????????? ???????????????.");
			}

			else if (document.frm.payday.value == "") {
				payday = document.getElementById("payday");
				console.log(payday);
				alert("???????????? ???????????????.");
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
				alert("??????????????? ???????????????.");
			}
			else if (document.frm.company_name.value == "") {
				company_name = document.getElementById("company_name");
				console.log(company_name);
				alert("???????????? ???????????????.");
			}
			else if (document.frm.company_num.value == "") {
				company_num = document.getElementById("company_num");
				console.log(company_num);
				alert("????????????????????? ???????????????.");
			}
			else if (document.frm.company_address.value == "") {
				company_address = document.getElementById("company_address");
				console.log(company_address);
				alert("??????????????? ???????????????.");
			}
			else if (document.frm.admin_name.value == "") {
				admin_name = document.getElementById("admin_name");
				console.log(admin_name);
				alert("???????????? ???????????????.");
			}
			else if (document.frm.user_address.value == "") {
				user_address = document.getElementById("user_address");
				console.log(user_address);
				alert("????????? ????????? ???????????????.");
			}
			else if (document.frm.user_num.value == "") {
				user_num = document.getElementById("user_num");
				console.log(user_num);
				alert("????????? ??????????????? ???????????????.");
			}
			else if (document.frm.user_name.value == "") {
				user_name = document.getElementById("user_name");
				console.log(user_name);
				alert("?????????????????? ???????????????.");
			}
			return false;
		} else {
			alert("?????????????????? ???????????????.");
			return true;
		}
	}
	
	function setValue(value)
	   {
	      obj = document.getElementsByName(value);
	      obj.value=value;
	   }
	
	
</script>