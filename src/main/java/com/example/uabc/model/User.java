/**
 * 
 */
package com.example.uabc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author ricardo
 *
 */

@Entity
@Table(name = "user_tbl")
public class User {
	
    @Id @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "user_id")
	private int user_id;
    @Column(name = "name")
	private String name;
    @Column(name ="lastname")
    private String lastname;
    @Column(name="password")
    private String password;
    @Column(name="age")
    private int age;
    @Column(name="email")
    private String email;
    
    
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String name, String lastname, String password, int age, String email) {
		super();
		this.name = name;
		this.lastname = lastname;
		this.password = password;
		this.age = age;
		this.email = email;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
    
    
	
	
}
