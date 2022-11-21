<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="beanDao" class="com.infinite.InsuranceMangementWithHibertnate.CustomerDAO"/>
    <form method="get" action="SearchCustomer.jsp">
        <center>
        Customer Id:
            <input type="text" name="customerId" /> <br/><br/>
            <input type="submit" value="Search" />
        </center>
    </form>
    <c:if test="${param.customerId != null}">
    <c:set var="cutomerId" value="${param.customerId}"/>
        <c:set var="customer" value="${beanDao.searchCustomerById(cutomerId)}"/>
        <c:if test="${customer != null}">
        
        <table border="5" align="center">
    <tr>
        <th>Customer Id</th>
        <th>Customer Name</th>
        <th>Customer Designation</th>
        <th>Customer Email</th>
        <th>Customer Address</th>
        <th> Customer Contact</th>
        <th>Update Customer</th>
        <th>Delete Customer</th>
        
    </tr>
        <tr>
            <td>${customer.customerId}</td>
            <td>${customer.customerName}</td>
            <td>${customer.customerDesignation}</td>
            <td>${customer.customerEmail}</td>
            <td>${customer.customerAddress}</td>
            <td>${customer.customerContact}</td>
         <td>
        	<a href="UpdateCustomer.jsp">Update Customer</a>
        </td>
        <td>
        	<a href="DeleteCustomer.jsp">Delete Customer</a>
        </td>
           
          </tr>  
           
  
    </table>
    </c:if></c:if>
</body>
</html>