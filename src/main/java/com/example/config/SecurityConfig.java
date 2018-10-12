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
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

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
        	.logout().deleteCookies("JSESSIONID")
        .and()
			.rememberMe().key("uniqueAndSecret").tokenValiditySeconds(86400)
		.and()
        	.csrf().disable();
        //token-validity-seconds – The expire date of “remember-me” cookie, in seconds. For example, 1209600 = 2 weeks (14 days), 86400 = 1 day, 18000 = 5 hours.
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