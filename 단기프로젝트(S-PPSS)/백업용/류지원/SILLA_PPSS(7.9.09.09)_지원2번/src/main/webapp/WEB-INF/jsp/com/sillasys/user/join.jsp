<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <div class="col-md-12">
      <div class="col-md-6" style="margin:0 auto;">
         <form action="/user/join.do" method="post"><!--  -->
            <div class="form-group">
            <p for="id">아이디</p>
            <input type="text" class="form-control" id="userId" name="userId" style="width: 35%; display: inline-block;">
      <button class="btn btn-info" style="display:inline-block;">중복확인</button>
     

            
            <div class="form-group">
                 <label for="pw">비밀번호</label>
                 <input type="password" class="form-control" id="userPw" name="userPw" style="width:35%;">
            </div>

			<div class="form-group">
				<label for="name">이름</label> 
				<input type="text" class="form-control" id="userName" name="userName" style="width: 35%;">
			</div>


			<!-- <div class="form-group">
				<label for="address">주소</label>
				 <input type="text"
					class="form-control" id="userAddress" name="userAddress">
			</div> -->
			
			<div class="form-group">
         <label for="address" style="margin:0 auto;">주소 </label>
         <input id="member_post"  type="text" placeholder="우편번호" readonly onclick="findAddr()" style="width:25%;">
           <input id="userAddress" name="userAddress" type="text" placeholder="주소" readonly style="width:35%;display:block;">
           <input type="text" placeholder="상세주소" style="width:35%;display:block;">
         </div>

         <div class="form-group">
               <p for="userResNum">주민등록번호</p>
                <input type="text" class="form-control"  id="userResNum_front" name="userResNum_front" style="width:25%;display:inline-block;">
                <label for="userResNum_rear" style="display:inline-block;"> - </label>
                <input type="password" class="form-control"  id="userResNum_rear" name="userResNum_rear" style="width:25%;display:inline-block;">
            </div>
           
            <div class="form-group">
                 <label for="gender">성별 </label>
                <select name="userGender" class="form-control" style="width:110px;display:inline-block;">
                <option value="">--선택--</option>
              <option value="남">남</option>
              <option value="여">여</option>
              </select>
            </div>
            
            <div class="form-group">
                 <label for="email">이메일</label>
                <input type="text" class="form-control" id="userEmail" name="userEmail" style="width:50%">

            
           <div class="form-group">
                 <label for="phone">전화번호</label>
                <input type="text" class="form-control" id="userPhone" name="userPhone" style="width:50%">
            </div>

            
            <button class="btn btn-primary">가입</button>
            <a href="/user/login.do" type="button" class="btn btn-success">취소</a>
         </form>   
      
      </div>
   </div>


