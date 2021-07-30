<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <div class="form-group">
     
     
   
    <h5 style=" display: inline;">※ 계약서를 작성할 직원을 선택하세요. ※</h5>
        <div style="float:right;margin-top:5px;">
           <button class="btn btn-success" type="button"style=" display: inline;" >확인</button>
				<button class="btn btn-danger" type="button"style="margin:0, auto; display: inline;">취소</button>
				</div>
<form action="/common/memberChk.do" method="post" id="frm1"><!--  -->
				<table class="table" style="text-align: center; border: 1px solid #dddddd; margin-top:30px;">
					<thead style="background-color: #bbdefb; border: 1px">
						<tr>
							<th style="backgroud-color: #fafafa; text-align: center;">이름</th>
							<th style="backgroud-color: #fafafa; text-align: center;">성별</th>
							<th style="backgroud-color: #fafafa; text-align: center;">생년월일</th>
							<th style="backgroud-color: #fafafa; text-align: center;">연락처</th>
							<th style="backgroud-color: #fafafa; text-align: center;">선택</th>
						</tr>
					</thead>
					<tbody id="tbody">
					
						<c:forEach items="${contentList}" var="contentList">
						<tr>
							<td><c:out value="${contentList.userName}"/></td>  	<!--이름-->
							<td><c:out value="${contentList.userGender}"/></td>	<!--성별-->
							<td><c:out value="${contentList.userResnumFront}"/></td>			<!--생년월일-->
							<td><c:out value="${contentList.userPhone}"/></td>	<!--연락처-->
							<td><input type='checkbox' name='choice' value='<c:out value="${contentList.userName}"/>' /> <!--radio-->
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</form>
            </div>
         
   
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