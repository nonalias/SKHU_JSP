<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int sum1=0;
	int sum2=0;
	
	for(int i=1;i<11;i++){
		sum1+=i;
		out.print(sum1);
		out.newLine();
	}
	out.write("<BR>");
	for(int j=1;j<11;j++){
		sum2+=j;
		out.println(sum2);
	}
	out.write("<br>");
	out.print("안녕하세요");
	out.print("JSP입니다.");
	%>
</body>
</html>