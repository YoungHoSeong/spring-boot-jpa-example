package com.example.config;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CustomUser extends User {
	private static final long serialVersionUID = 1L;
	
	private String userId;
	private Long userSeq;
    private String userEmail;
    private String mobileNo;
    	
    public CustomUser(Builder builder) {
		
    	super(builder.username, builder.password, builder.authorities);
    	
    	this.userId = builder.userId;
    	this.userSeq = builder.userSeq;
    	this.userEmail = builder.userEmail;
    	this.mobileNo = builder.mobileNo;
    	
	}
    
    public String getUserId() {
		return userId;
	}
    
	public Long getUserSeq() {
		return userSeq;
	}

	public String getUserEmail() {
		return userEmail;
	}

	

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	
	


	public static class Builder {
		private String userId;
		private String username;
		private String password;
		private Collection<GrantedAuthority> authorities;
		
		private Long userSeq;
	    private String mobileNo;
	    private String userEmail;
	    

	    public Builder(String username, String password, boolean enabled, boolean accountNonExpired,
				boolean credentialsNonExpired, boolean accountNonLocked,
				Collection<GrantedAuthority> authorities) {
	    	
	    	this.username = username;
	    	this.password = password;
	    	this.authorities = authorities;
	    	
		}

	    public Builder userId(String userId) {
	    	this.userId = userId;
	    	
	    	return this;
	    }
		
		public Builder userEmail(String userEmail) {
			this.userEmail = userEmail;
			
			return this;
		}
		
		public Builder mobileNo(String mobileNo) {
			this.mobileNo = mobileNo;
			
			return this;
		}

		public Builder userSeq(Long userSeq) {
			this.userSeq = userSeq;
			
			return this;
		}

		public CustomUser build() { 
			return new CustomUser(this); 
		}
		
	}

	
}
