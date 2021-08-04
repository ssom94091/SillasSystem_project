<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!-- iframe 사이즈 -->
<style>
	#my_frame { width: 1000px; height: 700px; }
</style>

<!-- iframe 페이지 이동 함수 -->
<script>	
	function open_in_frame(url) {
		$("#my_frame").attr('src', url);
	}
</script>


	
<div class="container-fluid p-0">
            <!-- About-->
            <section class="resume-section" id="home">
                <div class="resume-section-content">
                 
                    <div class="subheading mb-5">
                        		 <h4><span class="text-primary">계약서관리_</span></h4>
                    </div>
                   <div class="container">
                   <!-- 카드 리스트 부분 -->
						<div class="row" >
                     <div>
                        <button class="btn btn-danger" onclick='open_in_frame("http://localhost:8080/sub/contract/contlist.do")' style="margin-left:35px;">계약서목록</button>
                        <button class="btn btn-danger" onclick='open_in_frame("http://localhost:8080/sub/contract/form.do")'>양식보관함</button>
                        <button class="btn btn-danger" onclick="" style="float:right;margin-right:115px;">작성</button>
                        <iframe id='my_frame' src="http://localhost:8080/sub/contract/form.do"></iframe>
                     </div>
                     
                  </div>
					</div>
                
             </div>
            </section>
        </div>
         <hr class="m-0" />