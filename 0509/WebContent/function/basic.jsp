<%-- function 활용예제 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="str1" value="웹 프로그래밍은 재밌습니다."/>  
<c:set var="str2" value="웹"/>
문자열 길이: ${fn:length(str1)}<br>
일부 문자열 ${fn:substring(str1, 3, 6)}<br> <%-- 0부터 시작/ 빈 문자도 문자열 포함 --%>
문자열 포함 여부 : ${fn:contains(str1,str2)}<br>
문자열 대체: ${fn:replace(str1,"재밌습니다", "재미없습니다")}
</body>
</html>