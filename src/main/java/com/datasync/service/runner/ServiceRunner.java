package com.datasync.service.runner;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.apache.log4j.Logger;

import com.datasync.jpa.JPAUtil;
import com.datasync.service.IService;
import com.datasync.ui.MainFrame;

public abstract class ServiceRunner {

	protected static Logger log = Logger.getLogger(ServiceRunner.class);
	
	protected EntityManager localEm;
	protected EntityManager remoteEm;
	
	EntityTransaction txLocal;
	EntityTransaction txRemote;
	
	public abstract boolean run(IService service) throws Exception;
	
	protected void conectToLocalServer() throws Exception {
		try{
			MainFrame.getInstance().setMensagem("Iniciando conexão com servidor local...");
			
			this.localEm = JPAUtil.getInstance().getLocalEntityManager();

			MainFrame.getInstance().setMensagem("Conectado, iniciando tarefa...");
			
			this.txLocal = localEm.getTransaction();
			this.txLocal.begin();
			
		} catch (Exception e) {
			MainFrame.getInstance().apresentarErro("Erro de conexão com o servidor local. " +
				"Por favor, vefifique as configurações de conexão e tente novamente.\n\n");
			
			throw e;
		}
	}
	
	protected void conectToRemoteServer() throws Exception{
		try{
			MainFrame.getInstance().setMensagem("Iniciando conexão com o servidor remoto...");
			
			this.remoteEm = JPAUtil.getInstance().getServerEntityManager();
			
			MainFrame.getInstance().setMensagem("Conectado, iniciando tarefa...");
			
			this.txRemote = remoteEm.getTransaction();
			this.txRemote.begin();
			
		} catch (Exception e) {
			MainFrame.getInstance().apresentarErro("Erro de conexão com o servidor remoto." +
				"Por favor, vefifique as configurações de conexão e tente novamente.\n\n");
			
			throw e;
		}
	}
	
	protected void execute(IService service) throws Exception {
		try{
			service.setLocalEntityManager(this.localEm);
			service.setRemoteEntityManager(this.remoteEm);
			log.debug("Running: " + service.getClass().getName());
			service.execute();
		}
		catch (Exception e) {
			MainFrame.getInstance().apresentarErro("Erro ao executar operação.\n");
			throw e;
		}
	}
	
	protected void commitLocalExecution() throws Exception {
		try{
			txLocal.commit();
			localEm.close();
		}
		catch (Exception e) {
			MainFrame.getInstance().apresentarErro("Erro ao executar operação no servidor local.\n");
			throw e;
		}
	}
	
	protected void commitRemoteExecution() throws Exception {
		try{
			txRemote.commit();
			remoteEm.close();
		}
		catch (Exception e) {
			MainFrame.getInstance().apresentarErro("Erro ao executar operação no servidor remoto.\n");
			throw e;
		}
	}
	
	protected void executeServiceOnRemoteServer(IService service) throws Exception {
		try{
			service.setRemoteEntityManager(remoteEm);
			log.debug("Running: " + service.getClass().getName());
			service.execute();
			
			txRemote.commit();
			remoteEm.close();
		}
		catch (Exception e) {
			MainFrame.getInstance().apresentarErro("Erro ao executar operação no servidor remoto.\n");
			throw e;
		}
	}
}
