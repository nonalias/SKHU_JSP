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
out.print("입력 되어 있는 문자열의 길이는 "+str.length()+"입니다."); %> <BR>
<%
out.print("\"JSP\"라는 문자는 "+str.indexOf("JSP")+"번째에 위치해 있습니다.");%><BR><BR>
<%
out.print("입력 문자열을 소문자로 변환한 결과는"+str.toLowerCase()+"입니다.");%><BR>
<%
out.print("입력 문자열을 대문자로 변환한 결과는"+str.toUpperCase()+"입니다.");%><BR>

</body>
</html>