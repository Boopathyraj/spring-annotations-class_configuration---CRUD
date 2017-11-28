package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.bean.Student;
import com.example.service.StudentService;
import com.nimbusds.oauth2.sdk.Request;

//import com.example.bean.Student;
//import com.example.service.StudentService;

@RestController

public class StudentController {

	@Autowired
	StudentService studentService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView showindex() {
		return new ModelAndView("index", "command", new Student());
	}

	@RequestMapping(value = "/Register.do", method = RequestMethod.GET)
	public ModelAndView showform() {
		return new ModelAndView("Register", "command", new Student());

	}

	@RequestMapping(value = "/display.do", method = RequestMethod.GET)
	public ModelAndView viewStudent(ModelMap model) {
		System.out.println("controller");

		List<Student> list = studentService.viewStudent();
		// for(int i=0;i<list.size();i++) {
		// System.out.println(list.get(i).getName()+"
		// "+list.get(i).getCourse());
		// }
		model.addAttribute("list", list);
		return new ModelAndView("Display", model);

	}

	@RequestMapping(value = "/addStudent.do", method = RequestMethod.POST)
	public ModelAndView addStudent(@ModelAttribute("sampleBean") Student bean, ModelMap model) {
		studentService.add(bean);
		model.addAttribute("Status", "Added Successfully");
		return new ModelAndView("index", model);
	}
	
	@RequestMapping(value ="/deletepage.do", method = RequestMethod.GET)
	public ModelAndView showDeletePage(){
		return new ModelAndView("Delete","command",new Student());
	}
	
	@RequestMapping(value = "/deleteStudent.do", method = RequestMethod.POST)
	public ModelAndView deleteStudent(@RequestParam("name") String name ,ModelMap model) {
		studentService.delete(name);
		model.addAttribute("Status", "Deleted Succesfully");
		return new ModelAndView("index", model);

	}
	@RequestMapping(value = "/updatepage.do", method = RequestMethod.GET)
	public ModelAndView updateform() {
		return new ModelAndView("update", "command", new Student());

	}
	@RequestMapping(value = "/update.do", method = RequestMethod.POST)
	public ModelAndView updateStudent(@RequestParam("email") String email ,ModelMap model) {
		List<Student> list=studentService.showUpdateForm(email);
		for(int i=0;i<list.size();i++) {
		System.out.println(list.get(i).getName()+"  "+list.get(i).getCourse());
			}
		model.addAttribute("list",list);
		return new ModelAndView("updated", model);
	}
	
	@RequestMapping(value = "/updateStudent.do", method = RequestMethod.POST)
	public ModelAndView updateStudent(
			@ModelAttribute("bean") Student std,ModelMap model) {
			System.out.println("controller111" +std.getCourse());
			studentService.updateDetails(std);
		model.addAttribute("Status", "Updated Successfully");
		return new ModelAndView("index", model);
	}
	
}
