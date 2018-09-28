<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Exercise2_2</title>
</head>
<body>
<%
int Sum=0;
int Num=1;
for(Num=1;Num<50;Num=Num+5){
	if(Num==1)
	{
		Sum=Sum+Num;
		out.print(Num);
	}
	else if((Num%2)==1)
	{
		Sum=Sum+Num;
		out.print("+"+Num);
	}
	else{
		Sum=Sum-Num;
		out.print("-"+Num);
		
	}
}
out.print("="+Sum);
%>
</body>
</html>