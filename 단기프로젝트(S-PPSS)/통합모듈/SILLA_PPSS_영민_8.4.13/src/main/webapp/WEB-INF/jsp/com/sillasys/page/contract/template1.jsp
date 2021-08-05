<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- java standard tag library -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript">
function setContent() {
		if(confirm("저장하시겠습니까?")){
			console.log("저장 정상작동");
			var element = document.getElementById('contentdiv');
			console.log(element.innerHTML);
		
			$("#content").val("`" + element.innerHTML + "`");
			
			$("#form1").submit();
		}
		else{
		alert("저장이 취소되었습니다.");	
		}
		
	}
</script>


<form  action="/page/contract/template1.do" method="post" id=form1>
<div id="contentdiv">
	<div style="border: 1px solid black; padding: 10px; text-align: center">근 로 계 약 서</div>
	<br>
	<table border="1" style="margin-left: auto; margin-right: auto;">
  <tr>
    <td align="center" colspan='2' rowspan='2'>(갑)사용자</td>
    <td align="center" colspan='2'>사업체명</td>
    <td align="center" colspan='5'>(주)신라시스템</td>
    <td align="center" colspan='2'>대표자</td>
    <td align="center" colspan='4'>박창병</td>
  </tr>
  <tr>
    <td align="center" colspan='2'>주소</td>
    <td colspan='11'>대구광역시 동구 매여로 52(율암동)</td>
  </tr>
  <tr>
    <td align="center" colspan='2' rowspan='2'>(을)근로자</td>
    <td align="center" colspan='2'>성명</td>
    <td align="center" colspan='2'></td>
    <td align="center" colspan='4'>주민등록번호</td>
    <td align="center" colspan='5'></td>
  </tr>
  <tr>
    <td align="center" colspan='2'>주소</td>
    <td align="center" colspan='4'></td>
    <td align="center" colspan='3'>전화번호</td>
    <td align="center" colspan='4'></td>
  <tr>
  <tr>
    <td align="center" colspan='15'>위 당사자는 아래의 근로조건을 성실히 이행할 것을 약정하고 근로계약을 체결한다.<br>
    													-아 래-</td>
 </tr>
 <tr>
    <td align="center" colspan='2'>근로장소</td>
    <td align="center" colspan='13'>사업장 내 혹은 사업주가 별도 지정한 장소 내</td>
  </tr>
  <tr>
    <td align="center" colspan='2'>직종</td>
    <td align="center" colspan='7'></td>
    <td align="center" colspan='2'>계약기간</td>
    <td align="center" colspan='4'>2021년	월	일 ~	<br>
    								기간 정함이 없음</td>
  </tr>
  <tr>
    <td align="center" colspan='2' rowspan='2'>임금구성 항 목 </td>
    <td align="center" colspan='2'>계산방법</td>
    <td align="center" colspan='4'>월급제(통장입금)</td>
    <td align="center" colspan='2'>월지급액</td>
    <td align="center" colspan='3'></td>
  </tr>
  <tr>
    <td  colspan='7' >① 기  본  급 &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;	원(209시간) <br>
    								② 연 장 수당: &nbsp;&nbsp;&nbsp;&nbsp;	원( 시간) <br>
    								③ 휴 일 수당: &nbsp;&nbsp;&nbsp;&nbsp;	원( 시간) <br>
    								④ 식       대:	원 </td>
    <td align="center" colspan='6'>*상여금: 회사에서 정하여 지급 할 수 있다. <br>	
    							   *연차휴가 : 입사일을 기준으로 1년단위 발생 </td>
  </tr>
  <tr>
    <td align="center" colspan='2' >근로시간(연장근로포함)</td>
    <td align="center" colspan='6'> 09:00 ~ 18:00 <br>
    								(휴게 시간 12:00 ~ 13:00) <br>
    								소정근로시간 : 8시간</td>
    <td align="center" colspan='2'>근무일/휴일</td>
    <td align="center" colspan='5'>매주5일 근무, 주휴일 매주 일요일 <br>
    							   (토요일휴일은 무급주휴일)</td>    
  </tr>
  <tr>
    <td align="center" colspan='2' >임금계산기간과 <br>
    							       지급일</td>
    <td colspan='13'>당월 1일에 기산하여 당월 말일에 마감한후 익월 25일에 지급한다.</td>
  </tr>
  <tr>
    <td align="center" colspan='2' >수습기간 </td>
    <td align="center" colspan='5'>입사일로부터 3개월</td>
    <td align="center" colspan='4'>수습기간중의 급여</td>
    <td colspan='4'>- 신입사원 : 해당없음 <br>
    							   - 경력사원 : 해당없음</td>
  </tr>
  <tr>
    <td align="center" colspan='2' >취업규칙 </td>
    <td colspan='13'>당사의 취업규칙을 확인하였습니다.</td>
  </tr>
  <tr>
    <td align="center" colspan='2' >휴일</td>
    <td colspan='13'>유급휴일 - 근로자의 날, 주휴일, 무급휴일-토요일</td>
  </tr>
  <tr>
    <td align="center" colspan='2' >근로계약의 해지 사유 </td>
    <td colspan='13'> ① 취업규칙 또는 정당한 업무명령을 위반하였을 때.<br>
    								② 무단결근 계속 3일 이상.  <br>
    								③ 근로계약기간이 종료되었을 때. </td>					
  </tr>
  <tr>
    <td align="center" colspan='2' >기타</td>
    <td align="center" colspan='13'>연차휴가 등 본 계약서에 명시되지 않은 사항은 근로기준법 및 취업규치에 정한바에 따른다.</td>
  </tr>
  <tr>
    <td align="center" colspan='15'>회사의 취업규칙 등 제 규정을 숙동하였음을 확인하고 아래의 서명, 날인함. <br>
    							   2021년&nbsp;&nbsp;&nbsp;&nbsp; 월&nbsp;&nbsp;&nbsp;&nbsp; 일 <br>
    							   사용자:(주)신라시스템 &nbsp;&nbsp;(인)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    							   근로자&nbsp;&nbsp;(인)</td>
  </tr>
</table>
</div>
<div style="text-align:right;">
<button type="button" class="btn btn-primary"id="result" name="result" onclick="setContent();">저장</button>
</div>
<input type="hidden" id="content" name="content" value="">
</form>