package com.example.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.config.CustomUser;
import com.example.domain.Customer;
import com.example.repository.CustomerRepository;
import com.example.service.ExampleService;

/**
 * Created by Administrator on 2016-07-22.
 */
@Service("exampleService")
public class ExampleServiceImpl implements ExampleService {

    private static final Logger log = LoggerFactory.getLogger(ExampleServiceImpl.class);

    @Autowired
    CustomerRepository repository;

    @Override
    public Customer findByUserId(String userId) {
        return repository.findByUserId(userId);
    }

    @Override
    public List<Customer> findAll() {
        return repository.findAll();
    }

    @Override
    public Page<Customer> findAllPage() {
        Pageable page = new PageRequest(0, 2);

        return repository.findAll(page);
    }

    @Override
    public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
        Customer customer = repository.findByUserId(userId);
        List<GrantedAuthority> authorities = buildUserAuthority(customer.getUserRole());

        return buildUserForAuthentication(customer, authorities);
    }

    private CustomUser buildUserForAuthentication(Customer customer, List<GrantedAuthority> authorities) {

        return new CustomUser.Builder(customer.getUserId(), customer.getUserPassword(),
                true, true, true, true, authorities).userSeq(customer.getId()).userName(customer.getUserName()).build();
    }

    private List<GrantedAuthority> buildUserAuthority(String userRoles) {
    	List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority(userRoles));

        return authorities;
    }

	@Override
	public List<Customer> findAll(Example<Customer> example) {
		// TODO Auto-generated method stub
		return repository.findAll(example);
	}
}
