<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<jsp:include page="navbar.jsp" />
	
	<c:if test="${param.customerName != null }">
		<jsp:useBean id="dao" class="com.infinite.InsuranceMangementWithHibertnate.CustomerDAO" />
		<jsp:useBean id="customer" class="com.infinite.InsuranceMangementWithHibertnate.Customer" />
		<jsp:setProperty property="*" name="customer"/>
		<c:out value="${dao.addcustomer(customer)}" />
	</c:if>

	<section class="gradient-custom">
	    <div class="container py-5">
	        <div class="row d-flex justify-content-center align-items-center">
	            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
	                <div class="card bg-dark text-white" style="border-radius: 1rem;">
	                    <div class="card-body p-5 text-center">
                            <h2 class="fw-bold mb-2 text-uppercase">Add Customer</h2>
                            <p class="text-white-50 mb-5">Please enter your details carefully!</p>
                            <form>
	                            <div class="form-outline form-white mb-4">
	                                <input type="text" class="form-control form-control-lg" name="customerName" placeholder="Name"/>
	                            </div>
	                            
	                            <div class="form-outline form-white mb-4">
	                                <input type="text" class="form-control form-control-lg" name="customerDesignation" placeholder="Designation"/>
	                            </div>
	                            
	                            <div class="form-outline form-white mb-4">
	                                <input type="text" class="form-control form-control-lg" name="customerEmail" placeholder="Email"/>
	                            </div>
	                            
	                            <div class="form-outline form-white mb-4">
	                                <input type="text" class="form-control form-control-lg" name="customerAddress" placeholder="Address"/>
	                            </div>
	                            
	                            <div class="form-outline form-white mb-4">
	                                <input type="text" class="form-control form-control-lg" name="customerContact" placeholder="Contact"/>
	                            </div>
	                            
	                            <button class="btn btn-outline-light btn-lg px-5" type="submit">SUBMIT</button>
                            </form>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
</body>
</html>