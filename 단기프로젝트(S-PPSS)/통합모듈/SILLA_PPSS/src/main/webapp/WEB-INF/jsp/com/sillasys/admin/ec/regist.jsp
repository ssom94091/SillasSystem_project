<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

       <div class="col-md-offset-2 col-md-8" style="border:6px solid;margin:0 auto;padding:10pt 0;text-align:center;">
          <input type="radio" id="store" name="filter" value="store" checked style="text-align:center;">
          <label for="store" style="display:inline-block;text-align:center;width:20%;">보관함</label>
          <input type="radio" id="form" name="filter" value="form" style="text-align:center;">
          <label for="form" style="display:inline-block;text-align:center;width:20%;">양식</label>
       <div class="conbox con1">보관함 내용</div>
       <div class="conbox con2">양식 내용</div>
       </div>

    <style>
       input[type="radio"] {display:none;}
       input[type="radio"] + label {display:inline-block;padding:20px:background:#ccc;color:#999;font-size:14px;cursor;pointer;}
       input[type="radio"]:checked + label {background:#aaa;color:#000;}
       
       .conbox {width:70%;height:600px;background:#aaa;margin:0 auto;display:none;}
       input[id="store"]:checked ~ .con1 {display:block;}
       input[id="form"]:checked ~ .con2 {display:block;}
    </style>
    
    <div class="col-md-12">
	<div class="col-md-6" style="margin: 10pt auto;">
		<form action="/admin/ec/regist.do" method="post">
			<!--  -->

			<div class="form-group">
				<label>임금</label>
				<select name="pay">
				<option value="year">연봉</option>
				<option value="month">월급</option>
				<option value="week">주급</option>
				</select>
				<label for="bill">급여</label> <input type="text" class="form-control"
					id="bill" name="bill" style="width:40%;display:inline-block;">
			</div>
			<div class="col-md-12">
				<div class="form-group">

					<label for="id">출근시간</label>
					<input type="text"
						class="form-control" id="id" name="workStartDt" style="width:20%;display:inline-block;">
					<label
						for="wED"> ~ 퇴근 시간</label>
					<input type="text" class="form-control"
						id="wED" name="workEndDt" style="width:20%;display:inline-block;">
				</div>

				<div class="form-group">
					<label for="nick">계약 기간</label>
					<input type="text" style="width:35%;display:inline-block;" 
						class="form-control" id="nick" name="contStartDt">
					<label for="phone"> ~ </label>
					<input type="text" style="width:35%;display:inline-block;"
						class="form-control" id="phone" name="contEndDt">
				</div>

			</div>
			<button class="btn btn-primary">가입</button>
			<a href="/index" type="button" class="btn btn-success">취소</a>
		</form>

	</div>
</div>