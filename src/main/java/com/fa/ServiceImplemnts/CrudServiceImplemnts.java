package com.fa.ServiceImplemnts;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.fa.dto.CrudDto;
import com.fa.entity.CrudEntity;
import com.fa.repository.CrudRepository;
import com.fa.repository.LoginRepo;
import com.fa.service.CrudService;





@Service
public class CrudServiceImplemnts implements CrudService {

	@Resource
	CrudRepository crudRepository;
	
	@Resource
	LoginRepo loginRepositoy;
	

	
	@Override
	public String toSave(HttpServletRequest req) {
		System.err.println("4");
		System.err.println(req.getParameter("name"));
		

		try {
		CrudEntity entity=new CrudEntity();
		
		entity.setName(req.getParameter("name"));
		entity.setPhone(req.getParameter("Phone"));
		entity.setDob(req.getParameter("dob"));
		entity.setTeam(req.getParameter("team"));
		entity.setGender(req.getParameter("gender"));
		entity.setCompanyname(req.getParameter("companyname"));
		entity.setPreviousExperience(req.getParameter("previousExperience"));
		
		
		crudRepository.save(entity);
		System.err.println("5");
		System.err.println(req.getParameter("name"));
		
		return "success";
	}catch (Exception e) {
		e.printStackTrace();
		return "failed";
	}

	}


	@Override
	public List<CrudDto> getdata() {
		
		List<CrudDto> dtolist = new ArrayList<>();
		try {	
		List<CrudEntity> list =crudRepository.findAll();
		
		for(CrudEntity itr : list) {
			CrudDto dto=new CrudDto();
			dto.setName(itr.getName());
			dto.setPhone(itr.getPhone());    
			dto.setDob(itr.getDob());
			dto.setTeam(itr.getTeam());
			dto.setGender(itr.getGender());
			dto.setCompanyname(itr.getCompanyname());
			dto.setPreviousExperience(itr.getPreviousExperience());
			dtolist.add(dto);
		}
		
		return dtolist;
		}catch (Exception e) {
			 e.printStackTrace();
			return dtolist;
		}
	
		
	
	}


	@Override
	public void editThisdata(HttpServletRequest req) {
		   
		   
			 CrudEntity en=crudRepository.getDataByName(req.getParameter("name"));
			 System.err.print(req.getParameter("name"));
			 
		   en.setName(req.getParameter("name"));
		   en.setPhone(req.getParameter("phone"));
		   en.setDob(req.getParameter("dob"));
		   en.setTeam(req.getParameter("team"));
		   en.setGender(req.getParameter("gender"));
		   en.setCompanyname(req.getParameter("companyname"));
		   en.setPreviousExperience(req.getParameter("previousExperience"));
		
		   
		   crudRepository.save(en);
	}


	@Override
	public String deleteThisData(HttpServletRequest req) {
		try {
		CrudEntity en=crudRepository.getDataByName(req.getParameter("name"));
		System.err.println(en.getId());
		crudRepository.deleteById(en.getId());
		
		return "Success";
		}catch( Exception e) {
			e.printStackTrace();
		return  "Exception";
		}
	}


	@Override
	public String deleteDataWithAjax(String userName) {
		
		String result="";
		try {
			Long Id=crudRepository.getIdByName(userName);
			
			
			
			crudRepository.deleteById(Id);
			return result= "userName"+" "+ "Record Has Been Deleted";
			
			}catch( Exception e) {
				e.printStackTrace();
			return  "Exception";
			}
		
	
	}


	@Override
	public String loginvalidation(String userName, String password) {
//		 System.err.println(userName); System.err.println(password);
		String result="";
		System.err.println(loginRepositoy.getUserName(userName)+" "+loginRepositoy.getPassword(userName));
		if(userName.equalsIgnoreCase(loginRepositoy.getUserName(userName))&&password.equalsIgnoreCase(loginRepositoy.getPassword(userName))) {
			result="login successful";
		}else {
			result="Invalid Username and Password";
		}
		return result;
	}


	@Override
	public String SaveUserAjax(String name, String phone, String dob, String teamParam, String gender,String companyName,
			String previousExperience, String img) {
		try {
			CrudEntity entity=new CrudEntity();
			
			entity.setName(name);
			entity.setPhone(phone);
			entity.setDob(dob);
			entity.setTeam(teamParam);
			entity.setGender(gender);
		    entity.setCompanyname(companyName);
			entity.setPreviousExperience(previousExperience);
			System.err.println(gender);
		//	entity.setImgBase64(img);
			
			
			crudRepository.save(entity);
			
			return "success";
		}catch (Exception e) {
			e.printStackTrace();
			return "failed";
		}
	
		
	}
		

	

	
		   
		   
	
	

	


	
}
