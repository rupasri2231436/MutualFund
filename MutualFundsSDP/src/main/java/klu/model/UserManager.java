package klu.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import klu.repository.UserRepository;

@Service
public class UserManager {
    @Autowired
    private UserRepository userRepository;

    public boolean saveUser(User user) {
        if (userRepository.existsById(user.getUsername())) {
            return false; // User already exists
        }
        userRepository.save(user); // Save new user
        return true;
    }

    public String userValidate(User user) {
        return userRepository.validate(user.getUsername(), user.getPassword()).equals("1")
            ? "Authorized User" : "Unauthorized User";
    }
}
