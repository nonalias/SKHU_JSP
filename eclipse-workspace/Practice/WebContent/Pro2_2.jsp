<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<title>Pro2_2</title>
<%
String yoil[]={"일","월","화","수","목","금","토"};
Calendar cal=Calendar.getInstance();
int year=cal.get(Calendar.YEAR);
int month=cal.get(Calendar.MONTH);
int date=cal.get(Calendar.DATE);

String stryear=request.getParameter("year");
String strmonth=request.getParameter("month");
String strdate=request.getParameter("date");
if(stryear!=null){
	year=Integer.parseInt(stryear);
	month=Integer.parseInt(strmonth);
	date=Integer.parseInt(strdate);
}

String today=year+"-"+(month+1)+"-"+date;
cal.set(year,month,date);
int starts=cal.get(Calendar.DAY_OF_WEEK);
int last=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<div style="width:33%;text-align: left;float:left;">
		<a href="./Pro2_2.jsp?year=<%=(year-1) %>&month=<%=month %>&date=<%=date %>">
			◀&nbsp;
		</a>
		<%=year%>년
		<a href="./Pro2_2.jsp?year=<%=(year+1) %>&month=<%=month %>&date=<%=date %>">
			▶&nbsp;
		</a>
	</div>
	
	<div style="width:33%;text-align: center;float:left;">
		<a href="./Pro2_2.jsp?year=<%=year %>&month=<%=(month==0)?month:(month-1) %>&date=<%=date%>">
			◀&nbsp;
		</a>
		<%=(month+1) %>월
		<a href="./Pro2_2.jsp?year=<%=year %>&month=<%=(month==11)?month:(month+1) %>&date=<%=date%>">
			▶&nbsp;
		</a>
	</div >
	
	<div style="width:33%;text-align: right;float:left;">
		<%=today %>
	</div>
</div>
<Table border="1px solid black">
<TR>
<%
for(int i=0;i<7;i++){
%>
<th><%=yoil[i] %></th>
<%} %>
</TR>
<%
int r=7;
int c=7;
r=r-1;
Boolean p=true;
int start=0;
out.write("<style> table,th,td{border-collapse : collapse} table{width:100%} table{height:300px}</style>");
loop1 :for(int i=0;i<r;i++){
	
	out.write("<TR>");
	for(int j=0;j<c;j++){
		if(start==last)
			break loop1;
		start+=1;
		
		if(p==true){
		for(int k=1;k<starts;k++){
			out.write("<Th></Th>");
			j++;
			p=false;
			}
		
		
		}
		out.write("<Th>");
		out.print(start);
		out.write("</Th>");
		
		
	}
	out.write("</TR>");

}
%>

</Table>
</body>
</html>