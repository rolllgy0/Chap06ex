<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h3>작성하신 내용은 다음과 같습니다.</h3>
<%
	String name = request.getParameter("name");
	out.println("이름: " + name);
	out.println("<br/><hr>");
	String gender = request.getParameter("gender");
	out.println("성별: " + gender);
	out.println("<br/><hr>");
	String id = request.getParameter("id");
	out.println("아이디: " + id);
	out.println("<br/><hr>");
	String addr = request.getParameter("addr");
	out.println("주소: " + addr);
	out.println("<br/><hr>");
	String phone = request.getParameter("phone");
	out.println("전화번호: " + phone);
	out.println("<br/><hr>");
	String email = request.getParameter("email");
	out.println("이메일주소: " + email);
	out.println("<br/><hr>");
%>
취미:<br/> 
<%
	String[] inter = request.getParameterValues("interest");
	if(inter!=null){
		out.println("<table border=\"1\">");
		for(String temp : inter){
			out.println("<tr>");
			out.println("<th width=\"80\">" + temp + "</th>");
			out.println("</tr>");
		}
		out.println("</table>");
	}else{
		out.println("[선택한 취미가 없습니다]");
	}
%>
</body>
</html>