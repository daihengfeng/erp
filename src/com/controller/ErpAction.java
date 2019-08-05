package com.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.domain.Department;
import com.domain.Employee;
import com.domain.Role;
import com.domain.Users;

import com.utils.FastJsonUtil;
import com.utils.PageBean;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.ErpService;
import com.utils.Md5;

/**
 * Created by xiaomi5 on 2019/7/17.
 */
@Controller
@Scope("prototype")
public class ErpAction extends ActionSupport implements ModelDriven<Users>{
	 private Integer indexpage = 1;
	  public void setIndexpage(Integer indexpage) {
		this.indexpage = indexpage;
	}
     @Autowired
	private ErpService erpService;
   private Users users = new Users();
   private Department deparment = new Department();
	@Override
    public Users getModel() {
        return users;
    }
    //登录验证
    public String logonValidateById() throws UnsupportedEncodingException, IOException{
    	HttpServletRequest request = ServletActionContext.getRequest (); 
    	String username = request.getParameter("form-username");
    	String user_Password = Md5.getMd5(request.getParameter("form-password"));
    	System.out.println(username+"===="+user_Password);
    	Users users2 = erpService.logonValidateById(username,user_Password);
    	HttpServletResponse response = ServletActionContext.getResponse();
    	OutputStream out = response.getOutputStream();
    	if(users2 !=null){
    		out.write("true".getBytes("utf-8"));
    	}
    	else{
    		out.write("false".getBytes("utf-8"));
    	}
    	out.close();
    	return null;
    }
    /**
     * 基础维护  查询全部数据显示出来
     * @return
     */
    //基础维护  里面的  部门维护
      public String departmentalManagement(){
    	PageBean<Department> pageBean = (PageBean<Department>) erpService.departmentalManagement(indexpage);
  	    String jsonString = FastJsonUtil.toJSONString(pageBean);
  	    HttpServletRequest request = ServletActionContext.getRequest();
	    request.setAttribute("pageBean", pageBean);
    	  return "depart";
      }
     //基础维护   里面的员工维护
      public String employee(){
    	  PageBean<Employee> pageBean = (PageBean<Employee>) erpService.employee(indexpage); 
    	  String jsonString = FastJsonUtil.toJSONString(pageBean);
    	   HttpServletRequest request = ServletActionContext.getRequest();
  	       request.setAttribute("pageBean", pageBean);
    	  return "empl";
      }
      //基础维护里面 的角色维护
      public String roleSelectById(){
    	  PageBean<Role> pageBean = (PageBean<Role>) erpService.roleSelectById(indexpage); 
    	  String jsonString = FastJsonUtil.toJSONString(pageBean);
    	   HttpServletRequest request = ServletActionContext.getRequest();
  	       request.setAttribute("pageBean", pageBean);
    	  return "role";
      }
      /**
       * 基础维护  里面的全部新建
       * 你个狗比			《-看这里	
       * 
       * 
       * 
       */
      //基础维护  里面的  部门维护 里面的新建部门
      public String addDept(){
    	  HttpServletRequest request = ServletActionContext.getRequest (); 
    	  String name = request.getParameter("department_Name");
    	  String phone = request.getParameter("department_ParentId");
    	  if (name!=null||name.length()<0) {
			if (phone!=null||phone.length()<0) {
				 deparment.setDepartment_Name(name);
		    	  deparment.setDepartment_ParentId(phone);
		    	    erpService.addDept(deparment);
		    	 
		    	  return "add";
			}
			return null;
		}
    	 return null;
      }
      //基础维护 里面的 部门维护 里面的修改 根据id查询
      public String diteDepa(){
    	  HttpServletRequest request = ServletActionContext.getRequest (); 
    	  String  id =request.getParameter("department_Id");
    	  int uid = Integer.parseInt(id);
    	  Department depa = erpService.diteDepa(uid);
    	  request.setAttribute("depa", depa);
    	  return "dite";
      }
   
     
}
