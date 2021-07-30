<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String company_name = request.getParameter("company_name");
%>
<form action="/common/colist.do" method="post" id="frm" name="frm">
	<input type="hidden" id="company_name" name="company_name" value="<%=company_name %>">
    <table class="table" style="text-align:center; border: 2px double;width:100%;border-collapse: collapse;">
    <thead>
				<tr style="border:1px solid;">
					<th style="background-color: #dadada; text-align: center;width:25%;">기업이름</th>
					<th style="background-color: #dadada; text-align: center;width:18%;border-right:1px solid;border-left:1px solid;">전화번호</th>
					<th style="background-color: #dadada; text-align: center;width:47%;">주소</th>
					<th style="background-color: #dadada; text-align: center;width:10%;border-left:1px solid"">선택</th>
				</tr>
			</thead>
	<tbody>
	<c:forEach items="${contentList}" var="contentList">
               <tr">
                  <td><c:out value="${contentList.companyName}"/></td>
                  <td style="border-right:1px solid;border-left:1px solid;"><c:out value="${contentList.companyPhone}"/></td>
                  <td><c:out value="${contentList.companyAddress}"/></td>
                  <td style="border-left:1px solid"><input type="radio" id="checkCoop" name="checkCoop" value="${contentList.companyName}"
                  onClick="setValue(this.value);"></td>
               </tr>
    </c:forEach>
	</tbody>
    </table>
    </form>

    <script>
    	function setSearch(value) {
    		company_name = document.getElementById("company_name");
    		frm = document.getElementById("frm");
    		company_name.value = value;
    		frm.submit();
    	}
    	
    	function setValue(value) {
    		console.log("colist value : "+value);
    		parent.setValue(value);
    	}
    </script>