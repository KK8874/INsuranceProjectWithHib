<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Account Page</title>

<style type="text/css">
.logout
{ margin-top: -20px; margin-left: 290px; height: 30px;}

</style>
</head>
<body>
<br/>
<%
  String user=(String)session.getAttribute("user");
  out.println("Welcome <b>" +user+"</b>");
  
%>
<br/><br/>
<div class="logout">
<input type="button" name="logout" value="Logout" onclick="window.location='index.html'">
</div>


<div>
<a href="CustomerShow.jsp">CustomerDetail</a>
</div>
<div>
<a href="history.jsp">bookingdetails</a>
</div>
<div>
<a href="history.jsp">lapseddetails</a>
</div>

<div>
<a href="history.jsp">payment</a>
</div>
<div>
<a href="history.jsp">paymentdetails</a>
</div>
<div>
<a href="history.jsp">policydetails</a>
</div>

<div>
<a href="history.jsp">policyloan</a>
</div>

<div>
<a href="history.jsp">policysurrenderdetails</a>
</div>
</body>
</html>