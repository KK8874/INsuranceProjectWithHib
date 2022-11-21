package com.infinite.InsuranceMangementWithHibertnate;

public class Dumm {
public static void main(String[] args) {
	CustomerDAO dao=new CustomerDAO();
	System.out.println(dao.searchCustomerById("C018"));
}
}
