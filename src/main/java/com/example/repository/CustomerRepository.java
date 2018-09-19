package com.example.repository;

import com.example.domain.Customer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface CustomerRepository extends JpaRepository<Customer, String> {

    Customer findByUserId(String userId);

    List<Customer> findAll();

    Page<Customer> findAll(Pageable pageable);

    List<Customer> findAllByOrderById();

    List<Customer> findAllByOrderByUserName();
}