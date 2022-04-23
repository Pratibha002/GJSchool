package com.school.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.school.dto.FeesAmountDto;
import com.school.dto.StudentsDTO;

public class FeesMapper implements RowMapper<FeesAmountDto>{

	@Override
	public FeesAmountDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		FeesAmountDto fees= new FeesAmountDto();
		fees.setScholarNumberOrName(rs.getString(1));
		fees.setAmount(rs.getString(2));
		fees.setDate(rs.getString(4));
		
		return fees;
	} 
}