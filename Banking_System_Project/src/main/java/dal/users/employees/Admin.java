package main.java.dal.users.employees;

import java.util.Date;

import javax.persistence.Entity;

@Entity
public class Admin extends Employee {

	public Admin() {
	}
	
	public Admin(String firstName, String middleName, String lastName, String username, Date dateOfBirth, String password,
			String phoneNumber, String email,String employeeID, String address, String ssn, String seqQuestion,String seqQuestion2) {
		super(firstName, middleName, lastName, username, dateOfBirth, password, phoneNumber, email,employeeID, address, ssn, seqQuestion, seqQuestion2);
		// TODO Auto-generated constructor stub
	}

}
