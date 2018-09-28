<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body><% 
java.util.Calendar cal=java.util.Calendar.getInstance(); 
int count=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
out.print(count);
%>
</body>
</html>