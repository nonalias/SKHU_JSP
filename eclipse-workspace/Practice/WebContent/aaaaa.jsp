<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
// �޷°�ü����
ava.util.Calendar cal = java.util.Calendar.getInstance();

//request ���尴ü���̿��Ͽ���� �����޾ƿ�
tring srtyear = request.getParameter("year");
String srtmonth = request.getParameter("month");
String srtdate = request.getParameter("date");

//���糯¥���ʱ�ȭ
nt year = cal.get(java.util.Calendar.YEAR);
int month = cal.get(java.util.Calendar.MONTH);
int date = cal.get(java.util.Calendar.DATE);
//���ǹ������ؼ�ost������γѾ������ear, month, date������
f (srtyear != null) {
year = Integer.parseInt(srtyear);
month = Integer.parseInt(srtmonth);
date = Integer.parseInt(srtdate);
}
//
cal.set(year,month,1); //**��¥����ü������
/�ʿ��Ѻ��������ϼ� ���ۿ���
nt startDay = cal.getMinimum(java.util.Calendar.DATE);

int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH); // ���Ǹ�������¥

nt start = cal.get(java.util.Calendar.DAY_OF_WEEK); //���ۿ���

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
<%=year%>��
<a href="./project2_2.jsp?year=<%=year + 1%>&month=<%=month%>&date=1">&nbsp;</a>
</th>
<th><a href="./project2_2.jsp?year=<%=year%>&month=<%=month - 1%>&date=1">&nbsp;</a>
<%=month+1%>��
<a href="./project2_2.jsp?year=<%=year%>&month=<%=month + 1%>&date=1">&nbsp;</a>
</th>
<th><%=year%>-<%=month + 1%>-<%=date%></th>
</tr>
</table>
<table align="center" width="80%" height="50" border="1">
<tr align="center">
<th>��/th>
<th>��/th>
<th>ȭ/th>
<th>��/th>
<th>��/th>
<th>��/th>
<th>��/th>
</tr>
<tr>
<!-- for�������������̺����->

<!-- 1�Ͻ��������������̺����->
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