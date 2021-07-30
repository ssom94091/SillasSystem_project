<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신라 사원관리 시스템</title>
 		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="/js/scripts.js"></script>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>신라 전자관리시스템</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../css/silla/styles.css" rel="stylesheet" />
</head>
<body id="page-top">

<div id="wrapper">
	<header id="header">
		<tiles:insertAttribute name="head" ignore="true" />
	</header>
	<!--사이드 메뉴부분-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
                <span class="d-block d-lg-none">S-PPSS</span>
                <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="/images/silla/profile_basic.png" alt="..." /></span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
             <div style="background:#000; font-color:#fff; color: #fff;">
            	<a class="a_tag" href="/page/main.do">Home</a>
				<c:if test="${loginAdmin != null }">
				<a class="a_tag" href="/admin/logout.do" style="margin-left:10px;">Logout</a>	
				</c:if>
				<h5 style= "font-color: #fff; margin-top:3px;">(관리자용)</h5>
			</div>
    			
            
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/page/main.do">HOME</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/page/member.do">직원관리</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contract">계약서관리</a></li>
                </ul>
            </div>
        </nav>
        <!-- 사이드메뉴 끝  -->
	<main id="main">
		<tiles:insertAttribute name="body" ignore="true"/>
	</main>
	
	<footer id="com_footer">
		<tiles:insertAttribute name="foot" ignore="true"/>
	</footer>
	
	
</div>



</body>
</html>