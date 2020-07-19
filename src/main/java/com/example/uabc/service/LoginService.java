package com.example.uabc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.uabc.model.User;
import com.example.uabc.repository.UserRepository;

@Service
public class LoginService {
	@Autowired
	private UserRepository userRepo;
	
    public boolean validateUser(String userid, String password) {
        // in28minutes, dummy
    	Iterable<User> users = userRepo.findAll();
    	boolean find = false;
    	for (User user : users) {
			
			if (userid.equals(user.getName()) && password.equals(user.getPassword()))
			{
				System.out.println(" name => "+ user.getName() + " password " + user.getPassword());
				find = true;
				break;
			}
				
		}
        return find;

    }

}