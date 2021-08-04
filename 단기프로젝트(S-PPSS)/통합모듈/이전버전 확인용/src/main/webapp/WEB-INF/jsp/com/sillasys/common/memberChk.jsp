<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     <div class="form-group">
     
     
     <script>
     var chkName;
     var chkFront;
     var chkRear;
     var chkPhone;
     var chkAddress;
     var chk=null;
     /*테이블의 th와 td의 사이즈를 맞춰주는 스크립트*/
     window.onload=function tableAutoResize(){
    		var $table = $('#table_scroll'),
    			$bodyCells = $table.find('tbody tr:first').children(),
    			colWidth;
    		$table.addClass('scroll');
    		$(window).resize(function () {
    			// Get the tbody columns width array
    			colWidth = $bodyCells.map(function () {
    				return $(this).width();
    			}).get();
    			// Set the width of thead columns
    			$table.find('thead tr').children().each(function (i, v) {
    				$(v).width(colWidth[i]);
    			});
    		}).resize(); // Trigger resize handler
    	}
     

	  function cancleChk() { 
		  console.log("취소버튼 정상작동");
		 window.close();	
	  }
	  
	  function radioChk(name,front,rear,phone,address){
		     console.log("이름:"+name+"\n주민등록번호 : "+front+"-"+rear);
		     chkName=name;
		     chkFront=front;
		     chkRear=rear;
		     chkPhone=phone;
		     chkAddress=address;
	  }
	  
	  function blackChk(){
		  if($("#choice").val()==null){
			  alert("선택 된 것이 없습니다.");
		  }
		  else
		  {chk=true;}
	  }
	  
	  
		 function validChk() {  
			  var result=false;
			 
			     if("${result}"=="false"){
			    	 result = false;
			     }
			     else{
			    	 result = true;
			     }
			     blackChk();
				    	if(result&&chk==true){
				    		 opener.chkmember(chkName,chkFront,chkRear,chkPhone,chkAddress);
				    		 window.close();	
				    	}
				    	else{
				    		console.log("\n선택 된 이름: "+chkName);
				    		console.log("\n선택 된 주민번호 앞번호: "+chkFront);
				    		console.log("\n선택 된 주민번호 뒷번호 : "+chkRear);
				    		console.log("\n연락처 : "+chkPhone);
				    		console.log("\n주소: "+chkAddress);
				    	}
				     }
     </script>
     
     
 <style>
.scrolltbody {
    display: block;
    width: 550px;
    border-collapse: collapse;
    border: 2px solid #000;
}
.scrolltbody th { border: 1px solid #000; background: ; }
.scrolltbody td { border: 1px solid #000; border-top: 0; }
.scrolltbody tbody {
    display: block;
    height: 230px;       /* Just for the demo          */
    overflow-y: auto;    /* Trigger vertical scroll    */
    overflow-x: hidden;  /* Hide the horizontal scroll */
}

.scrolltbody th:nth-of-type(1), .scrolltbody td:nth-of-type(1) { width: 100px; }
.scrolltbody th:nth-of-type(2), .scrolltbody td:nth-of-type(2) { width: 80px; }
.scrolltbody th:nth-of-type(3), .scrolltbody td:nth-of-type(3) { width: 120px; }
.scrolltbody th:nth-of-type(4), .scrolltbody td:nth-of-type(4) { width: 200px; }
.scrolltbody th:last-child { width: 50px; }
.scrolltbody td:last-child { width: calc( 50px - 19px );  }

</style>
     
   
    <h5 style=" display: inline;">※ 계약서를 작성할 직원을 선택하세요. ※</h5>
        <div style="float:right;margin-top:5px;">
           <button class="btn btn-success" type="button" onclick="validChk();" style="display: inline;" >확인</button>
				<button class="btn btn-danger" type="button" onclick="cancleChk();" style="margin:0, auto; display: inline;">취소</button>
				</div>
				
<form action="/common/memberChk.do" method="post" id="frm1"><!--  -->
				<table class="scrolltbody" id="table_scroll" style="text-align: center; border: 1px solid #dddddd; margin-top:30px;">
					<thead style="background-color: #bbdefb; border: 1px">
						<tr>
							<th style="backgroud-color: #fafafa; text-align: center;">이름</th>
							<th style="backgroud-color: #fafafa; text-align: center;">성별</th>
							<th style="backgroud-color: #fafafa; text-align: center;">생년월일</th>
							<th style="backgroud-color: #fafafa; text-align: center;">연락처</th>
							<th style="backgroud-color: #fafafa; text-align: center;">선택</th>
						</tr>
					</thead>
					<tbody>
					
						<c:forEach items="${contentList}" var="contentList">
						<tr>
							<td><c:out value="${contentList.userName}"/></td>  	<!--이름-->
							<td><c:out value="${contentList.userGender}"/></td>	<!--성별-->
							<td><c:out value="${contentList.userResnumFront}"/>
								<input type="hidden" id="rear" value="<c:out value="${contentList.userResnumRear}"/>"></td>			<!--생년월일-->
							<td><c:out value="${contentList.userPhone}"/></td>	<!--연락처-->
							<td><input type='radio' id="choice" name='choice' onclick="radioChk(
							'<c:out value="${contentList.userName}"/>',
							'<c:out value="${contentList.userResnumFront}"/>',
							'<c:out value="${contentList.userResnumRear}"/>',
							'<c:out value="${contentList.userPhone}"/>',
							'<c:out value="${contentList.userAddress}"/>'
							);" value='<c:out value="${contentList.userName}"/>' style="width:17px;height:17px;border:1px; margin:auto,auto;"/></td><!--radio-->
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</form>
            </div>
         
   
      
       
     		  
		   
			 