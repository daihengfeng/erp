package com.dao;

import java.util.List;
import java.util.UUID;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.domain.Department;
import com.domain.Employee;
import com.domain.Role;
import com.domain.Users;
import com.utils.PageBean;


/**
 * Created by xiaomi5 on 2019/7/17.
 */
@Repository
public class ErpDaoImpl extends HibernateDaoSupport implements ErpDao {
	@Autowired 
	public void setMySessionFacttory(SessionFactory sessionFactory){
	super.setSessionFactory(sessionFactory);
	}
     //登录验证
	@Override
	public Users logonValidateById(String username, String userpassword) {
		DetachedCriteria users = DetachedCriteria.forClass(Users.class);
		users.setProjection(Projections.rowCount());
		String hql="from Users where user_Name=? and user_Password=?";
		   List<Users> userlist=(List<Users>) this.getHibernateTemplate().find(hql,username,userpassword);
		   if (userlist !=null && userlist.size()>0){ 
			   Users users2 = userlist.get(0);
			   
			   return users2;
		   }
			   return null;
		  
	}
	 //基础维护  里面的  部门维护
	@Override
	public PageBean<Department> departmentalManagement(Integer indexpage) {
		DetachedCriteria depa = DetachedCriteria.forClass(Department.class);
		depa.setProjection(Projections.rowCount());
		List<Number> list  = (List<Number>) this.getHibernateTemplate().findByCriteria(depa);
		//接收总记录数  4
		Long countRow = null;
		if(list!=null && list.size()>0){
			countRow =	list.get(0).longValue();
		}
		// 5把select count(1) from dual;   =>select * from customer； 
		depa.setProjection(null);
		//2封装分页工具类
		PageBean<Department> pageBean = new PageBean<Department>(5, countRow);
		pageBean.setIndexpage(indexpage);
		List<Department> custlist = (List<Department>) this.getHibernateTemplate().findByCriteria(depa, pageBean.getBeginRows(), pageBean.getPageSize());
pageBean.setDatas(custlist);
		return pageBean;
	}
	 //基础维护   里面的员工维护
	@Override
	public PageBean<Employee> employee(Integer indexpage) {
		DetachedCriteria empl = DetachedCriteria.forClass(Employee.class);
		empl.setProjection(Projections.rowCount());
		List<Number> list  = (List<Number>) this.getHibernateTemplate().findByCriteria(empl);
		//接收总记录数  4
		Long countRow = null;
		if(list!=null && list.size()>0){
			countRow =	list.get(0).longValue();
		}
		// 5把select count(1) from dual;   =>select * from customer； 
		empl.setProjection(null);
		//2封装分页工具类
		PageBean<Employee> pageBean = new PageBean<Employee>(5, countRow);
		pageBean.setIndexpage(indexpage);
		List<Employee> custlist = (List<Employee>) this.getHibernateTemplate().findByCriteria(empl, pageBean.getBeginRows(), pageBean.getPageSize());
pageBean.setDatas(custlist);
		return pageBean;
	}
	//基础维护里面 的角色维护
	@Override
	public PageBean<Role> roleSelectById(Integer indexpage) {
		DetachedCriteria role = DetachedCriteria.forClass(Role.class);
		role.setProjection(Projections.rowCount());
		List<Number> list  = (List<Number>) this.getHibernateTemplate().findByCriteria(role);
		//接收总记录数  4
		Long countRow = null;
		if(list!=null && list.size()>0){
			countRow =	list.get(0).longValue();
		}
		System.out.println("countRow==="+countRow);
		// 5把select count(1) from dual;   =>select * from customer； 
		role.setProjection(null);
		//2封装分页工具类
		PageBean<Role> pageBean = new PageBean<Role>(5, countRow);
		pageBean.setIndexpage(indexpage);
		List<Role> custlist = (List<Role>) this.getHibernateTemplate().findByCriteria(role, pageBean.getBeginRows(), pageBean.getPageSize());
pageBean.setDatas(custlist);
		return pageBean;
	}
	
	
	//基础维护  里面的  部门维护 里面的新建部门
	@Override
	public void addDept(Department deparment) {
		DetachedCriteria depa = DetachedCriteria.forClass(Department.class);
		depa.setProjection(Projections.rowCount());
		this.getHibernateTemplate().save(deparment);
	}
	//根据id查出
	@Override
	public Department diteDepa(int id) {
		Department d=this.getHibernateTemplate().get(Department.class,id);
		return d;
	}
	//基础维护 里面的 部门维护 里面的修改
	@Override
	public void ModifyById(Department deparment) {
		this.getHibernateTemplate().update(deparment);
	}
	//基础维护 里面的 部门维护 里面的删除
	@Override
	public void delect(Integer id) {
		Department department = this.getHibernateTemplate().get(Department.class,id);
		this.getHibernateTemplate().delete(department);
	}
	 //基础维护里面的员工维护里面的新增员工
	@Override
	public void newlyAdded(Employee emp) {
		DetachedCriteria depa = DetachedCriteria.forClass(Employee.class);
		depa.setProjection(Projections.rowCount());
		this.getHibernateTemplate().save(emp);
	}
	
}
