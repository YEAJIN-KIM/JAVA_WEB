<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="700" height="500">
	<tr>
	 <td height="100" colSpan="2">
	 <jsp:include page="/module/header.jsp"/>
	 </td>
	</tr>
	<tr>
	<td width="150"><jsp:include page="/module/left.jsp"/></td>
	<td>여기는 layout.jsp의 메인파트 입니다.</td>
	</tr>
	<tr><td height="100" colSpan="2"><jsp:include page="/module/bottom.jsp"/></td></tr>
</table>
</body>
</html>