package com.app.service;

import java.util.List;

import com.app.entity.Student;

public interface StudentService {

	Student addStudentDetails(Student stud);

	Student updateStudentsDetail(Student stud);

	String deleteStudentDetails(Long studentId);

	List<Student> getAllStudents();

	Student getStudentDetailsById(Long studentId);

}
