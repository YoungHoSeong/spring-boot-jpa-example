package com.example.service;

import java.util.List;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.example.domain.Customer;

/**
 * Created by Administrator on 2016-07-22.
 */

public interface ExampleService extends UserDetailsService {
    Customer findByUserId(String userId);
    List<Customer> findAll();
    List<Customer> findAll(Example<Customer> example);
    Page<Customer> findAllPage();
}
