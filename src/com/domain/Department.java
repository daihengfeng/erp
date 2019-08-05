package com.domain;

import java.io.Serializable;

public class Department implements Serializable{
   private Integer department_Id;
   private String department_Name;
   private String department_ParentId;
   private String remark1;
   private String remark2;
public Integer getDepartment_Id() {
	return department_Id;
}
public void setDepartment_Id(Integer department_Id) {
	this.department_Id = department_Id;
}
public String getDepartment_Name() {
	return department_Name;
}
public void setDepartment_Name(String department_Name) {
	this.department_Name = department_Name;
}
public String getDepartment_ParentId() {
	return department_ParentId;
}
public void setDepartment_ParentId(String department_ParentId) {
	this.department_ParentId = department_ParentId;
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
public Department(Integer department_Id, String department_Name, String department_ParentId, String remark1,
		String remark2) {
	super();
	this.department_Id = department_Id;
	this.department_Name = department_Name;
	this.department_ParentId = department_ParentId;
	this.remark1 = remark1;
	this.remark2 = remark2;
}
public Department() {
	super();
}
@Override
public String toString() {
	return "Department [department_Id=" + department_Id + ", department_Name=" + department_Name
			+ ", department_ParentId=" + department_ParentId + ", remark1=" + remark1 + ", remark2=" + remark2 + "]";
}
   
}
