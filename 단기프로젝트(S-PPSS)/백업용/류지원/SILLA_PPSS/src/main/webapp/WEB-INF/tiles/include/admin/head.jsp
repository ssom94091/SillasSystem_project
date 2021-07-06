<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<div style="background:#f7f7f7;text-align:right">
	<c:if test="${loginAdmin != null }">
		<a href="/admin/logout.do">로그아웃</a>	
	</c:if>
	<c:if test="${loginAdmin == null }">
		<a href="/admin/login.do">로그인</a>
		<a href="/admin/join.do">회원가입</a>	
	</c:if>
</div>
<h5 style= "text-align:right">(관리자용)</h5>

