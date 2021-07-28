<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
.p {

}

</style>
<script type="text/javascript">
var regex = RegExp(/^\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/);


$(function() {
   var btn1=0;  //버튼1 checked
   var btn2=1;  //버튼2 checked
   /*버튼1의 클릭 이벤트*/

   $("#btn1_img").click(function(){
      if(btn1==1){
         $("#btn1_img").attr("src","/images/silla/sub_btn1_off.png");
         $("#btn2_img").attr("src","/images/silla/sub_btn2_off.png");
         btn1=0;
         btn2=0;
         $("#iframe_set").attr("src","../contract/content.do");
      }
      else{
      $("#btn1_img").attr("src","/images/silla/sub_btn1_click.png");
      $("#btn2_img").attr("src","/images/silla/sub_btn2_off.png");
      btn1=1;
      btn2=0;
      location.href = "list.do";
      }
   });    
   /*버튼2의 클릭 이벤트*/
   $("#btn2_img").click(function(){
      
      
      if(btn2==1){
         $("#btn1_img").attr("src","/images/silla/sub_btn1_off.png");
         $("#btn2_img").attr("src","/images/silla/sub_btn2_off.png");
         btn1=0;
         btn2=0;
         $("#iframe_set").attr("src","../contract/content.do");
         
      }
      else{
         $("#btn1_img").attr("src","/images/silla/sub_btn1_off.png");
         $("#btn2_img").attr("src","/images/silla/sub_btn2_click.png");
         btn1=0;
         btn2=1;
         location.href = "contractList.do";
      }
      
   });
   
   /*버튼1의 마우스오버 이벤트*/
   $("#btn1_img").mouseover(function(){
      if(btn1==0)
         $("#btn1_img").attr("src","/images/silla/sub_btn1_on.png");
   });
   
   /*버튼2의 마우스오버 이벤트*/
   $("#btn2_img").mouseover(function(){
      if(btn2==0)
         $("#btn2_img").attr("src","/images/silla/sub_btn2_on.png");
   });
   
   /*버튼1의 마우스아웃 이벤트*/
   $("#btn1_img").mouseout(function(){
      if(btn1==0)
         $("#btn1_img").attr("src","/images/silla/sub_btn1_off.png");
   });
   /*버튼2의 마우스아웃 이벤트*/
   $("#btn2_img").mouseout(function(){
      if(btn2==0)
         $("#btn2_img").attr("src","/images/silla/sub_btn2_off.png");
   });
   
});
   
</script>

<div class="container" >
	<div class="row">
		<!-- 1번구역 -->
		<div class="col-xs-12 col-sm-12"
			style="margin: 0, auto; width: 100%; text-align: center;">
			<!-- btn1(목록보기) 버튼 -->
			<button type="button" class="btn_image" id="img_btn1"
				style="padding: 0; border: none; background: none; width: 170px; cursor: pointer;">
				<img id=btn1_img src="/images/silla/sub_btn1_off.png"
					style="max-width: 100%; height: auto; margin: 0, auto;">
			</button>
			<!-- btn2(양식보기) 버튼 -->
			<button type="button" class="btn_image" id="img_btn2"
				style="padding: 0; border: none; background: none; width: 170px; margin-left: 30px; cursor: pointer;">
				<img id=btn2_img src="/images/silla/sub_btn2_click.png"
					style="max-width: 100%; height: auto; margin: 0, auto;">
			</button>
		</div>


		<h3 style="margin-left: 20px;">직원 목록</h3>
		<div class="container">
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