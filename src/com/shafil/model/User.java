package com.shafil.model;

import java.io.InputStream;
import java.util.Base64;

public class User {

          private String userId;
          private String password;
          private String firstname;
          private String lastname;
          private String address;
          private String city;
          private byte[] photo;
          private String base64Image;
          private InputStream inputStream;
          
          
          
          public byte[] getPhoto() {
			return photo;
		}

		public void setPhoto(byte[] photo) {
			this.photo = photo;
		}

		public String getBase64Image() {
			this.base64Image=Base64.getEncoder().encodeToString(this.photo);
			return base64Image;
		}

		public void setBase64Image(String base64Image) {
			this.base64Image = base64Image;
		}

		public InputStream getInputStream() {
			return inputStream;
		}

		public void setInputStream(InputStream inputStream) {
			this.inputStream = inputStream;
		}

		
		
		
		public User(String userId, String password, String firstname, String lastname, String address, String city,
				InputStream inputStream) {
			super();
			this.userId = userId;
			this.password = password;
			this.firstname = firstname;
			this.lastname = lastname;
			this.address = address;
			this.city = city;
			this.inputStream = inputStream;
		}

		public User() {
        	  
	}

		public User(String userId, String password, String firstname, String lastname, String address, String city) {
			super();
			this.userId = userId;
			this.password = password;
			this.firstname = firstname;
			this.lastname = lastname;
			this.address = address;
			this.city = city;
		}

		public User(String userId, String firstname, String lastname, String address, String city) {
			super();
			this.userId = userId;
			this.firstname = firstname;
			this.lastname = lastname;
			this.address = address;
			this.city = city;
		}

		public String getUserId() {
			return userId;
		}

		public void setUserId(String userId) {
			this.userId = userId;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
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

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		@Override
		public String toString() {
			return "User [userId=" + userId + ", password=" + password + ", firstname=" + firstname + ", lastname="
					+ lastname + ", address=" + address + ", city=" + city + "]";
		}

}
