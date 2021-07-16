<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="col-md-12">
	<div class="col-md-6" style="margin: 0 auto;">
		<form action="/user/join.do" method="post" name="fr" onsubmit="return blankChk();">
			<!--  -->
			<div class="form-group" style="margin-top:70px; background-color: #fff;">
				<p for="user_id">*아이디</p>
				<input type="text" class="form-control" id="user_id" name="user_id" maxlength='12' onkeyup="idValidChkonKey();" style="width: 35%; display: inline-block;"> 
				<input type="button" class="btn btn-info" id="userId_Check" onclick="duplicateChk();" style="display: inline-block;" value="중복체크">
				<p id="p_IdChk" style="color:red; font-size:12px; margin-left:5px;">*아이디를 입력해주세요. </p>
				<input type="hidden" id="dup_result" value="false">
			</div>


			<div class="form-group" style="background-color: #fff;">
				<label for="user_pw">*비밀번호</label> 
				<input type="password"class="form-control" id="user_pw" name="user_pw" onkeyup="pwValidChk()" style="width: 35%;">
					<p id="p_PwChk" style="color:red; font-size:12px; margin-left:5px;">*비밀번호를 입력해주세요. </p>
			</div>
			<div class="form-group" style="background-color: #fff;">
			
				<label for="userPwRe">비밀번호(재확인)</label> 
				<input type="password" class="form-control" id="userPwRe" name="userPwRe" onkeyup="pwReValidChk()"style="width: 35%;">
				<p id="p_PwChkRe" style="color:red; font-size:12px; margin-left:5px;"></p>
			</div>
			
			<div class="form-group">
				<label for="userName">*이름</label> <input type="text" class="form-control"
					id="user_name" name="user_name" style="width: 35%;">
			</div>
			
			<div class="form-group">
				<label for="user_address" style="margin: 0 auto;">*주소 </label>
				 <input id="member_post" readonly type="text" placeholder="우편번호" readonly onclick="findAddr()" style="width: 25%;"> 
				<input type="button" id="member_postbtn" onclick="findAddr()" value="주소찾기">
				
				<input id="user_address" name="user_address" type="text" placeholder="주소" readonly style="width: 50%; display: block;"> 
				<input id="detail_Address" type="text" placeholder="상세주소" style="width: 50%; display: block;">
			</div>

			<div class="form-group">
				<p for="user_resnum_front">*주민등록번호</p>
				<input type="text" class="form-control" maxlength='6' id="user_resnum_front" name="user_resnum_front" style="width: 25%; display: inline-block;">
				<label for="user_resnum_rear" style="display: inline-block;">
					- </label> 
					<input type="password" class="form-control" maxlength='7' id="user_resnum_rear"name="user_resnum_rear" style="width: 25%; display: inline-block;">
			</div>

			<div class="form-group">
				<label for="user_gender">*성별 </label> <select name="user_gender"
					class="form-control" style="width: 110px; display: inline-block;">
					<option value="">--선택--</option>
					<option value="남">남</option>
					<option value="여">여</option>
				</select>
			</div>

			<div class="form-group" >
				<label for="user_email">이메일</label> <input type="text"
					class="form-control" id="user_email" name="user_email"
					style="width: 50%">
			</div>

			<div class="form-group">
				<label for="user_phone">연락처(-없이 입력해주세요.)</label> <input type="text"
					class="form-control" id="user_phone" name="user_phone"
					style="width: 50%">
			</div>


			<button class="btn btn-primary">가입</button>
			<a href="/user/login.do" type="button" class="btn btn-success">취소</a>
		</form>

	</div>
</div>

