package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.bean.Student;
import com.example.repository.StudentRepository;

@Component
@Transactional
@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentRepository studentRepository;

	@Override
	public List<Student> viewStudent() {
		// TODO Auto-generated method stub
		List<Student> result=studentRepository.findAll();
//		for(int i=0;i<result.size();i++) {
//			System.out.println(result.get(i).getName()+"  "+result.get(i).getCourse());
//				}
		return result;
		
	}

	@Override
	public Student add(Student bean) {
		Student result= studentRepository.save(bean);
		return result;
	}

	@Override
	public void delete(String name) {
		System.out.println(name);
		Student result=studentRepository.findByname(name);
		studentRepository.delete(result);
	}

	@Override
	public List<Student> showUpdateForm(String email) {
		List<Student> result=studentRepository.findByemail(email);
//		System.out.println(result.getName());
		return result;
		
	}

	@Override
	public void updateDetails(Student std) {
Student updatebean=studentRepository.findOne(std.getEmail());
		
		System.out.println("service impl"+updatebean.getName()+"course"+updatebean.getCourse());
	
		if(updatebean != null){
		  updatebean.setName(std.getName());
		  updatebean.setCourse(std.getCourse());
		  updatebean.setAddress(std.getAddress());
		  updatebean.setEmail(std.getEmail());
		  studentRepository.saveAndFlush(updatebean);
		}
		
		
	}
		
	}

