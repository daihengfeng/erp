package com.domain;

import java.io.Serializable;
import java.util.Date;

public class Employee implements Serializable{
    private String employee_Id;
    private String employee_Name;
    private String employee_Id_No;
    private Integer gender;
    private Date born_Date;
    private String degree;
    private String school_Tag;
    private String email;
    private Integer phone_No;
    private String address;
    private Integer department_Id;
    private Integer position_Id;
    private Double salary;
    private String contract_Id;
    private String employee_Desc;
    private String remark1;
    private String remark2;
	public String getEmployee_Id() {
		return employee_Id;
	}
	public void setEmployee_Id(String employee_Id) {
		this.employee_Id = employee_Id;
	}
	public String getEmployee_Name() {
		return employee_Name;
	}
	public void setEmployee_Name(String employee_Name) {
		this.employee_Name = employee_Name;
	}
	public String getEmployee_Id_No() {
		return employee_Id_No;
	}
	public void setEmployee_Id_No(String employee_Id_No) {
		this.employee_Id_No = employee_Id_No;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Date getBorn_Date() {
		return born_Date;
	}
	public void setBorn_Date(Date born_Date) {
		this.born_Date = born_Date;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getSchool_Tag() {
		return school_Tag;
	}
	public void setSchool_Tag(String school_Tag) {
		this.school_Tag = school_Tag;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getPhone_No() {
		return phone_No;
	}
	public void setPhone_No(Integer phone_No) {
		this.phone_No = phone_No;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getDepartment_Id() {
		return department_Id;
	}
	public void setDepartment_Id(Integer department_Id) {
		this.department_Id = department_Id;
	}
	public Integer getPosition_Id() {
		return position_Id;
	}
	public void setPosition_Id(Integer position_Id) {
		this.position_Id = position_Id;
	}
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	public String getContract_Id() {
		return contract_Id;
	}
	public void setContract_Id(String contract_Id) {
		this.contract_Id = contract_Id;
	}
	public String getEmployee_Desc() {
		return employee_Desc;
	}
	public void setEmployee_Desc(String employee_Desc) {
		this.employee_Desc = employee_Desc;
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
	public Employee(String employee_Id, String employee_Name, String employee_Id_No, Integer gender, Date born_Date,
			String degree, String school_Tag, String email, Integer phone_No, String address, Integer department_Id,
			Integer position_Id, Double salary, String contract_Id, String employee_Desc, String remark1,
			String remark2) {
		super();
		this.employee_Id = employee_Id;
		this.employee_Name = employee_Name;
		this.employee_Id_No = employee_Id_No;
		this.gender = gender;
		this.born_Date = born_Date;
		this.degree = degree;
		this.school_Tag = school_Tag;
		this.email = email;
		this.phone_No = phone_No;
		this.address = address;
		this.department_Id = department_Id;
		this.position_Id = position_Id;
		this.salary = salary;
		this.contract_Id = contract_Id;
		this.employee_Desc = employee_Desc;
		this.remark1 = remark1;
		this.remark2 = remark2;
	}
	public Employee() {
		super();
	}
	@Override
	public String toString() {
		return "EmployeeBy [employee_Id=" + employee_Id + ", employee_Name=" + employee_Name + ", employee_Id_No="
				+ employee_Id_No + ", gender=" + gender + ", born_Date=" + born_Date + ", degree=" + degree
				+ ", school_Tag=" + school_Tag + ", email=" + email + ", phone_No=" + phone_No + ", address=" + address
				+ ", department_Id=" + department_Id + ", position_Id=" + position_Id + ", salary=" + salary
				+ ", contract_Id=" + contract_Id + ", employee_Desc=" + employee_Desc + ", remark1=" + remark1
				+ ", remark2=" + remark2 + "]";
	}
    
}
