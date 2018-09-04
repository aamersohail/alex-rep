package com.alex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alex.beans.EmployeeBeans;

@Controller
public class HomePageController {

	//just register the Bean
		@RequestMapping("/form")  
	    public ModelAndView showform(){  
	        return new ModelAndView("form","command",new EmployeeBeans());  
	    } 
	
}
