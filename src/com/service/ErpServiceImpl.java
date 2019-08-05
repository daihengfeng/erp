package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ErpDao;
import com.domain.Department;
import com.domain.Employee;
import com.domain.Role;
import com.domain.Users;
import com.utils.PageBean;

/**
 * Created by xiaomi5 on 2019/7/17.
 */

@Service
@Transactional
public class ErpServiceImpl implements ErpService {
    @Autowired
	private ErpDao erpDao;
     
    

	//登录验证
	@Override
	public Users logonValidateById(String username, String userpassword ) {
		
		return erpDao.logonValidateById(username,userpassword);
	}
	
	
	/**
	 * 基础维护
	 * 
	 */
	 //基础维护  里面的  部门维护
	@Override
	public PageBean<Department> departmentalManagement(Integer indexpage) {
	
		return erpDao.departmentalManagement(indexpage);
	}
	 //基础维护   里面的员工维护
	@Override
	public PageBean<Employee> employee(Integer indexpage) {
		
		return erpDao.employee(indexpage);
	}

	//基础维护里面 的角色维护
	@Override
	public PageBean<Role> roleSelectById(Integer indexpage) {
		
		return erpDao.roleSelectById(indexpage);
	}


	
	//基础维护  里面的  部门维护 里面的新建部门
	@Override
	public void addDept(Department deparment) {
	
		 erpDao.addDept(deparment);
	}

	  //基础维护 里面的 部门维护 里面的修改 根据id查出
	@Override
	public Department diteDepa(int id) {
	
		return erpDao.diteDepa(id);
	}

	 //基础维护 里面的 部门维护 里面的修改 
	@Override
	public void ModifyById(Department department) {
		this.erpDao.ModifyById(department);
		
	}

	//基础维护 里面的 部门维护 里面的删除 
	@Override
	public void delect(Integer id) {
		erpDao.delect(id);
		
	}

	// //基础维护里面的员工维护里面的新增员工
	@Override
	public void newlyAdded(Employee emp) {
		
		erpDao.newlyAdded(emp);
	}





}
