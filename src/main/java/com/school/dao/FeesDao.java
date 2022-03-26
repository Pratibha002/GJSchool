package com.school.dao;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.school.dto.FeesAmountDto;
import com.school.dto.StudentsDTO;
import com.school.mapper.FeesMapper;
import com.school.mapper.StudentsMapper;

@Repository
public class FeesDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<StudentsDTO> listofStudents() {
		String sql = "select * from students";
		List<StudentsDTO> studentList = jdbcTemplate.query(sql, new StudentsMapper());

		return studentList;
	}

	public void displayStudent(List<StudentsDTO> student) {
		for (StudentsDTO stu : student) {
			System.out.println(stu);
		}
	}

	public void amountToDB(String roll_No, String amount, String date) {
		System.out.println(roll_No + amount + date);

		String sql = "insert into fees(roll_no,amount,date)values(?,?,?) ";
			
		Object[] args = { roll_No, amount, date };

		jdbcTemplate.update(sql, args);

		System.out.println("Amount Saved");
	}

	public List<FeesAmountDto> feesSummary(String rollno) {
		System.out.println(rollno);
		String sql = "SELECT * FROM fees WHERE roll_no=?";
		List<FeesAmountDto> feesList = jdbcTemplate.query(sql, new FeesMapper(),rollno);
		
		return feesList;

	}

}
