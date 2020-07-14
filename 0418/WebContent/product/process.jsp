<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date,my.info.Product" %>
<%@ page import = "java.util.Enumeration" %>   
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="product" class="my.info.Product"/>
<jsp:setProperty property="*" name="product"/>
<%
	product.setpDate(new Date());
%>
제품명(pName) : <%= product.getpName() %>
제조사(pMaker) : <%= product.getpMaker() %>
가격:<%=product.getPrice() %>
품질:<%= product.getpQuality() %> <br><hr><!-- 과연 출력이 될까? -->
<!-- jsp.usebean 통해서 객체 생성(info.Product class에 있는) / 아무 생성자가 없어서 기본 생성자가 사용된다 하지만 pQuality 는 파라미터 -->
<!-- 생성자가 값을 준다. 그래서 기본 생성자에선 출력이 불가능하다. -->
<%
	String name = request.getParameter("pName");
	String maker = request.getParameter("pMaker");
	int price = Integer.parseInt(request.getParameter("price"));
	Product pro = new Product(name,maker,price, new Date()); // pro 말고 product 쓰면 id에 있는 객체 product와 이름 겹쳐서 못씀
	session.setAttribute("PRO",pro);
	String uMaker = URLEncoder.encode(maker,"utf-8");
	String uName = URLEncoder.encode(name,"utf-8");
	response.sendRedirect("/0418/maker/view.jsp?maker="+uMaker+"&name="+uName);
	//파라미터로 지정된 URL에 get 방식으로 보내기
	// 파라미터 생성자로 pro라는 객체 생성
%>
<%-- <jsp:forward page="buyer.jsp"/>--%>
<!--  포워드는 URL 안바뀜. sendredirect 는 url을 타고 가는거라 url이 바뀐다. 포워드 방식 리다이렉트 방식 나올듯 -->
제품명(pName) : <%= pro.getpName() %>
제조사(pMaker) : <%= pro.getpMaker() %>
가격:<%=pro.getPrice() %>
품질:<%= pro.getpQuality() %>
<hr>
파라미터 이름:<br><br>
<ul>
<%
	Enumeration<String> params = request.getParameterNames();
	while(params.hasMoreElements()){
		String param = params.nextElement();
		out.print("<li>"+param+"</li>");
		}
%>
</ul>
</body>
</html>