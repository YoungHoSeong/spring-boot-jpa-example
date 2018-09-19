package com.example.config;

import com.example.service.ExampleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private ExampleService service;

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/css/**", "/js/**", "/images/**", "/resources/**", "/webjars/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
            .antMatchers("/index").permitAll()
            .antMatchers("/hello").hasAnyAuthority("ROLE_ADMIN", "ROLE_USER")
            .antMatchers("/customer").hasAuthority("ROLE_ADMIN")
            .antMatchers("/find").hasAuthority("ROLE_ADMIN")
            .antMatchers("/").permitAll().antMatchers("/home").permitAll().antMatchers("/loginForm").permitAll()
            .anyRequest().authenticated()
        .and()
        	.formLogin()
            .loginPage("/loginForm")
            .loginProcessingUrl("/login")
            .successHandler(successHandler())
            .failureHandler(failureHandler())
            .permitAll()
        .and()
            .exceptionHandling().authenticationEntryPoint(new AuthenticationEntryPoint("/loginForm"))
        .and()
        	.logout()
        .and()
        	.csrf().disable();
    }


	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
	    auth.userDetailsService(service);
	}

    /**
   	 * Success handler.
   	 * @return the authentication success handler
   	 */
	@Bean
	public CustomLoginSuccessHandler successHandler() {
	    return new CustomLoginSuccessHandler();
	}
	
	
	/**
	 * Failure handler.
	 * @return the admin authentication failure handler
	 */
	@Bean
	public CustomLoginFilureHandler failureHandler() {
		return new CustomLoginFilureHandler();
	}
}