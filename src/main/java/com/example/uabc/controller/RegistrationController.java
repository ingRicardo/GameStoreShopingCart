/**
 * 
 */
package com.example.uabc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.uabc.model.User;
import com.example.uabc.service.RegisterService;
import com.example.uabc.util.FunctionsUtil;

/**
 * @author ricardo
 *
 */
@Controller
public class RegistrationController {
	
	@Autowired
	RegisterService registerService;
	
	
	@RequestMapping("/newUser")
	public String Registration()
	{
		return "newUser";
		
	}
	
	
	  @RequestMapping(value="/newUser", method = RequestMethod.POST)
	    public String showRegistrationPage(ModelMap model,@RequestParam String lastname, @RequestParam String age, @RequestParam String email, @RequestParam String name, @RequestParam String password){
		  
		  System.out.println(" AGE TYPE ==> "+age.getClass().getName());
		  Integer ageInt = 0;
		  if (FunctionsUtil.isNumeric(age) && age !=null && !"".equals(age) )
		  {
			  
			  ageInt=Integer.parseInt(age);
		  }
			  
		  
		  
		  System.out.println("showRegistrationPage === name => "+ name + " lastname => "+ lastname+ " age => "+ ageInt + " email => "+email+" password => "+ password);
		  boolean isValidRegister = registerService.ValidateRegister(name, lastname, ageInt, email, password); 
		  if (!isValidRegister)
		  {
		       model.put("errorMessage", "Invalid Fields");
		       return "newUser";
			  			  
		  }
		  // boolean isValidUser = service.validateUser(name, password);
	       // if (!isValidUser) {
	       //     model.put("errorMessage", "Invalid Credentials");
	       //     return "login";
	      //  }
	        model.put("name", name);
	        model.put("password", password);
	        model.put("lastname",lastname);
	        model.put("age",ageInt);
	        model.put("email",email);
	        
	        User usr = new User(name, lastname, password, ageInt, email);
	        // save into database;
	        registerService.saveUser(usr);
	        
	        return "newUserValid";

	    }
	  

}
