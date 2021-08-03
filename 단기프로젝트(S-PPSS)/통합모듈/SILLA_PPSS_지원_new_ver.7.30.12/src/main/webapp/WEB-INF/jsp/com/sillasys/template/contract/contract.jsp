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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
<link rel="stylesheet" href="/css/silla/test.css">  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>

<!-- iframe 사이즈 -->
<style>
	#my_frame { width: 1000px; height: 700px; }
</style>

<!-- iframe 페이지 이동 함수 -->
<script>	
	function open_in_frame(url) {
		$('#my_frame').attr('src', url);
	}
</script>

<body>
	<div>
		<button onclick='open_in_frame("http://localhost:8080/template/contract/contlist.do")'>양식보관함</button>
		<button onclick='open_in_frame("http://localhost:8080/template/contract/form.do")'>계약서목록</button>
	</div>
	<iframe id='my_frame'></iframe>
</body>
</html>