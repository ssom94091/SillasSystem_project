<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<%
// request 객체로부터 파라미터를 가져옴.
	String admin_id = request.getParameter("admin_id");
	String user_id = request.getParameter("user_id");
	System.out.println(admin_id);
	System.out.println(user_id);
%>