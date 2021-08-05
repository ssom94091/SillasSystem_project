<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
     window.onload = function(){
    	  document.getElementById('title').innerHTML="직원 추가"

     }
    </script>
    
<style>
body{
         font-family: 'Anton', sans-serif;
          background:#3498db;
          margin: 0 auto 0 auto;  
          width:100%; 
          text-align:center;
          margin: 10px 0px 10px 0px;   
        }
:root {
  --main-color: #5567ff;
  --error-color: #e74c3c;
  --gray-border: #e1e2e3;
  
  }
.container {
  width: 600px;
  height: 500px;
  background-color: #fff;
  border-radius: 30px;
}
.sub {
  width: 600px;
  height: 500px;
  background-color: #fff;
  border-radius: 30px;
}
p{
          font-size:12px;
          text-decoration: none;
          color:#ffffff;
        }
        h1{
          font-size:1.5em;
          color:#525252;
        }
        .box{
          background:white;
          width:300px;
          border-radius:6px;
          margin: 0 auto 0 auto;
          padding:0px 0px 70px 0px;
          border: #2980b9 4px solid; 
        }
        .username{
          background:#fff;
          border: #ccc 1px solid;
          border-bottom: #ccc 2px solid;
          padding: 8px;
          width:250px;
          color:#AAAAAA;
          margin-top:10px;
          font-size:1em;
          border-radius:4px;
        }
        .button{
          background:#2ecc71;
          width:125px;
          padding-top:5px;
          padding-bottom:5px;
          color:white;
          border-radius:4px;
          border: #27ae60 1px solid;
          margin-top:20px;
          margin-bottom:20px;
          float:left;
          margin-left:88px;
          font-weight:800;
          font-size:0.8em;
        }
        .button:hover{
          background:#2CC06B; 
        }
        .fpwd{
            color:#f1c40f;
            text-decoration: underline;
        }
       #absoluteCenteredDiv{
            position: absolute;
            top:0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
            width:550px;
            height: 500px;
            text-align: left;
       }
       .inputType{
       width:10rem;
       
       }
       .inputEmail{
       width:20rem;
       }
       .divstyle{
       margin-top:5px;
       }
</style>
            <!--   <a href="#"><div class="button">Sign In</div></a> -->  
      <div id="absoluteCenteredDiv">
   
      <div class="container">
         
   			<form id="login-form" method="post">
   			<h5 style="font-size:3 rem; font-family:'Black Han Sans', sans-serif;">직원 추가</h5>
   			<div class="divstyle">
   			<label class="custom-control-label" for="name">이름</label>
   				 <input type="text" name="name" class="inputType"  autocomplete="off" required/>
   			</div>
   			
   			 <div class="divstyle">
   			 <label class="custom-control-label" for="email">이메일</label>
   			 	<input type="text" name="email" class="inputEmail" autocomplete="off" required/>
			</div>
			

                <div class="custom-control custom-radio custom-control-inline">
                    <input type="radio" class="custom-control-input" id="sex-1" name="sex" value="1" checked>
                    <label class="custom-control-label" for="sex-1">남</label>
                </div>
                <div class="custom-control custom-radio custom-control-inline">
                    <input type="radio" class="custom-control-input" id="sex-2" name="sex" value="2">
                    <label class="custom-control-label" for="sex-2">여</label>
                </div>
			</form>
			</div>
	</div>