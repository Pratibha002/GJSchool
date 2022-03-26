package com.school.controller;

import java.net.http.HttpRequest;
import java.nio.file.spi.FileSystemProvider;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.HttpServerErrorException;

import com.school.dao.FeesDao;
import com.school.dao.StudentsDaoImpl;
import com.school.dto.FeesAmountDto;
import com.school.dto.StudentsDTO;import com.school.mapper.FeesMapper;

@Controller
public class StudentController {

	@Autowired
	public StudentsDaoImpl studentsDao;
	
	@Autowired
	private FeesDao feesDao;

	
	@RequestMapping(value ="/stusignup", method = RequestMethod.GET)
	public String stuSignup() {

		return "stuSignup";
	}
	
	@RequestMapping("/adlogin")
	public String adLogin() {

		return "adLogin";
	}
	
	@RequestMapping("/submitFees")
	public String submitFees(Model model) {
		List<StudentsDTO> studentsList = studentsDao.listStudents();
		model.addAttribute("studentsList", studentsList);
		return "submitFees";
	}
	
	@RequestMapping("/feesSummary")
	public String feesSummary(Model model, @RequestParam("rollNo") String rollNo) {
			List<FeesAmountDto> feesDto = feesDao.feesSummary(rollNo);
			StudentsDTO stuDto = studentsDao.getStudentbyRollNo(rollNo);
			model.addAttribute("feesDto", feesDto);
			model.addAttribute("stuDto",stuDto);
			return "feesSummary";
	}
	
	@RequestMapping("/search")
	public String search(@RequestParam("name") String name) {
		if(name!=null) {
			StudentsDTO stuDto = studentsDao.getStudentbyRollNo(name);
			System.out.println(stuDto.getName());
		}
		return "studentsList";
	}
	
	@RequestMapping("/submitFeesProcessing")
	public String submitFeesProcessing(Model model, FeesAmountDto dto,@RequestParam String roll_No,@RequestParam String amount,@RequestParam String date) {
		
		feesDao.amountToDB(roll_No, amount, date);
		return "redirect:/submitFees";
	}

	@RequestMapping("/studentsList")
	public String studentsList(Model model) {
		List<StudentsDTO> studentsList = studentsDao.listStudents();
		List<FeesAmountDto> remFeesList = studentsDao.remainingFees();
		int totalFees =  studentsDao.totalFees();
		int totalRemFees = studentsDao.totalRemainingFees();
		System.out.println("total fees"+totalFees);
		model.addAttribute("studentsList", studentsList);
		model.addAttribute("remFeesList",remFeesList);
		model.addAttribute("totalFees", totalFees);
		model.addAttribute("totalRemFees", totalRemFees);
		return "studentsList";
	}
	
	
	@RequestMapping("/addStudents")
	public String addStudents(Model model,StudentsDTO dto) {
		model.addAttribute("student", dto);
		return "registerStudents";
	}
	
	@RequestMapping("/updateStudents")
	public String updateStudent(Model model, @RequestParam("userId") int id) {
		StudentsDTO student = studentsDao.getStudent(id);
		System.out.println("fetched student : " + student);
		model.addAttribute("student", student);

		return "registerStudents";
	}
	
	
	
	@RequestMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("rollNo") String rollNo) {
		studentsDao.deleteStudent(rollNo);
		return "redirect:/studentsList";
	}
	
	

	@RequestMapping("/addStudentsToDb")
	public String addStudentsToDb(StudentsDTO dto, Model model) {
		System.out.println("inside add students");
		if (dto.getId() == 0) {
			studentsDao.addStudents(dto);
		} else {
			studentsDao.updateStudent(dto);
		}
		model.addAttribute("student", dto);
		return "redirect:/addStudents";
	}
	
	@ResponseBody
	@RequestMapping("/stulist")
	public String stuList() {

		return "Student List";
	}

	
	@RequestMapping("/customlogin")
	public String customLogin() {

		return "customLogin";
	}
	
	@ResponseBody
	@RequestMapping("/accessdenied")
	public String accessDenied() {
		
		return "Access Denied";
	}
}
