<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<form action="/common/joinIdCheck.do" method="post"><!--  -->
            <div class="form-group">
                <label for="userId">아이디</label>
                <input type="text" class="form-control" id="user_id" name="user_id" onkeyup="idValidChk();" maxlength='12' style="width: 35%; display: inline-block; style="margin-left:5px;"> 
                 <input type="submit" value="중복확인" style="margin-right:10px;" >
                <p id="p_IdChk" style="color:red; font-size:12px; margin-left:5px;">*아이디를 입력해주세요. </p>
                
            </div>
           
         </form>  
   
          <script>
         var res=false;
       var	idValid=false;
       var	dupidValid=false;
       var result=false;
		     function idValidChk() {   
		    	console.log( $("#user_id").val());
		    	var userId = $("#user_id").val();
		    	idValid = false;
				var reg = /^(?=.*[a-zA-Z])+(?=.*[0-9])?.{3,12}$/;        
						if(userId==""){
							$("#p_IdChk").html("*아이디를 입력해주세요.");
							$("#p_IdChk").css("color","red");
							idValid=false;
						return false;
					}
					if(!reg.test(userId))	{
						$("#p_IdChk").html("*아이디가 유효하지 않습니다.");
						$("#p_IdChk").css("color","red");
						idValid=false;
						return false;
					}
					else{
						idValid=true;
						}	
					if(idValid==true&&dupidValid==true){
						$("#p_IdChk").html("*사용 가능한 아이디입니다.");
						$("#p_IdChk").css("color","green");
					}
					else if(idValid==true&&dupidValid==false){
						$("#p_IdChk").html("*아이디 중복체크를 해주세요.");
						$("#p_IdChk").css("color","green");
					}
					
				return true;	
		   		}
						     
		 	
		     if("${result}"=="false"){
		    	 result = false;
		     }
		     else{
		    	 result = true;
		     }
		     console.log("$result = "+"${result}");
		     console.log("$res = "+"${res}");
		     if("${res}"=="true"){
		    	 
		    	 res = true;
		     }
		     console.log("result = "+result);
		     console.log("res = "+res);
		     if(res){  //유저컨트롤러로부터 반응이 왔을 때 아랫 메서드 실행.
			    	if(result){
			    		 opener.getdupidValid(result,'${id}');
			    		 window.close();	
			    	}
			    	else{
			    		$("#p_IdChk").html("*"+'${id}'+"은(는) 이미 사용중인 아이디입니다.");
						$("#p_IdChk").css("color","red");
			    	}
			     }
			 	
		  </script>