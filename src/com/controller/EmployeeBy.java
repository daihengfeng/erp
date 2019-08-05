package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.domain.Employee;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.ErpService;
@Controller
@Scope("prototype")
public class EmployeeBy extends ActionSupport implements ModelDriven<Employee>{
	
	 @Autowired
   private ErpService erpService;
   private Employee emp = new Employee();
	@Override
	public Employee getModel() {
		
		return emp;
	}
	 //基础维护里面的员工维护里面的新增员工
	 public String newlyAdd(){
		 erpService.newlyAdded(emp);
		 return "add";
	 }
}
