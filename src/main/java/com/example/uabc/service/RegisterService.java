/**
 * 
 */
package com.example.uabc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.uabc.model.User;
import com.example.uabc.repository.UserRepository;

/**
 * @author ricardo
 *
 */
@Service
public class RegisterService {

	@Autowired
	private UserRepository userRepo;
	
	public boolean ValidateRegister(String name, String lastname, Integer age, String email, String password)
	{
    	Iterable<User> users = userRepo.findAll();

    	for (User user : users) {
			
			if ( password.equals(user.getPassword()))
			{
				System.out.println(" name => "+ user.getName() + " password " + user.getPassword());
					return false;
			}
				
		}
		
		// System.out.println("name => "+ name + " lastname => "+ lastname+ " age => "+ age + " email => "+email+" password => "+ password);
		return !"".equals(name) && !"".equals(lastname) && age!=null && age>18  && !"".equals(email ) && !"".equals(password);
	}
	
	public User saveUser(User usr)
	{
		System.out.println(" user  id ===> " +usr.getUser_id());
		
		userRepo.save(usr);
		return usr;
		
	}
}
