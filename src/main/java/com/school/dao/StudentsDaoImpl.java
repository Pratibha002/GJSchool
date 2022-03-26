package com.school.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.school.dto.FeesAmountDto;
import com.school.dto.StudentsDTO;
import com.school.mapper.RemFeesMapper;
import com.school.mapper.StudentsMapper;

@Repository
public class StudentsDaoImpl implements StudentsDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public void addStudents(StudentsDTO dto) {
	System.out.println("inside DB method");
		String sql = "insert into students(name,father_name, mother_name, roll_no,classes, fees, session,address, mobile)values(?,?,?,?,?,?,?,?,?) ";

		Object[] args = { dto.getName(), dto.getFather_name(), dto.getMother_name(), dto.getRoll_no(), dto.getClasses(),
				dto.getFees(), dto.getSession(), dto.getAddress(), dto.getMobile() };

		jdbcTemplate.update(sql, args);
		System.out.println("inserted");
	}

	@Override
	public StudentsDTO getStudent(int id) {
		String sql = "select * from students where id=?";
		StudentsDTO student = jdbcTemplate.queryForObject(sql,new StudentsMapper(),id);
		return student;
	}
	
	public StudentsDTO getStudentbyRollNo(String rollNo) {
		String sql = "select * from students where roll_no=?";
		StudentsDTO student = jdbcTemplate.queryForObject(sql,new StudentsMapper(),rollNo);
		return student;
	}



	@Override
	public List<StudentsDTO> listStudents() {
		String sql = "select * from students";
		List<StudentsDTO> studentList = jdbcTemplate.query(sql, new StudentsMapper());
//		displayStudent(studentList);
		return studentList;
	}

	public List<FeesAmountDto> remainingFees() {
		String sql ="SELECT roll_no,SUM(amount) FROM fees GROUP BY roll_no";
	List<FeesAmountDto> feesDto = 	jdbcTemplate.query(sql, new RemFeesMapper());
	return feesDto;
	}
	
	public int totalRemainingFees() {
		String sql ="SELECT SUM(amount) FROM fees";
	return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	
	
	public int totalFees() {
		String sql  = "SELECT SUM(fees) FROM students";
		return  jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public void displayStudent(List<StudentsDTO> student) {
		for (StudentsDTO stu : student) {
			System.out.println(stu);
		}
	}

	
	@Override
	public void deleteStudent(String rollNo) {
		String sql = "delete  from students where roll_no=?";
		jdbcTemplate.update(sql,rollNo);
		System.out.println("Student deleted");
	}

	
	@Override
	public void updateStudent(StudentsDTO dto) {
		String sql = "update students set name=?, father_name=?,mother_name=?,classes=?,fees=?,session=?,address=?,mobile=? where roll_no=?";
		Object[] args = {dto.getName(), dto.getFather_name(), dto.getMother_name(),dto.getClasses(),dto.getFather_name(), dto.getSession(), dto.getAddress(),dto.getMobile(), dto.getRoll_no()};
		int result= jdbcTemplate.update(sql, args);
		System.out.println("Record updated");
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
