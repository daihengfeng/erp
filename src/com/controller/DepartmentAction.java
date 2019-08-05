package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.domain.Department;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.ErpService;
import com.sun.corba.se.impl.orbutil.RepositoryIdUtility;
@Controller
@Scope("prototype")
public class DepartmentAction extends ActionSupport implements ModelDriven<Department>{
	  @Autowired
	private ErpService erpService;
	private Department deparment = new Department();

	@Override
	public Department getModel() {
	
		return deparment;
	}
	   //基础维护 里面的 部门维护 里面的修改 
	 public String ModifyById(){
   	  erpService.ModifyById(deparment);
   	  return "edit";
     }
	 //基础维护 里面的 部门维护 里面的删除
	 public String delect(){
		 Integer id = deparment.getDepartment_Id();
		 erpService.delect(id);
		 return "dele";
	 }
	
}
