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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.8.0.min.js"></script>


<style>
      html,
      body {
        width: 100vw;
        height: 100vh;
      }
      .container {
        width: 100vw;
        height: 100vh;
      }
    </style>


</head>
<body>

<div id="wrapper">
	<header id="header">
		<tiles:insertAttribute name="head" ignore="true" />
	</header>
	
	<main id="main">
		<tiles:insertAttribute name="body" ignore="true"/>
	</main>
	
	<footer id="ec_footer">
		<tiles:insertAttribute name="foot" ignore="true"/>
	</footer>
	
	
</div>



</body>
</html>