package com.fa.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.fa.dto.CrudDto;

//import com.fa.Controller.list;

public interface CrudService {

	String toSave(HttpServletRequest req);

	List<CrudDto> getdata();

	void editThisdata(HttpServletRequest req);

	String deleteThisData(HttpServletRequest req);

	String deleteDataWithAjax(String userName);

	String loginvalidation(String userName, String password);

	String SaveUserAjax(String name, String phone, String dob, String teamParam, String gender, String companyName,
			String previousExperience, String img);

	//String processTheNewDataIntoExistingData(HttpServletRequest req);

	

	

	

	
}
