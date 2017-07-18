<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>아이템 등록</title>
</head>
<body>
<form:form modelAttribute="item" action="register.om" enctype="multipart/form-data">
 <table border="1" cellpadding="0" cellspacing="0" align="center">
  <tr><td>아이템명</td>
      <td><form:input path="Item_name" maxlength="20"/>&nbsp;
      <font color="red"><form:errors path="Item_name"/></font></td>
      </tr>
  <tr><td>아이템가격</td>
      <td><form:input path="Item_price"/>&nbsp;
      <font color="red"><form:errors path="Item_price"/></font></td>
      </tr>
  <tr><td>아이템설명</td>
      <td><form:textarea path="Item_description" rows="30" cols="30"/>&nbsp;
      <font color="red"><form:errors path="Item_description"/></font></td>
      </tr>
  <tr><td>아이템 사진</td>
      <td><input type="file" name="Item_pictureUrl">&nbsp;
      <font color="red"><form:errors path="Item_pictureUrl"/></font></td>
      </tr>
  <tr><td colspan="2" align="center">
      <input type="submit" value="등록완료"></td></tr>
 </table>
</form:form>
</body>
</html>
