package com.domain;

import java.io.Serializable;

/**
 * Created by xiaomi5 on 2019/7/17.
 */
public class Users implements Serializable{
    private String user_Id;
    private String user_Name;
    private String user_Password;
    private Integer role_Id;
    private Integer user_State;
    private String employee_Id;
    private String user_Desc;
    private String remark1;
    private String remark2;
    
    public Users() {
		// TODO Auto-generated constructor stub
	}
	public String getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}
	public String getUser_Name() {
		return user_Name;
	}
	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}
	public String getUser_Password() {
		return user_Password;
	}
	public void setUser_Password(String user_Password) {
		this.user_Password = user_Password;
	}
	public Integer getRole_Id() {
		return role_Id;
	}
	public void setRole_Id(Integer role_Id) {
		this.role_Id = role_Id;
	}
	public Integer getUser_State() {
		return user_State;
	}
	public void setUser_State(Integer user_State) {
		this.user_State = user_State;
	}
	public String getEmployee_Id() {
		return employee_Id;
	}
	public void setEmployee_Id(String employee_Id) {
		this.employee_Id = employee_Id;
	}
	public String getUser_Desc() {
		return user_Desc;
	}
	public void setUser_Desc(String user_Desc) {
		this.user_Desc = user_Desc;
	}
	public String getRemark1() {
		return remark1;
	}
	public void setRemark1(String remark1) {
		this.remark1 = remark1;
	}
	public String getRemark2() {
		return remark2;
	}
	public void setRemark2(String remark2) {
		this.remark2 = remark2;
	}

    

}
