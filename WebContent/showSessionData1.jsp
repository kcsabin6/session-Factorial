<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#d6d676">

<h2>Session Data </h2>
<br><br>
<table border="1" style="width: 500px;">
<tr style="background-color: voilet;">
<td>S No</td>
<td>Num</td>
<td>Factorial</td>
</tr>

<% Map<String,String> mapData=(Map<String,String>)session.getAttribute("mapData");
   if(mapData!=null){
	   Set<Map.Entry<String, String>> rows=mapData.entrySet();
	   int count=0;
	   
	   for(Map.Entry<String, String> row:rows){
		   %>
		   <tr>
		   <td><%=++count%></td>
		   <td><%=row.getKey()%></td>
		   <td><%=row.getValue()%></td>
		   </tr>
		   
		   <%
	   }
   }

%>



</table>

<table border="1" style="width: 500px;">
<tr style="background-color: voilet;">
<td>S No</td>
<td>Num</td>
<td>Factorial</td>
</tr>
<br>
<h3>Using jslt tag<h3></h3>
&nbsp;
<c:forEach items="${mapData}" var="mapData" varStatus="cc">
		  
		   <tr>
		   
		   <td>${cc.count}</td>
		   <td>${mapData.getKey()}</td>
		   <td>${mapData.getValue()}</td>
		   </tr>
		   </c:forEach>




</table>



</body>
</html>