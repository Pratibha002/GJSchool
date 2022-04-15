package com.school.controller;

import java.net.http.HttpRequest;
import java.nio.file.spi.FileSystemProvider;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

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

import com.school.dao.AdminDao;
import com.school.dao.FeesDao;
import com.school.dao.StudentsDaoImpl;
import com.school.dto.AdmissionDto;
import com.school.dto.FeesAmountDto;
import com.school.dto.FeesClassesDto;
import com.school.dto.StudentsDTO;import com.school.mapper.FeesMapper;

@Controller
public class StudentController {

	@Autowired
	public StudentsDaoImpl studentsDao;
	
	@Autowired
	private FeesDao feesDao;

	@Autowired
	public AdminDao adminDao;
	
	
	@RequestMapping("/admissionForm")
	public String admissionForm(Model model, AdmissionDto dto ) {
		List<FeesClassesDto> classesList = adminDao.listClasses();
		List<String> listCategory = adminDao.listCategory();
		List<String> session = adminDao.listSession();
		
		model.addAttribute("session", session);
		model.addAttribute("classesList", classesList);
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("admissionDto", dto);
		return "admissionForm";
	}
	
	
	
	
	
	
	
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
		List<AdmissionDto> studentsList = studentsDao.listStudents();
		model.addAttribute("studentsList", studentsList);
		return "submitFees";
	}
	
	@RequestMapping("/feesSummary")
	public String feesSummary(Model model, @RequestParam("rollNo") String scholarNumber) {
			List<FeesAmountDto> feesDto = feesDao.feesSummary(scholarNumber);
			AdmissionDto stuDto = studentsDao.getStudentbyscholarNumber(scholarNumber);
			model.addAttribute("feesDto", feesDto);
			model.addAttribute("stuDto",stuDto);
			return "feesSummary";
	}
	
	
	@RequestMapping("/searchByBranch")
	public String searchByBranch(@RequestParam("branch") String branch, Model model) {
		System.out.println("branch name "+branch);
		List<AdmissionDto> studentsList = studentsDao.searchStudentbyBranch(branch);
		
		List<FeesAmountDto> remFeesList = studentsDao.remainingFees();
		int totalFees =  studentsDao.totalFees();
		int totalRemFees = studentsDao.totalRemainingFees();
		
		model.addAttribute("studentsList", studentsList);
		model.addAttribute("remFeesList",remFeesList);
		model.addAttribute("totalFees", totalFees);
		model.addAttribute("totalRemFees", totalRemFees);
		return "studentsList";
	}
	
	
	@RequestMapping("/searchByRollNo")
	public String searchByRollNo(@RequestParam("rollNo") String rollNo, Model model) {
		List<AdmissionDto> studentsList = studentsDao.searchStudentbyscholarNumber(rollNo);
		model.addAttribute("studentsList", studentsList);
		List<FeesAmountDto> remFeesList = studentsDao.remainingFees();
		int totalFees =  studentsDao.totalFees();
		int totalRemFees = studentsDao.totalRemainingFees();
		model.addAttribute("remFeesList",remFeesList);
		model.addAttribute("totalFees", totalFees);
		model.addAttribute("totalRemFees", totalRemFees);
		return "studentsList";
	}
	
	@RequestMapping("/searchByClass")
	public String searchByClass(@RequestParam("classes") String className, Model model) {
		List<AdmissionDto> studentsList = studentsDao.searchStudentbyClass(className);
		List<FeesAmountDto> remFeesList = studentsDao.remainingFees();
		int totalFees =  studentsDao.totalFees();
		int totalRemFees = studentsDao.totalRemainingFees();
		model.addAttribute("studentsList", studentsList);
		model.addAttribute("remFeesList",remFeesList);
		model.addAttribute("totalFees", totalFees);
		model.addAttribute("totalRemFees", totalRemFees);
		return "studentsList";
	}
	
	@RequestMapping("/searchByName")
	public String searchByName(@RequestParam("name") String name, Model model) {
		List<AdmissionDto> studentsList = studentsDao.searchStudentbyName(name);
		model.addAttribute("studentsList", studentsList);
		List<FeesAmountDto> remFeesList = studentsDao.remainingFees();
		int totalFees =  studentsDao.totalFees();
		int totalRemFees = studentsDao.totalRemainingFees();
		model.addAttribute("remFeesList",remFeesList);
		model.addAttribute("totalFees", totalFees);
		model.addAttribute("totalRemFees", totalRemFees);
		return "studentsList";
	}
	
	@RequestMapping("/submitFeesProcessing")
	public String submitFeesProcessing(Model model, FeesAmountDto dto,@RequestParam String scholarNumber,@RequestParam String amount,@RequestParam Date date) {
		
		feesDao.amountToDB(scholarNumber, amount, date);
		return "redirect:/submitFees";
	}
	


	@RequestMapping("/studentsList")
	public String studentsList(Model model) {
		List<String> classes = studentsDao.listOfclasses();
		List<AdmissionDto> studentsList = studentsDao.listStudents();
		List<FeesAmountDto> remFeesList = studentsDao.remainingFees();
		int totalFees =  studentsDao.totalFees();
		int totalRemFees = studentsDao.totalRemainingFees();
		model.addAttribute("classes", classes);
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
		AdmissionDto student = studentsDao.getStudent(id);
		System.out.println("fetched student : " + student);

		List<FeesClassesDto> classesList = adminDao.listClasses();
		List<String> listCategory = adminDao.listCategory();
		List<String> session = adminDao.listSession();
		
		model.addAttribute("session", session);
		model.addAttribute("classesList", classesList);
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("admissionDto", student);
		return "admissionForm";
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
	
	
	@RequestMapping("/saveAdmissison")
	public String saveAdmissison(AdmissionDto dto, Model model) {
		System.out.println(dto);
		System.out.println("alternate contact"+ dto.getAltContact());
		String stuClass = dto.getStuClass();
		dto.setFees(studentsDao.getStudentFees(stuClass));
		if (dto.getId() == 0) {
			System.out.println("saved method called");
		studentsDao.saveStudents(dto);
		} else {
			System.out.println("update method called");
			studentsDao.updateStudent(dto);
		}
		model.addAttribute("student", dto);
		return "redirect:/studentsList";
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
