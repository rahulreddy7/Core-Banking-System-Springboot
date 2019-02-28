package main.java.dal.emp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import main.java.dal.users.User;
import main.java.dal.users.employees.Admin;
import main.java.dal.users.employees.Employee;
import main.java.repositories.EmployeeRepository;
import main.java.repositories.UserRepository;

@Service
public class EmpUserDaoImpl implements EmpUserDao {

	
/*	
	@Autowired
	private EmployeeRepository empRepository;	
	//temp code
	 * */
	
	@Autowired
	private UserRepository empRepository;
	
	public  Admin checkLogin(String username, String password)throws Exception {
		
		
		
		Admin emp = null;
		try {
			System.out.println(empRepository);
		//System.out.println("WHY"+empRepository.findFirstByUsernameAndPassword("psjagtap","password"));
		emp=empRepository.findFirstByUsernameAndPassword(username,password);
			
		}
		catch(NullPointerException e) {
			System.out.println(e+"||"+"No data found");
		}
		System.out.println(emp.getPassword());	
		
		if(emp==null)
			return null;
		else
		{
			if(password.equals(emp.getPassword())){
				//Set all the attributes that we have about the user for the session!!
				//Actually not needed in crudRepository impl
				
			}
		}
	
			
		return emp;	
		
		} 

	

		

	
}