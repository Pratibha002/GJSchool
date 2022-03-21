package com.school.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.school.dto.StudentsDTO;

public class StudentsMapper implements RowMapper<StudentsDTO>{

	@Override
	public StudentsDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		StudentsDTO student = new StudentsDTO();
		student.setName(rs.getString(1));
		student.setFather_name(rs.getString(2));
		student.setMother_name(rs.getString(3));
		student.setRoll_no(rs.getString(4));
		student.setClasses(rs.getString(5));
		student.setFees(rs.getString(6));
		student.setSession(rs.getString(7));
		student.setAddress(rs.getString(8));
		student.setMobile(rs.getString(9));
		student.setId(rs.getInt(10));
		return student;
	} 

}
