<%@page import="guestbook.vo.GuestBookVo"%>
<%@ page import="java.util.List"%>
<%@ page import="guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   List<GuestBookVo> list = new GuestBookDao().findAll();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>guestbook</title>
</head>
<body>
	<form action="add.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<td>name</td><td><input type="text" name="name"></td>
			<td>password</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE="post"></td>
		</tr>
	</table>
	</form>
	<br>
	<%
      for(GuestBookVo vo : list) {
   %>
	<table width=510 border=1>
		<tr>
			<td><%=vo.getNo() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getDatetime() %></td>
			<td><a href="deleteform.jsp?no=<%= vo.getNo() %>">delete</a></td>
		</tr>
		<tr>
			<td><%=vo.getContent() %></td>
		</tr>
	</table>
	<%
      }
	%>
</body>
</html>