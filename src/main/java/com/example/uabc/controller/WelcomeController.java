/**
 * 
 */
package com.example.uabc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ricardo
 *
 */
@Controller
public class WelcomeController {
	

 
	
    @RequestMapping("/welcome")
    public String loginMessage(ModelMap model){


    	 
        return "welcome";

    }
}
