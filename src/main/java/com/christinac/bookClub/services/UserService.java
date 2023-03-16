package com.christinac.bookClub.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.christinac.bookClub.models.LoginUser;
import com.christinac.bookClub.models.User;
import com.christinac.bookClub.repositories.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepo;
	
	public List<User> findAll(){
		return userRepo.findAll();
	}
	
	//find by id 
	public User findById(Long id) {
		Optional<User> optionalUser = userRepo.findById(id);
		if(optionalUser.isEmpty()) {
			return null;
		} else {
			return optionalUser.get();
		}
	}
	
	// register user
	public User register(User u, BindingResult result) {
		// if the confirmPassword != password
		if(!u.getConfirPassword().equals(u.getPassword())) {
			// add error to your confirPassword input in your jsp
			result.rejectValue("confirPassword", null, "Passwords do not match!");
		}
		if (result.hasErrors()) {
			return null;
		}
		String hashPW = BCrypt.hashpw(u.getPassword(), BCrypt.gensalt());
		u.setPassword(hashPW);
		return userRepo.save(u);
	}
	
	// login user
	public User login(LoginUser l, BindingResult result) {
		Optional<User> optionalUser = userRepo.findByEmail(l.getEmail());
		if(optionalUser.isEmpty() || !BCrypt.checkpw(l.getPassword(), optionalUser.get().getPassword())){
			result.rejectValue("password", null, "Your email or password is incorrect!");
			return null;
		} else {
			return optionalUser.get();
		}
	}
	
}
