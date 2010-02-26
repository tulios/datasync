package com.datasync.service.runner;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.apache.log4j.Logger;

import com.datasync.jpa.JPAUtil;
import com.datasync.service.IService;
import com.datasync.ui.MainFrame;

public class ServiceRunner {

	private static Logger log = Logger.getLogger(ServiceRunner.class);
	
	private EntityManager localEm;
	private EntityManager serverEm;
	
	EntityTransaction txLocal;
	EntityTransaction txServer;
	
	public boolean run(IService service) throws Exception {
		try{
			conectar();
			executar(service);

		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
	
	private void conectar() throws Exception{
		try{
			MainFrame.getInstance().setMensagem("Iniciando conexão...");
			
			this.localEm = JPAUtil.getInstance().getLocalEntityManager();
			this.serverEm = JPAUtil.getInstance().getServerEntityManager();
			
			MainFrame.getInstance().setMensagem("Conectado, iniciando tarefa...");
			
			this.txLocal = localEm.getTransaction();
			this.txServer = serverEm.getTransaction();
			
			this.txLocal.begin();
			this.txServer.begin();
			
		} catch (Exception e) {
			MainFrame.getInstance().apresentarErro("Erro de conexão", 
					"Erro ao conectar com os servidores. Por favor, " +
					"vefifique as configurações de conexão e tente novamente.\n\n" +
					"Detalhes: "+e.getMessage());
			
			throw e;
		}
	}
	
	private void executar(IService service) throws Exception {
		try{
			service.setEntityManagers(localEm, serverEm);
			log.debug("Running: " + service.getClass().getName());
			service.execute();
			
			txLocal.commit();
			txServer.commit();
			
			localEm.close();
			serverEm.close();
		}
		catch (Exception e) {
			MainFrame.getInstance().apresentarErro("Erro ao executar operação.\n" +
					"Detalhes: "+e.getMessage());
			
			throw e;
		}
	}

}
