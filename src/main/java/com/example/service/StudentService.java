package com.example.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.bean.Student;

//import com.example.bean.Student;

@Service
public interface StudentService {
	List<Student> viewStudent();

	Student add(Student bean);

	void delete(String name);

	List<Student> showUpdateForm(String email);

	void updateDetails(Student std);

	



}
