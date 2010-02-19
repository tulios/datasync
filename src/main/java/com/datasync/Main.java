package com.datasync;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

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
			StringBuilder str = new StringBuilder();
			str.append("log4j.rootLogger=DEBUG, A1\n");
			str.append("log4j.appender.A1=org.apache.log4j.FileAppender\n");
			str.append("\n");
			str.append("log4j.appender.A1.layout=org.apache.log4j.PatternLayout\n");
			str.append("log4j.appender.A1.layout.ConversionPattern=%d [%t] %-5p %c - %m%n\n");
			str.append("log4j.appender.A1.file=resources/datasync.log\n");
			str.append("\n");
			str.append("# Definicao dos pacotes\n");
			str.append("log4j.logger.org.hibernate=ERROR\n");
			str.append("log4j.logger.com.datasync=INFO\n");

			try {
				FileOutputStream fos = new FileOutputStream(new File(Main.LOG4J));
				fos.write(str.toString().getBytes());
				fos.flush();
				fos.close();

			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}























