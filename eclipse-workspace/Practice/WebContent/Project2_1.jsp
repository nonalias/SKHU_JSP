<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Project2_1</title>
</head>
<body>
<%
String str="Hello, Welcome to JSP World! Lets Go!";%>
<% 
out.print("�Է� �Ǿ� �ִ� ���ڿ��� ���̴� "+str.length()+"�Դϴ�."); %> <BR>
<%
out.print("\"JSP\"��� ���ڴ� "+str.indexOf("JSP")+"��°�� ��ġ�� �ֽ��ϴ�.");%><BR><BR>
<%
out.print("�Է� ���ڿ��� �ҹ��ڷ� ��ȯ�� �����"+str.toLowerCase()+"�Դϴ�.");%><BR>
<%
out.print("�Է� ���ڿ��� �빮�ڷ� ��ȯ�� �����"+str.toUpperCase()+"�Դϴ�.");%><BR>

</body>
</html>