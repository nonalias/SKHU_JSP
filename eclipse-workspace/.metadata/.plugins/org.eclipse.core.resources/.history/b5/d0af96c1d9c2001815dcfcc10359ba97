<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Project2_2</title>
</head>
<body >
<div>
<%

int r=7;
int c=7;
int i;
java.util.Calendar cal=java.util.Calendar.getInstance(); 
int count=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
int year=cal.get(java.util.Calendar.YEAR);
int month=cal.get(java.util.Calendar.MONTH)+1;
int date=cal.get(java.util.Calendar.DATE);
String today=year+"-"+month+"-"+date;

out.write("<div style=\"border :1px solid white; float: left; width: 33%; text-align:center;\">"+year+"년</div>");
out.write("<div style=\"border :1px solid white; float: left; width: 33%;text-align:center;\">"+month+"월</div>");
out.write("<div style=\"border :1px solid white; float: left; width: 33%;text-align : center;\">"+today+"</div>");


out.write("<TABLE border=\"1px solid black\" >"); out.write("<TR>");
out.write("<Th>일</Th>");
out.write("<Th>월</Th>");
out.write("<Th>화</Th>");
out.write("<Th>수</Th>");
out.write("<Th>목</Th>");
out.write("<Th>금</Th>");
out.write("<Th>토</Th>");
out.write("</TR>");
r=r-1;
Boolean p=true;
int start=0;
out.write("<style> table,th,td{border-collapse : collapse} table{width:100%} table{height:300px}</style>");
loop1 :for(i=0;i<r;i++){
	
	out.write("<TR>");
	for(int j=0;j<c;j++){
		if(start==count)
			break loop1;
		start+=1;
		
		if(p==true){
		for(int k=1;k<Calendar.DAY_OF_WEEK;k++){
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


out.write("</TABLE>");

%>
</div>
</body>
</html>