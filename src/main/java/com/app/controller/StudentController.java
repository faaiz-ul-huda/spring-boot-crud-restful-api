package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.dto.ApiResponse;
import com.app.entity.Student;
import com.app.service.StudentService;

@RestController
@RequestMapping("/student")
public class StudentController {
	@Autowired
	private StudentService studentservice;
	
	@GetMapping()
		public List<Student> getAllStudents(){
		return studentservice.getAllStudents();
	}
	
	@PostMapping("/add") 
	  public Student addNewStudent (@RequestBody Student stud) {
		  return studentservice.addStudentDetails(stud);

}
	@PutMapping("/update")
	  public Student updateStudentDetails(@RequestBody Student stud) {
		  return studentservice.updateStudentsDetail(stud);
}
	@DeleteMapping("/{studentId}")
	  public ApiResponse deleteStudentDetails(@PathVariable Long studentId) {
		  return new ApiResponse( studentservice.deleteStudentDetails(studentId));
	  }
	
	@GetMapping("/{studentId}")
	public Student getStudentDetailsById(@PathVariable Long studentId) {
		return studentservice.getStudentDetailsById(studentId);
	}
}
