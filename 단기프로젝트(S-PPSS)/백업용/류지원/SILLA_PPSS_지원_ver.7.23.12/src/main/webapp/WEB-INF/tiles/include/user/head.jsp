<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div style="background:#f7f7f7;text-align:right">
	<c:if test="${loginUser != null }">
		<a href="/user/logout.do">로그아웃</a>
		<a href="/user/mypage.do">마이페이지</a>	
	</c:if>
	<c:if test="${loginUser == null }">
		<a href="/user/login.do">로그인</a>
		<a href="/user/join.do">회원가입</a>	
	</c:if>


</div>