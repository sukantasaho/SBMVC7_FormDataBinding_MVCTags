package com.main.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.main.dto.Student;

@Controller
public class StudentController 
{
     
	@GetMapping("/register")
	public String showFormPage(@ModelAttribute("stud") Student student)
	{    
		System.out.println("StudentController.showFormPage()");
		System.out.println("Model Class Object Data :: "+student);
		return "student_register";
	}
	@PostMapping("/register")
	public String register(Map<String, Object> map, @ModelAttribute("stud") Student student)
	{
		
		   System.out.println(student.getSno()+"  "+student.getSname()+"  "+student.getSaddr());
		  String msg = "register success with id-"+student.getSno();
		  map.put("res", msg);
		return "success_page";
	}
}
