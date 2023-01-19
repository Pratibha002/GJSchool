package com.school.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
//This is going to create filter chain

@EnableWebSecurity(debug = true)
public class SecurityConfigFilter extends WebSecurityConfigurerAdapter {

	@Autowired
	public DataSource dataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

	//	 In memory authentication		
		auth.inMemoryAuthentication().withUser("Aman").password("tomar").roles("admin").and().withUser("Kavyansh")
				.password("jain").roles("admin");

		//JDBC authentication
	//	auth.jdbcAuthentication().dataSource(dataSource).passwordEncoder(NoOpPasswordEncoder.getInstance());
	}

	
}
