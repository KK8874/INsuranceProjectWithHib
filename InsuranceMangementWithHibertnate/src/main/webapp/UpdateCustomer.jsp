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

<form>
      <center>

			Customer Id:
			<input type="text" name="customerId"/><br/><br/>
			Customer Name:
			<input type="text" name="customerName"/><br/><br/>
			Customer Designation:
			<input type="text" name="customerDesignation"/><br/><br/>
			Customer Email:
			<input type="text" name="customerEmail"/><br/><br/>
			Customer Address
			<input type="text" name="customerAddress"/><br/><br/>
			Customer Contact
			<input type="number" name="customerContact"/><br/><br/>
			<input type="submit" value="Update Customer"/>
			
			
        </center>
</form>

<c:if test="${param.customerId !=null && param.customerName !=null}">
      <jsp:useBean id="beanCustomer" class="com.infinite.InsuranceMangementWithHibertnate.Customer"/>
      
      <jsp:setProperty property="*" name="beanCustomer"/>
      <jsp:useBean id="dao" class="com.infinite.InsuranceMangementWithHibertnate.CustomerDAO" />
      <c:out value="${dao.updateCustomer(beanCustomer) }"></c:out>
     
</c:if>




</body>
</html>