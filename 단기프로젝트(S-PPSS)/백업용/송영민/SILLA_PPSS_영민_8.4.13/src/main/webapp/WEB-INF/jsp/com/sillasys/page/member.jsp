<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 <div class="container-fluid p-0" id="test">
            <!-- About-->
            <section class="resume-section" id="home">
                <div class="resume-section-content">
                 
                    <div class="subheading mb-5">
                        		 <h4><span class="text-primary">Member_</span></h4>
                    </div>
                   <div class="container">
						<div class="row">
						<!--  -->
						<div class="col-sm-12">
				<p style="float:left; margin-left:30px; display:inline-block;">검색된 레코드 수 : <c:out value="${contractSize}"/>건</p>
			</div>
					<div class="col-sm-12" style="text-align:center;">
					
			<form  action="/contract/list.do" method="post">
					Type
						<select id="search_type" name="search_type" style="height: 100%;">
   							<option value="1">이름</option>
   							<option value="2">사원번호</option>
						</select>
      					<input class="form-control" type="text"  name="searchType" id="searchType" onsubmit="searchFn();" style="min-width:200px; max-width:400px; width: 20vw;display:inline-block;">
						<button class="btn btn-primary" type="submit">검색</button>
			</form>
			</div>
			
			 <!-- 카드 리스트 부분 -->
							<c:forEach items="${contentList}" var="contentList" varStatus="status">
								<div class="col-3" style="margin-top:40px; border:1px;">
									<div class="card">
												<div class="card-header" style="background-color: #c46200;"><b> <div style="float:left; color:black;"><c:out value="${contentList.memberName}"/></b></div><div style="float:right; font-size:11px; color:white;"><c:out value="${contentList.memberPk}"/></div></div>
											<div style="margin-top:20px; text-align: center;"><img src="/images/silla/profile_basic.png"  style="margin:auto,auto; min-width:150px;min-height:150px;max-width:150px;max-height:150px"/></div>
											<div class="card-body">
													<hr>
													<p class="card-text" style="font-size:small;">
													<b>나이  </b> <c:out value="${contentList.memberAge}"/><br>
													<b>주민등록번호     </b> <c:out value="${contentList.memberResnumFront}"/>-<c:out value="${list[status.index]}"/><br>
													<b>이메일  </b> <c:out value="${contentList.memberEmail}"/></p>
													<hr>
													<p class="card-text" style="font-size:small;">
													<b>입사연도 - </b><c:out value="${contentList.memberEYear}"/> <br>
													<b>직급 - </b><c:out value="${contentList.memberPosition}"/> <br>
													<b>부서 - </b><c:out value="${contentList.memberDepartment}"/> <br>
													</p>
												<div style="text-align:center;">
													<a href="member/profile.do" class="btn btn-success" style="margin:0, auto;">보기</a>
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