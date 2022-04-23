package com.school.controller;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.nio.file.spi.FileSystemProvider;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.multipart.MultipartFile;

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

	@RequestMapping("/form")
	public String form( Model model, AdmissionDto dto ) {
		List<FeesClassesDto> classesList = adminDao.listClasses();
		List<String> listCategory = adminDao.listCategory();
		List<String> session = adminDao.listSession();
		
		model.addAttribute("session", session);
		model.addAttribute("classesList", classesList);
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("admissionDto", dto);		
		return "form";
	}

	
	@RequestMapping("/photoUpload")
	public String photoUpload( ) {
		return "photoUpload";
	}
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
	public String submitFees(Model model, FeesAmountDto dto) {
	
		List<AdmissionDto> studentsList = studentsDao.listStudents();
		List<String> session = adminDao.listSession();
		List<FeesClassesDto> classesList = adminDao.listClasses();
		
		model.addAttribute("classes", classesList);		
		model.addAttribute("studentsList", studentsList);
		model.addAttribute("session", session);
		model.addAttribute("feesAmountDto", dto);
		
		return "submitFees";
	}
	
	@RequestMapping("/feesSummary")
	public String feesSummary(Model model, @RequestParam("rollNo") String scholarNumber) {
			List<FeesAmountDto> feesDto = feesDao.feesSummary(scholarNumber);
			AdmissionDto stuDto = studentsDao.getStudentbyscholarNumber(scholarNumber);
			

			model.addAttribute("feesDto", feesDto);
			model.addAttribute("stuDto",stuDto);
			model.addAttribute("scholarNumber", scholarNumber);
			return "feesSummary";
	}
	
	
	
	@RequestMapping("/submitFeesProcessing")
	public String submitFeesProcessing(Model model, FeesAmountDto dto) {
		System.out.println(dto.toString());
		

		if(dto.getScholarNumberOrName().matches("[0-9]+")) {
			System.out.println("searc by scholar Number");
			List<AdmissionDto> studentsList = studentsDao.searchStudentbyScholarNumber(dto.getStuClass(),dto.getScholarNumberOrName(),dto.getBranch(),dto.getSession());
			System.out.println("list size "+ studentsList.size());
			model.addAttribute("studentsList", studentsList);	model.addAttribute("studentsList", studentsList);
		}else {
			System.out.println("searc by Name ");
			List<AdmissionDto> studentsList = studentsDao.searchStudentbyName(dto.getStuClass(),dto.getScholarNumberOrName(),dto.getBranch(),dto.getSession());
			System.out.println("list size "+ studentsList.size());
			model.addAttribute("studentsList", studentsList);	model.addAttribute("studentsList", studentsList);		}
		
		
		
		List<FeesAmountDto> remFeesList = studentsDao.remainingFees();
		int totalFees =  studentsDao.totalFees();
		int totalRemFees = studentsDao.totalRemainingFees();
		
		List<FeesClassesDto> classesList = adminDao.listClasses();
		model.addAttribute("classes", classesList);		
	
		model.addAttribute("remFeesList",remFeesList);
		model.addAttribute("totalFees", totalFees);
		model.addAttribute("totalRemFees", totalRemFees);

		
		return "/submitFees";
	}

	
	
	@RequestMapping("/feesProcessing")
	public String feesProcessing(Model model, @RequestParam("rollNo") String scholarNumber, HttpServletRequest request) {
		System.out.println("Scholar Number "+scholarNumber);
		//loop for first occurence of scholar number
		String amount = request.getParameter("amount");
		String date = request.getParameter("date");
		
		
		System.out.println("amount and date is "+ amount+" " + date);
			
			feesDao.amountToDB(scholarNumber, amount, date);
				model.addAttribute("msg", "Fees Have been Saved ");	
			return "redirect:/submitFees";
	}
	
	
	
	@RequestMapping(value="/searchStudents")
	public String searchByBranch(@RequestParam("branch") String branch,@RequestParam("classes") String stuClasses,
			@RequestParam("searchValue") String searchValue, @RequestParam("session") String session, Model model) {

		System.out.println("branch "+branch);
		System.out.println("stu class "+stuClasses);
		System.out.println("scholarNumber "+searchValue);
		System.out.println("session  is "+session);
		
		if(searchValue.matches("[0-9]+")) {
			List<AdmissionDto> studentsList = studentsDao.searchStudentbyScholarNumber(stuClasses,searchValue,branch,session);
			System.out.println("list size "+ studentsList.size());
			model.addAttribute("studentsList", studentsList);	model.addAttribute("studentsList", studentsList);
		}else {
			List<AdmissionDto> studentsList = studentsDao.searchStudentbyName(stuClasses,searchValue,branch,session);
			System.out.println("list size "+ studentsList.size());
			model.addAttribute("studentsList", studentsList);	model.addAttribute("studentsList", studentsList);		}
		
		
		
		List<FeesAmountDto> remFeesList = studentsDao.remainingFees();
		int totalFees =  studentsDao.totalFees();
		int totalRemFees = studentsDao.totalRemainingFees();
		
		List<FeesClassesDto> classesList = adminDao.listClasses();
		model.addAttribute("classes", classesList);		
	
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
	
	
	
	


	@RequestMapping("/studentsList")
	public String studentsList(Model model) {
		List<FeesClassesDto> classesList = adminDao.listClasses();
	//	List<String> classes = studentsDao.listOfclasses();
		List<AdmissionDto> studentsList = studentsDao.listStudents();
		List<FeesAmountDto> remFeesList = studentsDao.remainingFees();
		int totalFees =  studentsDao.totalFees();
		int totalRemFees = studentsDao.totalRemainingFees();
		List<String> session = adminDao.listSession();
		model.addAttribute("session", session);
		model.addAttribute("classes", classesList);
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
	
	
	@RequestMapping(value="/saveAdmissison",method=RequestMethod.POST)
	public String saveAdmissison(AdmissionDto dto, Model model, @RequestParam("aadharPic") MultipartFile  aadharPic,
			@RequestParam("studentPic") MultipartFile  studentPic, @RequestParam("samagraPic") MultipartFile  samagraPic,
			@RequestParam("castPic") MultipartFile  castPic, @RequestParam("tcPic") MultipartFile  tcPic,
			@RequestParam("migrationPic") MultipartFile  migrationPic) throws IOException {
		System.out.println(dto);
		String stuClass = dto.getStuClass();
		dto.setFees(studentsDao.getStudentFees(stuClass));
		
		dto.setAadharPhoto(Base64.getEncoder().encodeToString(aadharPic.getBytes()));
		dto.setStudentPhoto(Base64.getEncoder().encodeToString(studentPic.getBytes()));
		dto.setSamagraPhoto(Base64.getEncoder().encodeToString(samagraPic.getBytes()));
		dto.setCastPhoto(Base64.getEncoder().encodeToString(castPic.getBytes()));
		dto.setTcPhoto(Base64.getEncoder().encodeToString(tcPic.getBytes()));
		dto.setMigrationPhoto(Base64.getEncoder().encodeToString(migrationPic.getBytes()));
		
		
		
		if (studentsDao.getListOfScholarNumbers().contains(dto.getScholarNumber())) {
			model.addAttribute("msg", "Student Failed to Enrolled !! Scholar Number Already Exist");
			return "admissionForm";
		}
		
		if (dto.getId() == 0) {
			System.out.println("saved method called");
		studentsDao.saveStudents(dto);
		} else {
			System.out.println("update method called");
			studentsDao.updateStudent(dto);
		}
		
		
		List<FeesClassesDto> classesList = adminDao.listClasses();
		List<AdmissionDto> studentsList = studentsDao.listStudents();
		List<FeesAmountDto> remFeesList = studentsDao.remainingFees();
		int totalFees =  studentsDao.totalFees();
		int totalRemFees = studentsDao.totalRemainingFees();
		List<String> session = adminDao.listSession();
		model.addAttribute("session", session);
		model.addAttribute("classes", classesList);
		model.addAttribute("studentsList", studentsList);
		model.addAttribute("remFeesList",remFeesList);
		model.addAttribute("totalFees", totalFees);
		model.addAttribute("totalRemFees", totalRemFees);

		
		
		
		model.addAttribute("msg", "Student Enrolled Successfully");
		return "studentsList";
		
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
