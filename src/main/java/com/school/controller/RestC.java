package com.school.controller;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.annotation.MultipartConfig;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@MultipartConfig
@Controller
public class RestC {

	@PostMapping(value="/processPhoto")
	public String processPhoto( @RequestParam("pic") MultipartFile  file, Model model) throws IOException {
	System.out.println("Inside process method");
	System.out.println(Base64.getEncoder().encodeToString(file.getBytes()));
	model.addAttribute("aman", "somya");
model.addAttribute("pic", Base64.getEncoder().encodeToString(file.getBytes()));
	return "photoUpload";
	}
	
}
