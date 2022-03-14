package com.school.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//This is going to create filter chain

@EnableWebSecurity
public class SecurityConfigFilter extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		auth
		.inMemoryAuthentication()
		.withUser("Aman")
		.password("tomar")
		.roles("admin")
		.and()
		.withUser("Kavyansh")
		.password("jain")
		.roles("admin");
	}
}
