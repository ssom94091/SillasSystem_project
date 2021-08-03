<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>직원관리 페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
<link rel="stylesheet" href="/css/silla/test.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container">

		<table class="table table-hover table table-striped">
			<tr>
				<th>No.</th>
				<th>계약서 목록</th>
				<th>기능</th>
			</tr>
			<tr>
				<th>1</th>
				<th>류지원의 근로계약서</th>
				<th>
					<button type="button" class="navyBtn" onClick="location.href='/sub/contract/view.do'">조회</button>
					<button type="button" class="navyBtn" >삭제</button>
			</th>
			</tr>
</body>
</html>