<script>
var idValid = false;
var dupidValid = false;  //중복체크
var pwValid = false;
var childWindow;
  /*도로명 주소 메서드 */
  
	function findAddr() {
		new daum.Postcode({
			oncomplete : function(data) {

				console.log(data);

				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('member_post').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("user_address").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("user_address").value = jibunAddr;
				}
			}
		}).open();
	}

	function getdupidValid(result, name){
		dupidValid = result;
		alert(name+"은(는) 사용 가능한 아이디입니다.");
		$("#user_id").val(name);
		console.log("dupidValid:"+dupidValid+"/ user_id:"+name);
		idValidChk();
	}
        	// 아이디 유효성 체크
        	function idValidChkonKey(){
        		idValid = false;
        		dupidValid = false;
        		idValidChk();
        	}
		     function idValidChk() {   
        		
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
					console.log("idValid:"+idValid+"/ dupidValid:"+dupidValid);

					if(idValid==true&&dupidValid==true){
						console.log("정상작동했습니다.");
						$("#p_IdChk").html("*사용 가능한 아이디입니다.");
						$("#p_IdChk").css("color","green");
					}
					else if(idValid==true&&dupidValid==false){
						$("#p_IdChk").html("*아이디 중복체크를 해주세요.");
						$("#p_IdChk").css("color","green");
					}
					
				return true;	
		   		}
        	
		  // 비밀번호 유효성 체크
		     function pwValidChk() {   
		    	var userPw = $("#user_pw").val();
		    	pwValid = false;
				var reg = /^[a-zA-Z0-9_@./#&+-]{8,20}$/;    
				
					if(userPw==""){
						$("#p_PwChk ").html("*비밀번호를 입력해주세요.");
						$("#p_PwChk ").css("color","red");
						pwValid = false;
						pwReValidChk();
						return false;
					}
					if (!reg.test(userPw))	{
						console.log(userPw);
						$("#p_PwChk").html("*비밀번호가 유효하지 않습니다. (8자리 이상[알파벳+숫자])");
						$("#p_PwChk").css("color","red");
						pwValid = false;
						pwReValidChk();
						return false;
					}
					
						$("#p_PwChk ").html("*사용 가능한 비밀번호입니다.");
						$("#p_PwChk ").css("color","green");
						$("#p_PwChkRe ").html("*비밀번호를 재입력해주세요.");
						$("#p_PwChkRe ").css("color","red");
						
						pwReValidChk();
					
				return true;	
		   		}
		  // 비밀번호 재확인 유효성 체크
		     function pwReValidChk() {   
		    	var userPw = $("#user_pw").val();
		    	var userPwRe = $("#userPwRe").val();
		    	pwValid = false;
		    	console.log("userPw:"+userPw+"/ 비밀번호재확인:"+userPwRe);
		    	if(userPwRe==""&&userPw==""){
		    		console.log("둘 다 널값");
					$("#p_PwChkRe ").html("");
				}
		    	else if(userPw!=""&&userPwRe==""){
		    		console.log("비밀번호 재확인만 널값");
						$("#p_PwChkRe ").html("*비밀번호를 재입력해주세요.");
						$("#p_PwChkRe ").css("color","red");
				}
		    
		    	else{
					if (userPw==userPwRe&&userPw!="")	{
						$("#p_PwChkRe").html("*비밀번호가 일치합니다.");
						$("#p_PwChkRe").css("color","green");
						pwValid = true;
					
					}
					else	{
						$("#p_PwChkRe ").html("*비밀번호가 일치하지않습니다.");
						$("#p_PwChkRe ").css("color","red");
						}
		    	}
		   		}
		  
		  // 이메일   var regExpEm = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		// 전화번호 /(\d{3}).*(\d{3}).*(\d{4})/
	function duplicateChk() {
		if (document.fr.user_id.value == "" || document.fr.user_id.value.length < 0) {
			alert("아이디를 먼저 입력해주세요");
			document.fr.user_id.focus(); //해당태그로  위치시켜준다.
		} else {
		var popupX= (window.screen.width/2) - (300/2);
		var popupY= (window.screen.height/2)-(100/2);
		//2. 회원정보아이디를 가지고 있는 지 체크하려면 DB에 접근해야한다.
		//자바스크립트로 어떻게 DB에 접근할까? => 파라미터로 id값을 가져가서 jsp페이지에서 진행하면 된다.
		childWindow = window.open("/common/joinIdCheck.do?userId="
				+ document.fr.user_id.value, "", "width=300, height=100 left="+popupX+",top="+popupY);
		console.log("부모userid="+document.getElementById("user_id").value);
		childWindow.onload = function(){

			childWindow.document.getElementById("user_id").value =document.getElementById("user_id").value;
			console.log("자식userid="+childWindow.document.getElementById("user_id").value);
		}
		}
		}

	/* 작성되지 않은 빈 칸을 체크하는 메서드입니다.*/
	function blankChk(){
		var msg = "을(를) 입력하지 않았습니다."
		var  user_id = $("#user_id").val();
		var  user_pw  = $("#user_pw").val();
		var  userPwRe  = $("#userPwRe").val();
		var  user_name  = $("#user_name").val();
		var  member_post  = $("#member_post").val();
		var  user_address  = $("#user_address").val();
		var  detail_Address = $("#detail_Address ").val();
		var  user_resnum_front = $("#user_resnum_front ").val();
		var  user_resnum_rear = $("#user_resnum_rear ").val();
		var  user_gender = $("select[name=user_gender]").val();
		var  user_email = $("#user_email ").val();
		var  user_phone = $("#user_phone ").val();
		
		 console.log("dupidValid:" +dupidValid);
		 console.log("pwValid: " +pwValid);
		console.log("user_id: "+user_id);
		console.log("user_pw: "+user_pw);
		console.log("userPwRe: "+userPwRe);
		console.log("user_name: "+user_name);
		console.log("member_post: "+member_post);
		console.log("user_address: "+user_address);
		console.log("detail_Address: "+detail_Address);
		console.log("user_resnum_front: "+user_resnum_front);
		console.log("user_resnum_rear: "+user_resnum_rear);
		console.log("user_gender: "+user_gender);
		console.log("user_phone: "+user_phone);
		if(user_id==""){alert("아이디"+msg); $("#user_id").focus(); return false; }
		else if(user_pw==""){alert("비밀번호"+msg); $("#user_pw").focus(); return false; }
		else if(userPwRe==""){alert("비밀번호 재확인"+msg); $("#userPwRe").focus(); return false; }
		else if(user_name==""){alert("이름"+msg); $("#user_name").focus(); return false; }
		else if(member_post==""){alert("주소"+msg); $("#member_post").focus(); return false; }
		else if(user_address==""){alert("주소"+msg); $("#user_address").focus(); return false; }
		else if(detail_Address==""){alert("상세주소"+msg); $("#detail_Address").focus(); return false; }
		else if(user_resnum_front==""){alert("주민번호 앞자리"+msg); $("#user_resnum_front").focus(); return false; }
		else if(user_resnum_rear==""){alert("주민번호 뒷자리"+msg); $("#user_resnum_rear").focus(); return false; }
		else if(user_gender==""){alert("성별"+msg); $("select[name=user_gender]").focus(); return false; }
		else if(user_phone==""){alert("연락처"+msg); $("#user_phone").focus(); return false; }
		
		
		
		if(dupidValid==false||pwValid==false){
			 console.log("dupidValid:" +dupidValid);
			 console.log("pwValid: " +pwValid);
			alert("들어옴");
			if(dupidValid!=true){
				alert("아이디 중복체크를 해주세요.");
				$("#user_id").focus();
				return false;
			}
			else if(pwValid!=true){
				alert("비밀번호가 일치하지않습니다.");
				$("#userPwRe").focus();
				return false;
			}
			
			return false;
		}
		alert("회원가입에 성공하였습니다!");
		return true;
		
	}
</script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
