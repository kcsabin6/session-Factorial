<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#d6d676">

<span style="color:red; font-size:15px"> ${ApplicationMessage} </span>

<form action="sessionServlet" method="post">
<br>
Enter the number : 
<input type="text" name="num" />
<br><br>

Store in session : 
<input type="checkbox" name="store" value="yes" />
<br><br>

<input type="submit" value="Factorial">
<br><hr>
Result is : 
<%-- <label>${pnum}</label> --%>
<%=request.getAttribute("pnum") %>
<br>
<label style="color:red; font-size:20px">
<a href="showSessionData1.jsp">Show session data</a>
&nbsp;
<a href="sessionLogout">Logout</a>
</label>
<hr>

</form>



</body>
</html>