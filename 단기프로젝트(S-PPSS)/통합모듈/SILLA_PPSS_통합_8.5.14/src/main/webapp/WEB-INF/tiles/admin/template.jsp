<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신라 사원관리 시스템</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<link rel="stylesheet" href="/css/silla/admin.css">  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Black+Han+Sans&family=Staatliches&display=swap" rel="stylesheet">
<style>
 html,
      body {
        width: 100%;
        height: 100%;
        
      }
      .container {
        width: 100%;
        height: 100%;
        background: white;
      }
      input{font-weight:bold;
		text-align:center;}
input:read-only {background-color: #FAFAFA;} 
      
      
</style>



</head>

<body>
<div id="wrapper">
	<header id="header">
		<tiles:insertAttribute name="head" ignore="true" />
	</header>
	
	<main id="main" style="background-image:url('/images/silla/silla_template_logo.png');
	background-size:50%; background-repeat:no-repeat;background-attachment:fixed; min-height: 70vh;">
		<tiles:insertAttribute name="body" ignore="true"/>
	</main>
	
	<footer id="footer" style="min-height:30vh; position: relative;">
		<tiles:insertAttribute name="foot" ignore="true"/>
	</footer>

</div>

</body>
</html>