<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
java.util.Calendar cal=java.util.Calendar.getInstance();
out.print(cal.getMinimalDaysInFirstWeek());
%>
</body>
</html>