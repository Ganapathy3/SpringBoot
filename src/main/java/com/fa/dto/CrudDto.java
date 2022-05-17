package com.fa.dto;

public class CrudDto {
	
	private String name;
	private String Phone;
	private String dob;
	private String team;
	private String gender;
	private String companyname;
	private String previousExperience;
	
	public String getName() {
		return name;
	}
	public String getPhone() {
		return Phone;
	}
	public String getDob() {
		return dob;
	}
	public String getTeam() {
		return team;
	}
	public String getGender() {
		return gender;
	}
	public String getCompanyname() {
		return companyname;
	}
	public String getPreviousExperience() {
		return previousExperience;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public void setPreviousExperience(String previousExperience) {
		this.previousExperience = previousExperience;
	}
	

}
