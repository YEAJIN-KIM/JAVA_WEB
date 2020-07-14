<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "my.inform.Member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8"); // jspusebean 써서 post 로 받아오기 때문에 인코딩
	// (파라미터 안썼으니.. 일일히 변수 지정..?? 첫번째 방법) 
	//Member member = new Member();
	//member.setMemberName("한승규");
	//member.setMemberId(123456);
	//member.setMemberGrade("Hign Quality");
	// 두번째 방법. 속성 쓰기
	//session.setAttribute("t",member);
	// 세번째. application 속성
	//application.setAttribute("at",member );
%>
<jsp:useBean id="member" class = "my.inform.Member"/>
<jsp:setProperty property="*" name="member"/>
<% session.setAttribute("t",member); %>
<c:set var ="m" value ="<%=member%>"/>
멤버명:${m.memberName}<br>
멤버아이디:${m.memberId }<br>
멤버등급:${m.memberGrade }<br><br>

세션멤버명 : ${t.memberName }<br>
세선아이디:${t.memberId }<br>
세션등급:${t.memberGrade }<br><hr>

<%-- jsp usebean을 이용해서 input 통해 post 방식으로 받아서 출력하기 --%>
<jsp:useBean id="mem" class = "my.inform.Member"/>
<jsp:setProperty property="*" name="mem"/>
멤버명:${mem.memberName}<br>
멤버아이디:${mem.memberId}<br>
멤버등급:${mem.memberGrade }<br>
</body>
</html>