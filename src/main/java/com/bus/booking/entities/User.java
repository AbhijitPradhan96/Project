package com.bus.booking.entities;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class User extends Abstract {
	
	@Column(name="firstName", nullable=false)
	private String firstName;
	
	@Column(name="lastName", nullable=false)
	private String lastName;
	
	@Column(name="email", nullable=false)
	private String email;
	
	@Column(name="password", nullable=false)
	private String password;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
