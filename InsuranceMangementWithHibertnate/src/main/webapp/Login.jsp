<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
	<form method="POST" action="Login.jsp">
	     CustomerID:
		<input type="text" name="customerId"><br><br/>
		Customer Email :
		<input type="text" name="customerEmail"><br><br/>
		
		<input type="submit" value="Login"><br>
	</form>
	
	<c:if test="${param.customerId != null && param.customerEmail != null }">
		<jsp:useBean id="beanInsuranceUsers" class="com.infinite.InsuranceMangementWithHibertnate.Customer" />
		<jsp:setProperty property="*" name="beanInsuranceUsers"/>
		<jsp:useBean id="beanDao" class="com.infinite.InsuranceMangementWithHibertnate.CustomerDAO"/>
		<c:set var="customerId" value="${param.customerId }"/>
		<c:set var="customerEmail" value="${param.customerEmail }"/>
		<c:set var="count" value="${beanDao.Customerlogin(customerId, customerEmail) }" />
		<c:if test="${count==1}">
			<c:set var="cust" value="${cust}" scope="session" />
			<jsp:forward page="menu.jsp"/>
		</c:if>
		<c:if test="${count==0}">
			<c:out value="Invalid Credentials..."/>
		</c:if>
	</c:if>


</body>
</html>