<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Exercise2_1</title>
</head>
<body>

<%
String strNum;
int intNum;
double dblNum;
float fltNum;
byte bytNum;

strNum="1";
intNum=Integer.parseInt(strNum);
dblNum=Double.parseDouble(strNum);
bytNum=Byte.parseByte(strNum);
%>
String : <%=strNum%> <BR>
Integer : <%=intNum %> <BR>

double : <%=dblNum %><BR>
Byte : <%=bytNum %><BR><BR>

<%
strNum="-1";

intNum = Integer.parseInt(strNum);
dblNum = Double.parseDouble(strNum);
bytNum = Byte.parseByte(strNum);

%>
String : <%=strNum%> <BR>
Integer : <%=intNum %> <BR>

double : <%=dblNum %><BR>
Byte : <%=bytNum %><BR><BR>

<%
strNum="1.234";

dblNum = Double.parseDouble(strNum);
fltNum = Float.parseFloat(strNum);
%>
String : <%=strNum%> <BR>
double : <%=dblNum %><BR>
Float : <%=fltNum %> <BR><BR>

<%
strNum="-1.234";

dblNum = Double.parseDouble(strNum);
fltNum = Float.parseFloat(strNum);
%>
String : <%=strNum%> <BR>
double : <%=dblNum %><BR>
Float : <%=fltNum %> <BR>
</body>
</html>