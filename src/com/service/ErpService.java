package com.service;

import java.util.List;

import com.domain.Department;
import com.domain.Employee;
import com.domain.Role;
import com.domain.Users;
import com.utils.PageBean;

/**
 * Created by xiaomi5 on 2019/7/17.
 */
public interface ErpService {
     //登录验证
	Users logonValidateById(String username, String userpassword);
	
	
	/**
	 * 基础维护   查询全部的数据
	 * @param indexpage
	 * @return
	 */
	 //基础维护  里面的  部门维护
	PageBean<Department> departmentalManagement(Integer indexpage);
	 //基础维护   里面的员工维护
	PageBean<Employee>  employee(Integer indexpage);
	//基础维护里面 的角色维护
	PageBean<Role>  roleSelectById(Integer indexpage);
	
	
	/**
	 * 基础维护   新建
	 * @param name
	 * @param phone
	 * @return
	 */
	//基础维护  里面的  部门维护 里面的新建部门
	void addDept(Department deparment);
	
	  //基础维护 里面的 部门维护 里面的修改
	Department diteDepa(int id);
	
	 //基础维护 里面的 部门维护 里面的修改 
	void ModifyById(Department deparment);
	
	//基础维护 里面的删除
	void delect(Integer id);
	
	// //基础维护里面的员工维护里面的新增员工
	void newlyAdded(Employee emp);
}
