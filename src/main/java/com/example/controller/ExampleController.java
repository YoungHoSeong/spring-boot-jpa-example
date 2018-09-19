package com.example.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.Customer;
import com.example.service.ExampleService;

/**
 * Created by Administrator on 2016-07-21.
 */
@Controller
public class ExampleController {
    private static final Logger log = LoggerFactory.getLogger(ExampleController.class);

    @Autowired
    ExampleService service;

    @RequestMapping("/index")
    public String index(HttpServletRequest requst, HttpServletResponse response, Model model) {

        System.out.println("***************  Index Controller  *****************");
        System.out.println("IP  :::  "+requst.getRemoteAddr());
        return "index";
    }

    @RequestMapping("/customer")
    public String customer(HttpServletRequest requst, HttpServletResponse response, Model model) {

        model.addAttribute("customerList", service.findAllPage());

        return "customer";
    }

    @RequestMapping(value = "/loginForm", method = RequestMethod.GET)
    public String loginPage(HttpServletRequest request) {
        String referrer = request.getHeader("Referer");
        request.getSession().setAttribute("referrer", referrer);
        return "loginForm";
    }
    
/*    @RequestMapping("/find")
    public String find(HttpServletRequest requst, HttpServletResponse response, Model model) {
    	Customer customer = new Customer();
    	customer.setUserName("user");
    	
    	ExampleMatcher matcher = ExampleMatcher.matchingAny().withIgnoreNullValues().withStringMatcher(ExampleMatcher.StringMatcher.CONTAINING);
		Example<Customer> example = Example.of(customer, matcher);
		
        model.addAttribute("customerList", service.findAll(example));

        return "customer";
    }*/
}
