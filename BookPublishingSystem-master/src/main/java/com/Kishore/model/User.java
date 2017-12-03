package com.Kishore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "users")
public class User {

		@Id
		@GeneratedValue
		@Column(name = "id")
		private int id;

		@Column(name = "name")
		private String name;

		@Column(name = "username")
		private String username;
		
		@Column(name = "password")
		private String password;
		
		@Column(name = "mobile_no")
		private String mobileNumber;
		
		@Column(name = "email_id")
		private String email;

		@Column(name="active")
		private String active;
		
		@ManyToOne
		@JoinColumn(name="user_role_id")
		private Role role;

		public User(){
			
		}
		
		public User(String name, String username, String password, String mobileNumber, String emailID) {
			this.name = name;
			this.username = username;
			this.password = password;
			this.mobileNumber = mobileNumber;
			this.email = emailID;
			this.active = "A";
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

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

		public String getMobileNumber() {
			return mobileNumber;
		}

		public void setMobileNumber(String mobileNumber) {
			this.mobileNumber = mobileNumber;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getActive() {
			return active;
		}

		public void setActive(String active) {
			this.active = active;
		}

		public Role getRole() {
			return role;
		}

		public void setRole(Role role) {
			this.role = role;
		}
		}

