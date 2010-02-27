package com.datasync;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.swing.UIManager;

import org.apache.log4j.PropertyConfigurator;

import com.datasync.jpa.Config;
import com.datasync.ui.MainFrame;

public class Main {

	public static final String DIR = "resources";
	public static final String LOG4J = Main.DIR + "/log4j.properties";

	public static void main(String[] args) throws Exception {
		createDir();
		createDefaultLogFile();
		createDefaultConfigFile();
		
		UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());

		PropertyConfigurator.configure(Main.LOG4J);
		Config.start();
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
				FileOutputStream fos = new FileOutputStream(getLog4j());
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
	
	private static void createDefaultConfigFile(){
		if (!Config.getConfigFile().exists()){
			StringBuilder str = new StringBuilder();
			str.append("###########################################################################\n");
			str.append("# Esta opcao habilita ou desabilita o uso desse arquivo.\n");
			str.append("# Os valores possiveis sao: true e false\n");
			str.append("enabled=false\n\n");
			
			str.append("###########################################################################\n");
			str.append("# Esta opcao define o grupo de tabelas que serao sincronizadas\n");
			str.append("# Os valores possiveis sao: custo, barco\n");
			str.append("modelo=custo\n\n");
			
			str.append("###########################################################################\n");
			str.append("# Esta opcao configura o cabecalho da URL de conexao\n\n");
			str.append("# Configuracao para o POSTGRES\n");
			str.append("#connection_url=jdbc:postgresql://\n\n");
			str.append("# Configuracao para o SQL SERVER 2005\n");
			str.append("connection_url=jdbc:jtds:sqlserver://\n\n");
			
			str.append("###########################################################################\n");
			str.append("# Esta opcao configura a classe de acesso do driver do banco de dados\n\n");
			str.append("# Configuracao para o POSTGRES\n");
			str.append("#driver_class=org.postgresql.Driver\n\n");
			str.append("# Configuracao para o SQL SERVER 2005\n");
			str.append("driver_class=net.sourceforge.jtds.jdbc.Driver\n\n");
			
			str.append("###########################################################################\n");
			str.append("# Esta opcao configura o dialeto de conversacao com o banco de dados\n\n");
			str.append("# Configuracao para o POSTGRES\n");
			str.append("#dialect=org.hibernate.dialect.PostgreSQLDialect\n\n");
			str.append("# Configuracao para o SQL SERVER 2005\n");
			str.append("dialect=org.hibernate.dialect.SQLServerDialect\n\n");
			
			str.append("###########################################################################\n");
			str.append("# Este grupo de opcoes configuram o acesso ao banco de dados local\n");
			str.append("ip_local=localhost\n");
			str.append("porta_local=1433\n");
			str.append("banco_local=\n");
			str.append("usuario_local=\n");
			str.append("senha_local=\n");
			
			str.append("\n");
			str.append("# Este grupo de opcoes configuram o acesso ao banco de dados remoto\n");
			str.append("ip_server=\n");
			str.append("porta_server=\n");
			str.append("banco_server=\n");
			str.append("usuario_server=\n");
			str.append("senha_server=\n");
			
			try {
				FileOutputStream fos = new FileOutputStream(Config.getConfigFile());
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























