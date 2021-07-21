<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

$(function() {
	var btn1=0;  //버튼1 checked
	var btn2=0;  //버튼2 checked
	/*버튼1의 클릭 이벤트*/

	$("#btn1_img").click(function(){
		if(btn1==1){
			$("#btn1_img").attr("src","/images/silla/main_btn1_off.png");
			$("#btn2_img").attr("src","/images/silla/main_btn2_off.png");
			btn1=0;
			btn2=0;
			$("#iframe_set").attr("src","../ec/content.do");
		}
		else{
		$("#btn1_img").attr("src","/images/silla/main_btn1_click.png");
		$("#btn2_img").attr("src","/images/silla/main_btn2_off.png");
		btn1=1;
		btn2=0;
		$("#iframe_set").attr("src","../ec/list.do");
		}
	});
		
		 
		
		    
		
		 
	/*버튼2의 클릭 이벤트*/
	$("#btn2_img").click(function(){
		
		
		if(btn2==1){
			$("#btn1_img").attr("src","/images/silla/main_btn1_off.png");
			$("#btn2_img").attr("src","/images/silla/main_btn2_off.png");
			btn1=0;
			btn2=0;
			$("#iframe_set").attr("src","../ec/content.do");
			
		}
		else{
			$("#btn1_img").attr("src","/images/silla/main_btn1_off.png");
			$("#btn2_img").attr("src","/images/silla/main_btn2_click.png");
			btn1=0;
			btn2=1;
			$("#iframe_set").attr("src","../ec/sample.do");
		}
		
	});
	
	/*버튼1의 마우스오버 이벤트*/
	$("#btn1_img").mouseover(function(){
		if(btn1==0)
			$("#btn1_img").attr("src","/images/silla/main_btn1_on.png");
	});
	
	/*버튼2의 마우스오버 이벤트*/
	$("#btn2_img").mouseover(function(){
		if(btn2==0)
			$("#btn2_img").attr("src","/images/silla/main_btn2_on.png");
	});
	
	/*버튼1의 마우스아웃 이벤트*/
	$("#btn1_img").mouseout(function(){
		if(btn1==0)
			$("#btn1_img").attr("src","/images/silla/main_btn1_off.png");
	});
	/*버튼2의 마우스아웃 이벤트*/
	$("#btn2_img").mouseout(function(){
		if(btn2==0)
			$("#btn2_img").attr("src","/images/silla/main_btn2_off.png");
	});
	
});
	
</script>


<img src="/images/silla/main_logo.png" style="display: block; width: 100%; height: auto; margin:0, auto; object-fit: cover; display: block; margin: 0 auto;">


<div class="container" >
    <div class="row" > 
    	<p class="btn"></p>
    	<!-- 1번구역 -->
        <div class="col-xs-12 col-sm-12" style="margin: 0, auto;width:100%; text-align:center;">   
        <!-- btn1(목록보기) 버튼 -->
		<button
		 type="button" class="btn_image" id="img_btn1"
	     style=" 
	     padding: 0;
	     border: none; 
	     background: none; 
	     width: 170px; 
	     cursor:pointer; ">
	     <img id=btn1_img src="/images/silla/main_btn1_off.png" style="max-width: 100%; height: auto; margin:0, auto;">
	     </button>
	      <!-- btn2(양식보기) 버튼 -->
	     <button
		 type="button" class="btn_image" id="img_btn2"
	     style=" 
	     padding: 0;
	     border: none; 
	     background: none; 
	     width: 170px;
	     margin-left:30px;  
	     cursor:pointer;">
	     <img id=btn2_img src="/images/silla/main_btn2_off.png"  style="max-width: 100%; height: auto; margin:0, auto;">
	     </button>
	     </div>
	   
        
        <!-- 4번구역 -->
        <div class="col-sm-12" id="content" style="height: auto; width: 100%; margin-top: 20px; min-height: 500px; border:1px; overflow: auto;">
        	<iframe id="iframe_set" src="../ec/content.do" scrolling="yes" style="width:100%; min-height:100vh; " ></iframe>
        </div>
    </div>
</div>
		
		
</div>