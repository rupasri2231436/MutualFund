package klu.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "signin")  // Keep this as your table name or change it if needed
public class User {

    @Id
    @Column(name = "username", nullable = false, unique = true)
    private String username;
    
    @Column(name = "email", nullable = false, unique = true)
    private String email;
    
    @Column(name = "firstname", nullable = false, unique = true)
    private String firstname;
    
    @Column(name = "lastname", nullable = false, unique = true)
    private String lastname;
    
    @Column(name = "phone", nullable = false, unique = true)
    private String phone;
    
    

    @Column(name = "password", nullable = false)
    private String password;
    // Default constructor
    public User() {}

    // Parameterized constructor
    public User(String username, String password, String mobile, String email) {
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.email = email;
    }

    // Getters and setters
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User [email=" + email + ", firstname="+firstname+", lastname=" +lastname+", phone="+phone+", username="+username+", password=" + password  + "]";
    }
}
