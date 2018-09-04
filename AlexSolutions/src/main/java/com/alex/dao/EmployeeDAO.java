package com.alex.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.alex.beans.EmployeeBeans;

public class EmployeeDAO {
	
	// use HT for saving the data into the database
		HibernateTemplate hibernateTemplate;
		public HibernateTemplate getHibernateTemplate() {
			return hibernateTemplate;
		}
		public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
			this.hibernateTemplate = hibernateTemplate;
		}

		// save
		
		public int saveEmployee(EmployeeBeans employeeBeans){
			
			int employeeId = (Integer) hibernateTemplate.save(employeeBeans);
			
			return employeeId;
		}
		
		
		// get all employees
		public List<EmployeeBeans> getAllEmployees(){
			List<EmployeeBeans> allEmployee = hibernateTemplate.loadAll(EmployeeBeans.class);
			
			return allEmployee;
		}
		
		// delete a specific record
		public void deleteEmployee(int employeeId){
			EmployeeBeans employeeIdBeans = hibernateTemplate.get(EmployeeBeans.class, employeeId);
			hibernateTemplate.delete(employeeIdBeans);
		}
		
		// get a specific record
		public EmployeeBeans getASpecificRecord(int employeeId){
		
			EmployeeBeans employeeIdBeans = hibernateTemplate.get(EmployeeBeans.class, employeeId);
			
			//System.out.println("Edit ----- " + employeeIdBeans);
			
			return employeeIdBeans;
		}
		
		//update employee record
		public void updateEmployee(EmployeeBeans employeeBeans){
			
			hibernateTemplate.update(employeeBeans);
			
			
		}

}
