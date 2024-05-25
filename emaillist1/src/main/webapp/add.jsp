<%@page import="emaillist.vo.EmailListVo"%>
<%@page import="emaillist.dao.EmailListDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");

   String firstName = request.getParameter("fn");
   String lastName = request.getParameter("ln");
   String email = request.getParameter("email");
   
   EmailListVo vo = new EmailListVo();
   vo.setFirstName(firstName);
   vo.setLastName(lastName);
   vo.setEmail(email);
   
   new EmailListDao().insert(vo);
   
   response.sendRedirect("/emaillist1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>성공적으로 이메일이 등록 되었습니다.</h1>
</body>
</html>