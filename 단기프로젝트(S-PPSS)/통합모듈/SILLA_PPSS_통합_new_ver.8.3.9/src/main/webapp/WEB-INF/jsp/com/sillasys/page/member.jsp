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
                    </div>
                   <div class="container">
                   <!-- 카드 리스트 부분 -->
						<div class="row">
							
							<c:forEach items="${contentList}" var="contentList" varStatus="status">
								<div class="col-3" style="margin-top:30px; border:1px;">
									<div class="card">
												<div class="card-header"><b><c:out value="${contentList.memberPk}"/></b></div>
											<img src="/images/silla/profile_basic.png"  style="min-width:200px;min-height:200px;max-width:150px;max-height:150px"/>
											<div class="card-body">
												<h5 class="card-title"><c:out value="${contentList.memberName}"/></h5>
													<hr>
													<p class="card-text" style="font-size:small;">
													<b>나이  </b> <c:out value="${contentList.memberEmail}"/></p>
													<b>주민등록번호     </b> <c:out value="${contentList.memberResnumFront}"/>-<c:out value="${list[status.index]}"/><br>
													<b>이메일  </b> <c:out value="${contentList.memberEmail}"/></p>
													<hr>
													<p class="card-text" style="font-size:small;">
													<b>입사연도 - </b><c:out value="${contentList.memberEYear}"/> <br>
													<b>직급 - </b><c:out value="${contentList.memberPosition}"/> <br>
													<b>부서 - </b><c:out value="${contentList.memberDepartment}"/> <br>
													</p>
												<div style="text-align:center;">
													<a href="#" class="btn btn-success" style="margin:0, auto;">보기</a>
													<a href="#" class="btn btn-danger" style="margin-left:10px;">삭제</a>
												</div>
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