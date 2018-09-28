<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
// 달력객체생성
ava.util.Calendar cal = java.util.Calendar.getInstance();

//request 내장객체를이용하여년월 일을받아옴
tring srtyear = request.getParameter("year");
String srtmonth = request.getParameter("month");
String srtdate = request.getParameter("date");

//현재날짜값초기화
nt year = cal.get(java.util.Calendar.YEAR);
int month = cal.get(java.util.Calendar.MONTH);
int date = cal.get(java.util.Calendar.DATE);
//조건문을통해서ost방식으로넘어온인자ear, month, date값대입
f (srtyear != null) {
year = Integer.parseInt(srtyear);
month = Integer.parseInt(srtmonth);
date = Integer.parseInt(srtdate);
}
//
cal.set(year,month,1); //**날짜를객체에세팅
/필요한변수월별일수 시작요일
nt startDay = cal.getMinimum(java.util.Calendar.DATE);

int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH); // 달의마지막날짜

nt start = cal.get(java.util.Calendar.DAY_OF_WEEK); //시작요일

nt newLine = 0;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Project2_2</title>
</head>
<body>
<table width="100%" border="0">
<tr>
<th><a href="./project2_2.jsp?year=<%=year - 1%>&month=<%=month%>&date=1">&nbsp;</a>
<%=year%>년
<a href="./project2_2.jsp?year=<%=year + 1%>&month=<%=month%>&date=1">&nbsp;</a>
</th>
<th><a href="./project2_2.jsp?year=<%=year%>&month=<%=month - 1%>&date=1">&nbsp;</a>
<%=month+1%>월
<a href="./project2_2.jsp?year=<%=year%>&month=<%=month + 1%>&date=1">&nbsp;</a>
</th>
<th><%=year%>-<%=month + 1%>-<%=date%></th>
</tr>
</table>
<table align="center" width="80%" height="50" border="1">
<tr align="center">
<th>일/th>
<th>월/th>
<th>화/th>
<th>수/th>
<th>목/th>
<th>금/th>
<th>토/th>
</tr>
<tr>
<!-- for문장을통한테이블생성->

<!-- 1일시작전까지빈테이블생성->
<%
for (int index = 1; index < start; index++) {
%>
<td>&nbsp;</td>
<%
newLine++;
}
%>

<%
for (int index = 1; index <= endDay; index++) {
%>
<td align="center" width="100" height="40"><font
color="<%=(newLine == 0) ? "RED" : "BLACK"%>"><%=index%></font></td>
<%
newLine++;
if (newLine == 7) {
out.print("</TR>");
if (index <= endDay) {
out.print("<TR>");
}
newLine = 0;
}
%>
<%
}
%>
<%
while (newLine > 0 && newLine < 7) {
out.print("<TD>&nbsp;</TD>");
newLine++;
}
%>

</table>
</body>
</html>