package com.niit.shoopofrontend.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shopoo.dao.CustomerDao;
import com.niit.shopoo.model.Customer;


@Controller
public class CustomerController {

	@Autowired
	CustomerDao customerDao;
	
	@RequestMapping(value="addCustomer", method=RequestMethod.POST)
	public String register(@ModelAttribute("custObj") Customer customer){
		customerDao.addCustomer(customer);
		
		return "login";
		
	}
	
	
}
