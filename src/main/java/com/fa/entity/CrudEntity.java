package com.fa.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.servlet.http.HttpServletRequest;

@Entity
@Table
public class CrudEntity {
   
	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "Phone")
	private String Phone;
	
	@Column(name = "dob")
	private String dob;
	
	@Column(name = "team")
	private String team;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "companyname")
	private String companyname;
	
	@Column(name = "previousExperience")
	private String previousExperience;
	
	/*
	 * @Column(name = "ImgBase64") private String ImgBase64;
	 * 
	 * public String getImgBase64() { return ImgBase64; }
	 * 
	 * public void setImgBase64(String imgBase64) { ImgBase64 = imgBase64; }
	 */
	public long getId() {
		return id;
	}

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

	public void setId(long id) {
		this.id = id;
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
