<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
   String index = request.getParameter("index");
   String frmv = request.getParameter("indexu");
%>

<div class="container">
   <div class="raw">
      <div class="nav" style="float: right;">
         <a href="/admin/main.do"><img
            src="/images/silla/login_silla_logo.png" style="float: right;"></a>
      </div>
         <table class="table table-striped"
            style="text-align: center; border: 1px solid #ddddd">
            <thread>
            <tr>
               <th style="background-color: #eeeee; text-align: center;">근로계약서 양식</th>
            </tr>
         </thread>
         </table>
         <input type="hidden" id="index" name="index" value="<%=index %>">
         <iframe style="width:100%;height:100vh;padding:20px;" id="frame" name="frame"></iframe>
         <div style="float:right;">
         <button type="button" class="btn btn-info active" id="homeBtn" onClick="location.href='/admin/main.do'">뒤로가기</button>
         <button type="button" class="btn btn-info active" id="printBtn" onclick="printPage()">인쇄</button>
         </div>
   </div>
</div>

<script>
   function printPage(){
      window.frames["frame"].focus();
      window.frames["frame"].print();
   }
   
   window.onload=function(){
      ifr = document.getElementById("frame");
           console.log(ifr);
         console.log(<%=index %>);
         if(<%=index%>==1) {
            console.log("index : 1 완료");
            ifr.src = "../contract/template/contract1.do;"
         } else if (<%=index%>==2) {
            console.log("index : 2 완료");
            ifr.src = "../contract/template/contract2.do;"
         } else if (<%=index%>==3) {
            console.log("index : 3 완료");
            ifr.src = "../contract/template/contract3.do;"
         } else if (<%=index%>==4) {
            console.log("index : 4 완료");
            ifr.src = "../contract/template/contract4.do;"
         } else {
            console.log("index error");
            ifr.src = "../contract/template/contract1.do;"
         }
   }
</script>