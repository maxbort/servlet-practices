<%@page import="java.util.Date"%>
<%@page import="guestbook.vo.GuestBookVo"%>
<%@ page import="java.util.List"%>
<%@ page import="guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
	
   String name = request.getParameter("name");
   String password = request.getParameter("password");
   String content = request.getParameter("message");
   GuestBookVo vo = new GuestBookVo();
   vo.setName(name);
   vo.setPassword(password);
   vo.setContent(content);

   
   new GuestBookDao().insert(vo);
   
   response.sendRedirect("/guestbook1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>등록 성공</h1>
</body>
</html>