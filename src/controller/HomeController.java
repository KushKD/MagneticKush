package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Model.ContactMe;
import dao.ContactDao;

@Controller
public class HomeController {
	
	@Autowired
	private ContactDao contactDao;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String getHome(){
		return "index";
	}
	
	@RequestMapping(value="/single", method=RequestMethod.GET)
	public String getSingle(){
		return "single";
	}
	
	@RequestMapping(value="/contact", method=RequestMethod.GET)
	public String getContact(Model mv){
		mv.addAttribute("contactme", new ContactMe());
		return "contact";
	}
	
	@RequestMapping(value="/about", method=RequestMethod.GET)
	public String getAbout(){
		return "about";
	}
	
	//contactme---
	@RequestMapping(value="/contactme", method=RequestMethod.POST)
	public String contactme(Model mv , ContactMe contactme ){
		
		System.out.println(contactme.toString());
		boolean flag = false;
		
		flag= contactDao.insertPost(contactme);
		if(flag){
			System.out.println("Success");
			return "index";
		}else{
			System.out.println("There was error");
			return "index";
		}
		
		
	}

	
}
