<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <div class="container-fluid p-0">
            <!-- About-->
            <section class="resume-section" id="home">
                <div class="resume-section-content">
                 
                    <div class="subheading mb-5">
                        		 <h4><span class="text-primary">Member_</span></h4>
                        <a href="http://www.sillasystem.com"> 신라시스템</a>
                    </div>
                   <div class="container">
                   <!-- 카드 리스트 부분 -->
			<div class="row">
				<c:forEach items="${contentList}" var="contentList">
					<div class="col-3" style="margin-top:30px;">
						<div class="card">
							<div class="card-header"><b>No. <c:out value="${contentList.contractPk}"/></b></div>
							<img src="/images/silla/profile_basic.png"  style="min-width:200px;min-height:200px;"/>
							<div class="card-body">
								<h5 class="card-title">이름 : <c:out value="${contentList.userName}"/></h5>
								
								<p class="card-text" style="font-size:small;">
								<b>생년월일   :  </b> <c:out value="${contentList.userResnumFront}"/><br>
								<b>이메일 :</b> <c:out value="${contentList.userEmail}"/></p>
								<hr>
								<p class="card-text" style="font-size:small;">
								<b>작성일 : </b><c:out value="${contentList.modifyDate}"/> <br>
								<b>유형 : </b> <c:out value="${contentList.contractType}"/><br>
								<b>업무내용 </b><br>　<c:out value="${contentList.content}"/><br>
								
								</p>
								
								<a href="#" class="btn btn-primary" style="margin:0, auto;">보기</a>
								<a href="#" class="btn btn-danger" style="margin-left:10px;">삭제</a>
							</div>
						</div>
					</div>
			</c:forEach>
		</div>
	</div>
                
                </div>
            </section>
        </div>
         <hr class="m-0" />