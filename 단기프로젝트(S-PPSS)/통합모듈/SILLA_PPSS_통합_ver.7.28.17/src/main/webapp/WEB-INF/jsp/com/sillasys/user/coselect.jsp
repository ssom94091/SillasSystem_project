<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container" style="text-align: center">
	<div class="row">
		<div class="col-sm-12" style="text-align: left; margin-top: 20px;">
			<input type="text" id="search" name="search" maxlength="13"
				style="width: 45%"> <input type="button" value="검색"
				onClick="searchF();">
		</div>
		<div class="col-sm-12" style="margin-top: 20px;">
			<iframe style="width: 100%; height: 100vh; padding: 20px;" id="frame"
				name="frame" src="../common/colist.do;"></iframe>
		</div>
		<div class="col-sm-12">
		
			<form action="/user/coselect.do" method="post" id="frm" name="frm">
				<input type="submit" value="선택" style="float: right">
				<input type="hidden" id="company_name" name="company_name">
				<input type="hidden" id="user_id" name="user_id">
			</form>
			
		</div>
	</div>
</div>

<script>
	function searchF() {
		frame = document.getElementById("frame");
		value = document.getElementById("search").value;
		console.log(value);
		console.log(frame);
		frame.contentWindow.setSearch(value);
	}
	
	function setValue(value) {
		index = document.getElementById("company_name");
		index.value = value;
		console.log("coselect value : "+index);
	}
</script>