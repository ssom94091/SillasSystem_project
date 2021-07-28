<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
   <div class="col-md-12">
      <div class="col-md-6" style="margin:0 auto;">
         <form action="/admin/login.do" method="post"><!--  -->
         <div>
         	<a href="/index.do"><img src="/images/silla/login_silla_logo.png"></a>
         </div>
            <div class="form-group">
                <label for="id">아이디</label>
                <input type="text" class="form-control" id="id" name="admin_id" style="width: 400px; ">
            </div>
            
            <div class="form-group">
                 <label for="pw">패스워드</label>
                 <input type="password" class="form-control" id="pw" name="admin_pw" style="width: 400px;">
            </div>
           
            <button class="btn btn-primary" style="margin:0 0 0 auto;">로그인</button>
         </form>   
      
      </div>
   </div>