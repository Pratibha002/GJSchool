package com.school.dao;

import java.util.List;

import com.school.dto.StudentsDTO;

public interface StudentsDao{

	public void addStudents(StudentsDTO dto); 
	public List<StudentsDTO> listStudents();
	void deleteStudent(String rollNo);
	void updateStudent(StudentsDTO dto);
	StudentsDTO getStudent(int id);
}
