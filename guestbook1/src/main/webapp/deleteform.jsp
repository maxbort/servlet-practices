<%@page import="guestbook.vo.GuestBookVo"%>
<%@ page import="java.util.List"%>
<%@ page import="guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
	
	String no = request.getParameter("no");   
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GuestBook</title>
</head>
<body>
	<form method="post" action="delete.jsp">
	<input type='hidden' name="no" value="<%= no %>">
	<table>
		<tr>
			<td>input your password</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="submit"></td>
		</tr>
	</table>
	</form>
</body>
</html>