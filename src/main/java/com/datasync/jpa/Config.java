package com.datasync.jpa;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.apache.log4j.Logger;

import com.datasync.Main;

public class Config {

	private static Config instance;
	private Properties properties;

	public static final String CONFIG_FILE = Main.DIR + "/config.properties";

	public static final String LOCAL = "local";
	public static final String SERVER = "server";

	private static Logger log = Logger.getLogger(Config.class);

	private Config(){
		if (getConfigFile().exists()){
			properties = new Properties();
			try {
				properties.load(new FileInputStream(getConfigFile()));
			} catch (IOException e) {
				log.error(e.getMessage());
				e.printStackTrace();
			}
		}
	}
	
	public static void start(){
		Config.getInstance();
	}

	public static Config getInstance(){
		if (instance == null){
			instance = new Config();
		}
		return instance;
	}
	
	public static File getConfigFile(){
		return new File(CONFIG_FILE);
	}

	public String getProperty(String key){
		if (properties != null){
			return properties.getProperty(key);
		}
		return null;
	}

	public Map<String, String> toJPAMap(String tipo){
		if (tipo != null && properties != null && properties.getProperty("enabled").equals("true")){
			Map<String, String> map = new HashMap<String, String>();

			if (tipo.equals(Config.LOCAL)){

				String url = getProperty("connection_url") + getProperty("ip_" + Config.LOCAL) + ":" +
				getProperty("porta_" + Config.LOCAL) + "/" + getProperty("banco_" + Config.LOCAL);
				map.put("hibernate.connection.url", url);

				map.put("hibernate.connection.driver_class", getProperty("driver_class"));
				map.put("hibernate.dialect", getProperty("dialect"));
				map.put("hibernate.connection.username", getProperty("usuario_" + Config.LOCAL));
				map.put("hibernate.connection.password", getProperty("senha_" + Config.LOCAL));

			}else if (tipo.equals(Config.SERVER)){
				String url = getProperty("connection_url") + getProperty("ip_" + Config.SERVER) + ":" +
				getProperty("porta_" + Config.SERVER) + "/" + getProperty("banco_" + Config.SERVER);
				map.put("hibernate.connection.url", url);

				map.put("hibernate.connection.driver_class", getProperty("driver_class"));
				map.put("hibernate.dialect", getProperty("dialect"));
				map.put("hibernate.connection.username", getProperty("usuario_" + Config.SERVER));
				map.put("hibernate.connection.password", getProperty("senha_" + Config.SERVER));
			}

			return map;
		}
		return null;
	}

}



























