package com.infinite.InsuranceMangementWithHibertnate;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class CustomerDAO {
	
	
	SessionFactory sessionFactory;
	
	
	public List<Customer> showCustomer(){
		sessionFactory=SessionHelper.getConnection();
		Session session=sessionFactory.openSession();
	//	Criteria cr=session.createCriteria(Customer.class);
		Query query=session.createQuery("from Customer");
		List<Customer> customerList=query.list();
		return customerList;
			}
	
	public String GenerateCustomerid() {    
		sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Criteria cr = session.createCriteria(Customer.class);
        List<Customer> customerList = cr.list();
        session.close();
        if( customerList.size()==0) {
            return "c001";
    
        }
        else {
            String id = customerList.get(customerList.size()-1).getCustomerId();
            int id1 = Integer.parseInt(id.substring(1));
            id1++;
            String id2 = String.format("C%03d", id1);
            return id2;        
        }    
    }
    public String addcustomer(Customer customer) {
		sessionFactory=SessionHelper.getConnection();
		Session session=sessionFactory.openSession();
		
		customer.setCustomerId(GenerateCustomerid());
		
		Transaction tr=session.beginTransaction();
		session.save(customer);
		tr.commit();
		return "Customer Added...";
		
   }
	
   public String updateCustomer(Customer customer ){
	   sessionFactory=SessionHelper.getConnection();
	   Session session=sessionFactory.openSession();
	   Transaction transaction = session.beginTransaction();
	   session.saveOrUpdate(customer);
	   transaction.commit();
		
	   return "Update Customer";
   }
   
   public Customer searchCustomerById(String customerId) {
	    sessionFactory=SessionHelper.getConnection();
		Session session=sessionFactory.openSession();
		Criteria cr=session.createCriteria(Customer.class);
		cr.add(Restrictions.eq("customerId", customerId));
		List<Customer> cutlist=cr.list();
		
		return cutlist.get(0);
   }
   
   public String DeleteCustomer(String customerId){
	   sessionFactory=SessionHelper.getConnection();
		Session session=sessionFactory.openSession();
		Customer cust=searchCustomerById(customerId);
		Transaction tr=session.beginTransaction();
		session.delete(cust);
		tr.commit();
		return "deleted";
		
   }
   public  int Customerlogin(String customerId, String customerEmail) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		
		Criteria criteria = session.createCriteria(Customer.class);
		criteria.add(Restrictions.eq("customerId", customerId));
		criteria.add(Restrictions.eq("customerEmail", customerEmail));
		List<Customer> listLogin = criteria.list();
		return listLogin.size();
	}
   
   

}
