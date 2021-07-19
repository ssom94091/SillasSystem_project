<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container">
   <div class="raw">
      <div class="nav" style="float: right;">
         <a href="/user/index.do"><img
            src="/images/silla/login_silla_logo.png" style="float: right;"></a>
      </div>
      <form action="javascript:alert('작성완료');">
         <table class="table table-striped"
            style="text-align: center; border: 1px solid #ddddd">
            <thread>
            <tr>
               <th style="background-color: #eeeee; text-align: center;">근로계약서 양식</th>
            </tr>
         </thread>
         </table>
         <iframe src="../ec/template/contract4.do" style="width:100%;height:100vh;padding:20px;" id="frame" name="frame"></iframe>
         <div style="float:right;">
         <button type="button" class="btn btn-info active" id="printBtn" onclick="printPage()">인쇄</button>
         <button type="button" class="btn btn-primary active" id="btn" onclick="document.location.href='writeaction.do'">제출</button>
         </div>
         
      </form>
   </div>
</div>

<script>
   function printPage(){
      window.frames["frame"].focus();
      window.frames["frame"].print();
   }
</script>