<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
   <div class="col-md-12">
      <div class="col-md-6" style="margin:0 auto;">
         <form action="/user/join.do" method="post"><!--  -->
            <div class="form-group">
                <label for="id">아이디</label>
                <input type="text" class="form-control" id="userId" name="userId">
            </div>
            
            <div class="form-group">
                 <label for="pw">비밀번호</label>
                 <input type="password" class="form-control" id="userPw" name="userPw">
            </div>
            
            <div class="form-group">
                 <label for="name">이름</label>
                <input type="text" class="form-control" id="userName" name="userName">
            </div>
            
            <div class="form-group">
                 <label for="address">주소</label>
                <input type="text" class="form-control" id="userAddress" name="userAddress">
            </div>
            
            <div class="form-group">
            	<label for="userResNum_front">주민등록번호앞자리</label>
                <input type="text" class="form-control"  id="userResNum_front" name="userResNum_front">
            </div>
            
            <div class="form-group">
            	<label for="userResNum_rear">주민등록번호뒷자리</label>
                <input type="text" class="form-control"  id="userResNum_rear" name="userResNum_rear">
            </div>
           
            <div class="form-group">
                 <label for="gender">성별</label>
                <select name="userGender">
                <option value="">-- 선택 --</option>
        		<option value="남">남</option>
        		<option value="여">여</option>
        		</select>
            </div>
            
            <div class="form-group">
                 <label for="email">이메일</label>
                <input type="text" class="form-control" id="userEmail" name="userEmail">
                
            </div>
            
            <div class="form-group">
                 <label for="phone">전화번호</label>
                <input type="text" class="form-control" id="userPhone" name="userPhone">
            </div>
            
            <button class="btn btn-primary">가입</button>
            <a href="/index" type="button" class="btn btn-success">취소</a>
         </form>   
      
      </div>
   </div>