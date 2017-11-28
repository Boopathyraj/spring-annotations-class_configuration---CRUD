package com.example.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.bean.Student;

//import com.example.bean.Student;


@Repository
public interface StudentRepository extends JpaRepository<Student, String> {

	Student findByname(String name);

	List<Student> findByemail(String email);

}
