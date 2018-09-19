package com.example.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.LoginUrlAuthenticationEntryPoint;

public class AuthenticationEntryPoint extends LoginUrlAuthenticationEntryPoint {

	public AuthenticationEntryPoint(String loginFormUrl) {
		super(loginFormUrl);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authenticationException)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		String ajaxHeader = ((HttpServletRequest)request).getHeader("X-Requested-With");
        boolean isAjax = "XMLHttpRequest".equals(ajaxHeader);
		
		if (isAjax) {
		    response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "AjaxREquest Denied (Session Expired)");
		} else {
		    super.commence(request, response, authenticationException);
		}
	}

}
