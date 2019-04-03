package com.visen.db;

import java.util.Properties;

public class ConfigManager {
	private static ConfigManager configManager;
	private static Properties properties;
	
	private ConfigManager() 
	{
	}
	
	public String getConnString(String key) 
	{
		if(key.equals("jdbc.connection.url"))
			return "jdbc:mysql://localhost:3306?useSSL=false&serverTimezone=Asia/Shanghai";
		else if(key.equals("jdbc.driver_class"))
			return "jdbc:mysql://localhost:3306?useSSL=false&serverTimezone=Asia/Shanghai";
		else if(key.equals("jdbc.connection.username"))
			return "root";
		else if(key.equals("jdbc.connection.password"))
			return "root";
		else
			return "";
	}
}
