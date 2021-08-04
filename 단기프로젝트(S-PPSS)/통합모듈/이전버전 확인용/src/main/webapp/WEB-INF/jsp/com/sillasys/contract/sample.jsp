<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container" style="border:1px solid;margin:0 auto;">
<form action="../common/write.do" method="post" id="frm" name="frm">
   <div class="row">
      <div class="col-sm-6" style="width:50vh;height:50vh;">
       <button type="button" class="btm_image1" id="img_btn1" style=" background-image:url(/images/silla/menu_btn1.png);  background-size: contain;background-repeat: no-repeat;margin:0 0;border:0px;width:100%;height:100%;padding:0;" onclick="CheckIndex(1);">
  
      </div>
      
      <div class="col-sm-6">
       <button type="button" class="btm_image2" id="img_btn2" style=" background-image:url(/images/silla/menu_btn2.png);  background-size: contain;background-repeat: no-repeat;margin:0 0;border:0px;width:100%;height:100%;padding:0;" onclick="CheckIndex(2);">
            </div>
      
      <div class="col-sm-6" style="width:50vh;height:50vh;">
       <button type="button" class="btm_image3" id="img_btn3" style=" background-image:url(/images/silla/menu_btn3.png);  background-size: contain;background-repeat: no-repeat;margin:0 0;border:0px;width:100%;height:100%;padding:0;" onclick="CheckIndex(3);">
  
               </div>
      <div class="col-sm-6">
      <button type="button" class="btm_image4" id="img_btn4" style=" background-image:url(/images/silla/menu_btn4.png);  background-size: contain;background-repeat: no-repeat;margin:0 0;width:100%;height:100%;padding:0;" onclick="CheckIndex(4);">
     </button>
           </div>
   </div>
   <input type="hidden" id="index" name="index">
   </form>
</div>

<script>
function CheckIndex(value) {
   index = document.getElementById("index");
   index = value;
   console.log(index);
   parent.moveToWrite(index);
}
</script>