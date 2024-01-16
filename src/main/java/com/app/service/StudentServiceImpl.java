package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.StudentDao;
import com.app.entity.Student;

@Service
@Transactional
public class StudentServiceImpl implements StudentService{
@Autowired
private StudentDao studentdao;
	@Override
	public Student addStudentDetails(Student stud) {
		// TODO Auto-generated method stub
		return studentdao.save(stud);
	}
	@Override
	public Student updateStudentsDetail(Student stud) {
		Student foundStudent=studentdao.findById(stud.getId()).orElseThrow();
		return studentdao.save(stud);
	}
	@Override
	public String deleteStudentDetails(Long studentId) {
		Student foundStudent=studentdao.findById(studentId).orElseThrow();
		studentdao.delete(foundStudent);
		
		return "Student datails deleted succesfully";
	}
	@Override
	public List<Student> getAllStudents() {
		
		return studentdao.findAll();
	}
	@Override
	public Student getStudentDetailsById(Long studentId) {
		Student foundStudent=studentdao.findById(studentId).orElseThrow();
		
		return foundStudent;
	}

} 
