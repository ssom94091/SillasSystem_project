<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="col-md-12">
      <div class="col-md-6" style="margin:0 auto;">
         <form action="/user/login.do" method="post"><!--  -->
         <div>
         	<img src="/images/silla/login_silla_logo.png">
         </div>
            <div class="form-group">
                <label for="id">아이디</label>
                <input type="text" class="form-control" id="id" name="id">
            </div>
            
            <div class="form-group">
                 <label for="pw">패스워드</label>
                 <input type="password" class="form-control" id="pw" name="pw">
            </div>
           
            <button class="btn btn-primary">로그인</button>
         </form>   
      
      </div>
   </div>