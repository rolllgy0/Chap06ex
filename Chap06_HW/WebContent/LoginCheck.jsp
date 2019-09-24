<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%
	Date now = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
	SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장객체의 로그</title>
</head>
<body>
	<%String name = request.getParameter("name"); %>
	<h2>[<%=name %>]님 접속을 환영합니다.</h2>
	<h3>접속하신 날짜 및 시간은 <%=date.format(now) %> <%=time.format(now) %> 입니다.</h3>
	<%
		application.log(date.format(now)+" "+time.format(now)+" : ["+name+"] 로그인");
	%>
</body>
</html>