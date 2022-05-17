package com.fa.Controller;

import javax.annotation.Resource;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fa.dto.CrudDto;
import com.fa.service.CrudService;

import java.util.*;

@Controller
public class CrudController{

	@Resource CrudService crudService;
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homepage(HttpServletRequest req,HttpServletResponse res) {
		
		System.err.println("2");
		ModelAndView homepage = new ModelAndView("Home");
		return homepage;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.GET)
	public ModelAndView Create(HttpServletRequest req,HttpServletResponse res) {		
		String s1=crudService.toSave(req);
      	if(s1=="success") {
		
		ModelAndView mv1 = new ModelAndView("Result");
		return mv1 ;
      	}
      	else {
      		ModelAndView mv = new ModelAndView("RegisterPage");
		    return mv;
      	}
      	
      		
		
		}
	
	@RequestMapping(value = "/home1", method = RequestMethod.GET)
	    public ModelAndView homepage1(HttpServletRequest req,HttpServletResponse res) {
		System.err.print("hitted   3");
		ModelAndView mv1 = new ModelAndView("RegisterPage");
		return mv1;
		
	
	
       }
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest req,HttpServletResponse res) {
	ModelAndView mv1 = new ModelAndView("Task2Login");
	return mv1;
	
	
	}
	@RequestMapping(value = "/home2", method = RequestMethod.GET)
    public ModelAndView homepage2(HttpServletRequest req,HttpServletResponse res) {
	ModelAndView mv1 = new ModelAndView("Task2Home");
	return mv1;
	
	
	}
	@RequestMapping(value = "/creation", method = RequestMethod.GET)
    public ModelAndView creationPage(HttpServletRequest req,HttpServletResponse res) {
	ModelAndView mv1 = new ModelAndView("creation");
	return mv1;
	
	
	}
	 
	
	@RequestMapping(value = "/datatables", method = RequestMethod.GET)
    public ModelAndView getdata() {
	
	ModelAndView mv1 = new ModelAndView("datatables");
	List<CrudDto> dto = crudService.getdata();
	mv1.addObject("data",dto);
	return mv1;
	
	}
	
	
	@RequestMapping(value = "/Ajaxdatatables", method = RequestMethod.GET)
    public ModelAndView AjaxTables() {
	ModelAndView mv1 = new ModelAndView("Task2DatatablesWithAjax");
	return mv1;
	
	}
	
	@RequestMapping(value = "/getAllDataWithAjax", method = RequestMethod.GET)
	public ResponseEntity<List<CrudDto>> getAllDataWithAjax() {
		List<CrudDto> dto = crudService.getdata();
		
		return new ResponseEntity<List<CrudDto>>(dto,HttpStatus.OK);
	}
	
	
	
	@RequestMapping(value = "/s", method = RequestMethod.GET)
	   ResponseEntity<String> hello() {
	    return new ResponseEntity<>("Hello World!", HttpStatus.OK);
	}
	@RequestMapping(value = "/EditTable", method = RequestMethod.GET)
    public ModelAndView EditTable(HttpServletRequest req,HttpServletResponse res) {
	ModelAndView mv1 = new ModelAndView("editTables");
	return mv1;
	
	
	}
	
	
	@RequestMapping(value = "/EditTableform", method = RequestMethod.GET)
    public ModelAndView EditTableForm(HttpServletRequest req,HttpServletResponse res) {
		 System.err.print(req.getParameter("name"));
	ModelAndView mv1 = new ModelAndView("editTables");
	crudService.editThisdata(req);
	
	return mv1;
	
	
	}
	
	
	@RequestMapping(value = "/EditTableAndCSV", method = RequestMethod.GET)
    public ModelAndView editTableAndCsvPdf(HttpServletRequest req,HttpServletResponse res) {
	ModelAndView mv1 = new ModelAndView("editTablesAndSavePdfcsv");
	return mv1;
	
	
	}
	
	
	@RequestMapping(value = "/DeleteRow", method = RequestMethod.GET)
    public ModelAndView DeleteRow(HttpServletRequest req,HttpServletResponse res) {
	ModelAndView mv1 = new ModelAndView("DeleteTableWithPdfCsv");
	 System.err.println(req.getParameter("name"));
	 System.err.println(req.getParameter("phone"));

	crudService.deleteThisData(req);
	return mv1;
	
	
	}
	
	
	
	@RequestMapping(value = "/DeleteRowAjaxApi1", method = RequestMethod.GET)
    public ModelAndView DeleteRowApi1(HttpServletRequest req,HttpServletResponse res) {
	ModelAndView mv1 = new ModelAndView("DeleteWithAjax");
		return mv1;
	
	
	}
	
	
	
	

	@RequestMapping(value = "/DeleteRowAjax", method = RequestMethod.GET)
    public ResponseEntity<String>  DeleteRowByAjax( @RequestParam("userName") String userName) {
		String s=crudService.deleteDataWithAjax(userName);
		
		
       return new ResponseEntity<String>(s,HttpStatus.OK);
	
	 
	}
	
	

	@RequestMapping(value = "/checkLoginApi1", method = RequestMethod.GET)
    public ModelAndView checkLogin(HttpServletRequest req,HttpServletResponse res) {
	ModelAndView mv1 = new ModelAndView("LoginWithAjax");
		return mv1;
	
	
	}
	
	
	@RequestMapping(value = "/checkLogin", method = RequestMethod.GET)
    public ResponseEntity<String> checkLogin2(@RequestParam("userName") String userName,@RequestParam("passWord") String password) {
	  
		 String s1=crudService.loginvalidation(userName,password);
		 return new ResponseEntity<String>(s1,HttpStatus.OK);
	

		 
	}

	
	
	@RequestMapping(value = "/creationWithAjaax", method = RequestMethod.GET)
    public ModelAndView creationPageWithAjax() {
	ModelAndView mv1 = new ModelAndView("creationPageWithAjax");
	return mv1;
	
	
	}
	
	
	

	 @RequestMapping(value = "/creationWithAjaxApi2", method = RequestMethod.POST)	
     public ResponseEntity<String>  creationWithAjaxApi2(@RequestParam("userName") String name,@RequestParam("Phone") String Phone,
	 @RequestParam("dobParam") String dob,@RequestParam("TeamParam") String TeamParam,@RequestParam("genderParam") String gender,@RequestParam("companyNameParam") String companyName,
	 @RequestParam("previousExperienceParam") String previousExperience, @RequestParam("ImgParam") String Img){

			 
			 
			String S=crudService.SaveUserAjax(name,Phone,dob,TeamParam,gender,companyName,previousExperience,Img);
			System.err.println(gender);
			return new ResponseEntity<String>(S,HttpStatus.OK);
        
	 
	 }
	 
	 
	 @RequestMapping(value = "/dataAdded", method = RequestMethod.GET)
	    public ModelAndView dataAdded() {
		
		ModelAndView mv1 = new ModelAndView("Result");
		return mv1;
		
	 }






}


