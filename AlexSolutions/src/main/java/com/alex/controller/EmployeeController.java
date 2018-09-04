package com.alex.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alex.beans.EmployeeBeans;
import com.alex.dao.EmployeeDAO;

@Controller
public class EmployeeController {

	@Autowired
	@Qualifier("employeeDAO")
	EmployeeDAO employeeDAO;
	public EmployeeDAO getEmployeeDAO() {
		return employeeDAO;
	}

	public void setEmployeeDAO(EmployeeDAO employeeDAO) {
		this.employeeDAO = employeeDAO;
	}

	@RequestMapping(value="/add-employee",method = RequestMethod.POST)
	public ModelAndView saveEmployee(Model model, HttpServletRequest request, HttpServletResponse response){
		
		//System.out.println("In save");
		
		String employeeName = request.getParameter("emplyeeName");
		
		String designation = request.getParameter("designation");
		
		float salary = Float.parseFloat(request.getParameter("salary"));
		
		String address = request.getParameter("address");
		
		//System.out.println(employeeName + " --- " + designation + " --- " + salary + " --- " + address);
		
		//Now, bind these inputs to the Employee Bean
		EmployeeBeans employeeBeans = new EmployeeBeans();
		employeeBeans.setEmployeeName(employeeName);
		employeeBeans.setDesignation(designation);
		employeeBeans.setSalary(salary);
		employeeBeans.setAddress(address);
		
		//System.out.println(employeeBeans);
		
		// To save pass employeeBeans to DAO
		int employeeId = employeeDAO.saveEmployee(employeeBeans);
		
		//System.out.println("Saved Employee Id is " + employeeId);
		
		return new ModelAndView("redirect:/get-employees");
	}
	
	// get all details
	@RequestMapping(value = "/get-employees")
	public ModelAndView getAllEmployees(){
		
		List<EmployeeBeans> allEmployee = employeeDAO.getAllEmployees();
		
		return new ModelAndView("view-employee", "allEmployee", allEmployee);
	}
	
	
	// remove specific one record
	@RequestMapping(value = "/remove/{employeeId}", method = RequestMethod.GET)
	public ModelAndView removeARecord(@PathVariable int employeeId) {
		//System.out.println("deleting id will be " + employeeId);
		employeeDAO.deleteEmployee(employeeId);
		return new ModelAndView("redirect:/get-employees");
	}

	
	// update a specific record
	@RequestMapping(value="/edit/{employeeId}")
	public ModelAndView edit(@PathVariable int employeeId){
		
		EmployeeBeans employeeBeans = employeeDAO.getASpecificRecord(employeeId);
		
		//System.out.println("Edit -----+ " + employeeId);
		
		return new ModelAndView("edit-form","command", employeeBeans);
	}
	
	// save the edited form
	@RequestMapping(value="/edit-save-employee", method = RequestMethod.POST) 
	public ModelAndView editSaveEmployee(@ModelAttribute("employeeBeans") EmployeeBeans employeeBeans){
		//System.out.println("FORM ------ " + employeeBeans);
		employeeDAO.updateEmployee(employeeBeans);
		return new ModelAndView("redirect:/get-employees"); 
		
	}
	
	
}
