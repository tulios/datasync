package com.datasync;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

import javax.swing.UIManager;

import org.apache.log4j.PropertyConfigurator;

import com.datasync.ui.MainFrame;

public class Main {

	public static final String DIR = "resources";
	public static final String LOG4J = Main.DIR + "/log4j.properties";

	public static void main(String[] args) throws Exception {
		createDir();
		createDefaultLogFile();
		
		UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		
		PropertyConfigurator.configure(Main.LOG4J);
		MainFrame.start();
	}

	public static int getPorcentagemAtual(int valor, int total){
		return (int) (100*valor)/total;
	}

	public static void createDir(){
		if (!getDir().exists()){
			getDir().mkdirs();
		}
	}

	private static File getDir(){
		return new File(Main.DIR);
	}

	private static File getLog4j(){
		return new File(Main.LOG4J);
	}

	private static void createDefaultLogFile(){
		if (!getLog4j().exists()){
			Properties prop = new Properties();
			prop.put("log4j.rootLogger", "DEBUG, A1");
			prop.put("log4j.appender.A1", "org.apache.log4j.FileAppender");
			prop.put("log4j.appender.A1.layout", "org.apache.log4j.PatternLayout");
			prop.put("log4j.appender.A1.layout.ConversionPattern", "%d [%t] %-5p %c - %m%n");
			prop.put("log4j.appender.A1.file", "resources/datasync.log");

			prop.put("log4j.logger.org.hibernate", "ERROR");
			prop.put("log4j.logger.com.datasync", "INFO");
			try {
				prop.store(new FileOutputStream(new File(Main.LOG4J)), "Log4J properties");
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}























