<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ��</title>
</head>
<body>
 �����ۼ�<br>
 
 <table border="1" cellpadding="0" cellspacing="0" width="800px" height="400px">
  
  <tr><td valign="top"><br>ĳ����<br><hr><br><br>
  &nbsp;
  <c:forEach var="item" items="${itemList }">
         ${Item_id }<br>
    </c:forEach>
  <br>
  <p align="right"><input type="button" onclick="create()" value="���">&nbsp;&nbsp;&nbsp;</p>
  <br><br><br>���ȿ��<br><hr><br><br>&nbsp;
    
  <br>
  <p align="right"><input type="button" onclick="create()" value="���">&nbsp;&nbsp;&nbsp;</p>
  <br><br><br>
                 </td></tr>
 </table>
</body>
<script>
 function create(){
	 location.href = "itemcreate.om";
 }
</script>
</html>