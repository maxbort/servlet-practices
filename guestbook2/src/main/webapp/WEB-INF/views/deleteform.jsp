<%@page import="guestbook.vo.GuestBookVo"%>
<%@ page import="java.util.List"%>
<%@ page import="guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GuestBook</title>
</head>
<body>
	<form method="post" action="<%=request.getContextPath() %>/gb">
	<input type="hidden" name="a" value="delete">
	<input type='hidden' name='no' value='<%=request.getParameter("no") %>'>
	<table>
		<tr>
			<td>input your password</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="submit"></td>
		</tr>
	</table>
	<br>
		<a href="<%=request.getContextPath() %>/gb">back to main</a>
	</form>
</body>
</html>