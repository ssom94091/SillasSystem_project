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
                 <label for="pw">비밀번호</label>
                 <input type="password" class="form-control" id="pw" name="userPw">
            </div>
            
            <div class="form-group">
                 <label for="name">이름</label>
                <input type="text" class="form-control" id="name" name="userName">
            </div>
            
            <div class="form-group">
                 <label for="address">주소</label>
                <input type="text" class="form-control" id="address" name="userAddress">
            </div>
            
            <div class="form-group">
               <label for="resNumfront">주민등록번호</label>
                <input type="text" class="form-control"  id="resNumfront" name="resNumfront">-
                  <input type="text" class="form-control" id="resNumrear" name="resNumrear">
            </div>
            
           <!--  <div class="form-group">
                 <label for="resNumrear"></label>
                <input type="text" class="form-control" id="nick" name="resNumrear">
            </div> -->
            
            <div class="form-group">
                 <label for="gender">성별</label>
                <input type="text" class="form-control" id="gender" name="userNick">
            </div>
            
            <div class="form-group">
                 <label for="email">이메일</label>
                <input type="text" class="form-control" id="email" name="userEmail">
            </div>
            
            <div class="form-group">
                 <label for="phone">전화번호</label>
                <input type="text" class="form-control" id="phone" name="userPhone">
            </div>
            
            <button class="btn btn-primary">가입</button>
            <a href="/index" type="button" class="btn btn-success">취소</a>
         </form>   
      
      </div>
   </div>