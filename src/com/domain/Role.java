package com.domain;

import java.io.Serializable;

//用户角色
public class Role implements Serializable{

	private Integer role_Id;//角色编号
	
	private String role_Name;//角色名称
	
	private String role_Desc;//角色描述
	
	private Integer role_Enable;//是否有效(1为有效,0为停用)
	
	private String remark1;
	
	private String remark2;

	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Role(Integer role_Id, String role_Name, String role_Desc,
			Integer role_Enable, String remark1, String remark2) {
		super();
		this.role_Id = role_Id;
		this.role_Name = role_Name;
		this.role_Desc = role_Desc;
		this.role_Enable = role_Enable;
		this.remark1 = remark1;
		this.remark2 = remark2;
	}

	public Integer getRole_Id() {
		return role_Id;
	}

	public void setRole_Id(Integer role_Id) {
		this.role_Id = role_Id;
	}

	public String getRole_Name() {
		return role_Name;
	}

	public void setRole_Name(String role_Name) {
		this.role_Name = role_Name;
	}

	public String getRole_Desc() {
		return role_Desc;
	}

	public void setRole_Desc(String role_Desc) {
		this.role_Desc = role_Desc;
	}

	public Integer getRole_Enable() {
		return role_Enable;
	}

	public void setRole_Enable(Integer role_Enable) {
		this.role_Enable = role_Enable;
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

	@Override
	public String toString() {
		return "Role [role_Id=" + role_Id + ", role_Name=" + role_Name
				+ ", role_Desc=" + role_Desc + ", role_Enable=" + role_Enable
				+ ", remark1=" + remark1 + ", remark2=" + remark2 + "]";
	}
	
}
