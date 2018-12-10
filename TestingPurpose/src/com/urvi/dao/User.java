package com.urvi.dao;

public class User {
String username,password,usertype;

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

public User(String username, String password, String usertype) {
	super();
	this.username = username;
	this.password = password;
	this.usertype = usertype;
}

public String getUsertype() {
	return usertype;
}

public void setUsertype(String usertype) {
	this.usertype = usertype;
}
}
