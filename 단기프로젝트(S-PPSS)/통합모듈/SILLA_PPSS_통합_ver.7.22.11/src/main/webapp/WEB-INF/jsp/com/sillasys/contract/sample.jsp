<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container" style="border:1px solid;margin:0 auto;">
<form action="/user/write.do" method="post" id="frm" name="frm">
   <div class="row">
      <div class="col-sm-6" style="width:50vh;height:50vh;">
         <button type="button"style="border:1px soilid;margin:0 0;width:100%;height:100%;padding:0;" onclick="CheckIndex(1);">버튼1</button>
      </div>
      <div class="col-sm-6">
         <button type="button"style="border:1px soilid;margin:0 0;width:100%;height:100%;padding:0;" onclick="CheckIndex(2);">버튼2</button>
      </div>
      <div class="col-sm-6" style="width:50vh;height:50vh;">
         <button type="button"style="border:1px soilid;margin:0 0;width:100%;height:100%;padding:0;" onclick="CheckIndex(3);">버튼3</button>
      </div>
      <div class="col-sm-6">
         <button type="button"style="border:1px soilid;margin:0 0;width:100%;height:100%;padding:0;" onclick="CheckIndex(4);">버튼4</button>
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