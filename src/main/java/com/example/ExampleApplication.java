package com.example;

import com.example.domain.Customer;
import com.example.repository.CustomerRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class ExampleApplication {

	private static final Logger log = LoggerFactory.getLogger(ExampleApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(ExampleApplication.class, args);
	}

	@Bean
	public CommandLineRunner demo(CustomerRepository repository) {
		return (args) -> {
			// save a couple of customers
			repository.save(new Customer("admin", "admin", "Jack", "ROLE_ADMIN"));
			repository.save(new Customer("super", "admin", "Chan", "ROLE_ADMIN"));
			repository.save(new Customer("user", "user", "Chloe", "ROLE_USER"));
			repository.save(new Customer("user1", "user1", "Bauer", "ROLE_USER"));
		};
	}
}
