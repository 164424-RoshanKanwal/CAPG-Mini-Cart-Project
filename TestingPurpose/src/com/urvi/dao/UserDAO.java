package com.urvi.dao;

import java.util.ArrayList;

public class UserDAO {
	ArrayList<User> userlist=new ArrayList<User>();

	public UserDAO()
	{
		userlist.add(new User("Urvi","Java","Admin"));
		userlist.add(new User("Sweta","Sql","Admin"));
		userlist.add(new User("Kajal","Java","User"));
	}

	public String getUsertyp(String username, String password) {
		for(User user:userlist)
		{
			if(user.getUsername().equals(username) && user.getPassword().equals(password))
			{
				return user.getUsertype();
			}
		}
		return "invalid";
		
	}

}
