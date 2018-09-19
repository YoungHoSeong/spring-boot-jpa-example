package com.example.config;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Set;

/**
 * Created by Administrator on 2016-07-28.
 */
public class CustomLoginSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String referer = (String) session.getAttribute("referer");

        Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());
        if (roles.contains("ROLE_ADMIN")) {
            super.setDefaultTargetUrl("/customer");
            super.onAuthenticationSuccess(request, response, authentication);
        }else if(roles.contains("ROLE_USER")){
        	super.setDefaultTargetUrl("/hello");
            super.onAuthenticationSuccess(request, response, authentication);
        }else{
        	if(!StringUtils.isEmpty(referer)){
                super.setDefaultTargetUrl(referer);
            }
        }
    }
}