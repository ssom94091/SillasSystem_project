<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<form action="/common/joinIdCheck.do" method="post"><!--  -->
            <div class="form-group">
                <label for="id">아이디</label>
                <input type="text" class="form-control" id="id" name="user_id" style="width: 400px; ">
            </div>
            <input type="submit" value="중복확인">
         </form>   
         
          <script>
    	alert('${msg}');
    	if(${result}){
    		window.close();	
    	}
    	function msg(){
    		  var str = "Hello World!!";
    		  alert(str);
    		 }
    		 window.onload=msg;

    </script>