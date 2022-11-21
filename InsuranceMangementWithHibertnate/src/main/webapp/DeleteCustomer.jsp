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

	<jsp:useBean id="beanDao" class="com.infinite.InsuranceMangementWithHibertnate.CustomerDAO"/>
    <form method="get" action="DeleteCustomer.jsp">
        <center>
        Customer Id:
            <input type="text" name="customerId" /> <br/><br/>
            <input type="submit" value="Delete" />
        </center>
    </form>
    <c:if test="${param.customerId!=null}">
    <c:set var="customerId" value="${param.customerId}"/>
        <c:set var="customer" value="${beanDao.DeleteCustomer(customerId)}"/>
        <c:if test="${cutomerId!=null}">
        Customer Id :  <b>
            <c:out value="${customer.customerId}"/></b> <br/>
        Customer Name : <b>
            <c:out value="${customer.customerName}"/></b> <br/>
        Customer Designation: <b>
            <c:out value="${customer.customerDesignation}"/></b> <br/>
        Customer Email: <b>
            <c:out value="${customer.customerEmail}"/></b> <br/>
        Customer Address:<b>
        <c:out value="${customer.customerAddress}"/></b><br>
         Customer Contact:<b>
        <c:out value="${customer.customerContact}"/></b><br>
       
        
        </c:if>
    </c:if>





</body>
</html>