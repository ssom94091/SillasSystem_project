<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
   <div class="col-md-12">
      <div class="col-md-6" style="margin:0 auto;">
         <form action="/user/join.do" method="post"><!--  -->
            <div class="form-group">
                <label for="id">아이디</label>
                <input type="text" class="form-control" id="id" name="userId">
            </div>
            
            <div class="form-group">
                 <label for="pw">패스워드</label>
                 <input type="password" class="form-control" id="pw" name="userPw">
            </div>
            
            <div class="form-group">
                 <label for="nick">닉네임</label>
                <input type="text" class="form-control" id="nick" name="userNick">
            </div>
            
            <div class="form-group">
                 <label for="phone">연락처</label>
                <input type="text" class="form-control" id="phone" name="userPhone">
            </div>
            <button class="btn btn-primary">가입</button>
            <a href="/index" type="button" class="btn btn-success">취소</a>
         </form>   
      
      </div>
   </div>