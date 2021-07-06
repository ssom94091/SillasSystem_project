<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   	<div class="col-md-12">
      <div class="col-md-6" style="margin:0 auto;">
         <form action="/admin/ec/regist.do" method="post"><!--  -->
         	
            <div class="form-group">
                <label for="id">급여</label>
                <input type="text" class="form-control" id="id" name="pay">
            </div>
        	<div class="col-md-3">
            <div class="form-group">
            
                <label for="id">출근시간</label>
                <input type="text" class="form-control" id="id" name="workStartDt">-
                <label for="id">퇴근시간</label>
                <input type="text" class="form-control" id="id" name="workEndDt">
            </div>
            
            
          	
            
            <div class="form-group">
                <label for="nick">계약 시작일</label>
                <input type="text" class="form-control" id="nick" name="contStartDt">
            	
                 <label for="phone">계약 종료일</label>
                <input type="text" class="form-control" id="phone" name="contEndDt">
            </div>
            
            </div>
            <div class="form-group">
                 <label for="phone">계약서</label>
                <textarea class="form-control" name="content"></textarea>
            </div>
            <button class="btn btn-primary">가입</button>
            <a href="/index" type="button" class="btn btn-success">취소</a>
         </form>   
      
      </div>
   </div>