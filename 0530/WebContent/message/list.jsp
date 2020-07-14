<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import ="my.model.*,my.dao.*,my.service.*" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록 메시지 목록</title>
</head>
<body>
<%
	String pageNumberStr = request.getParameter("page");
	int pageNumber = 1;
	if (pageNumberStr != null){
		pageNumber = Integer.parseInt(pageNumberStr);
	}
	MessageListService service = new MessageListService();
	MessageListView viewData = service.getMessageList(pageNumber);
%>
<c:set var="view" value="<%= viewData %>"/> <!-- view 변수: page 표현하는데 필요한 모든 데이타 포함 -->
<form action="writeMessage.jsp" method="post">
이름: <input type="text" name="guestName"><br>
암호: <input type="password" name="password"><br>
메시지: <input type="text" name="message"><br>
<input type="submit" value="메시지 남기기">
</form>
<hr>
<c:if test="${view.isEmpty()}">
등록된 메시지가 없습니다. 
</c:if>
<c:if test="${!view.isEmpty()}">
<table border="1">
	<c:forEach var="message" items="${view.messageList}">
		<tr>
			<td>
			   메시지번호: ${message.messageId} <br>
			   방명객이름: ${message.guestName} <br>
			   메시지: ${message.message} <br>
<a href="confirmDeletion.jsp?messageId=${message.messageId}">삭제하기</a>
<a href="confirmUpdate.jsp?messageId=${message.messageId}">수정하기</a>   
			</td>
		</tr>
	</c:forEach>
</table>
<c:forEach var="pageNum" begin="1" end="${view.pageTotalCount}">
	<a href="list.jsp?page=${pageNum}">[${pageNum}]</a>
</c:forEach>

</c:if>


</body>
</html>











