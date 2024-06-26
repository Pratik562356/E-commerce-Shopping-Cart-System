package com.jsp.shoppingcart.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart.dao.CustomerDao;
import com.jsp.shoppingcart.dto.Customer;
import com.jsp.shoppingcart.dto.Merchant;


@Controller
public class CustomerController {

	
	
	@Autowired
	CustomerDao cdao;
	
	@RequestMapping("/addcustomer")
	public ModelAndView addcustomer() {
		Customer customer=new Customer();
		ModelAndView mav=new ModelAndView();
		mav.addObject("customerobj", customer);
		mav.setViewName("customerform");
		
		return mav;
	}
	
	@RequestMapping("/savecustomer")
	public ModelAndView savecustomer(@ModelAttribute("customerobj") Customer c) {
		cdao.saveCustomer(c);
		ModelAndView mav=new ModelAndView();
		mav.addObject("message", "data saved successfully");
		mav.setViewName("customerloginform");
		return mav;
	}
	
	@RequestMapping("/customerloginvalidation")
	public ModelAndView loginvalidation(ServletRequest req, HttpSession sesion) {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Customer c=cdao.login(email, password);
		ModelAndView mav=new ModelAndView();
		if(c!=null) {
			mav.addObject("msg", "LogIn Successful...");
			mav.setViewName("customeroptions");
			sesion.setAttribute("customerinfo", c);
			return mav;
		}else {
			mav.addObject("msg", "Invalid Credentials...Please Try again!!!");
			mav.setViewName("customerloginform");
			return mav;
		}
	}
}
