package com.datasync.service.runner;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.apache.log4j.Logger;

import com.datasync.jpa.JPAUtil;
import com.datasync.service.IService;
import com.datasync.ui.MainFrame;

public class ServiceRunner {

	private static Logger log = Logger.getLogger(ServiceRunner.class);

	public void run(IService service) throws Exception {
		try{
			MainFrame.getInstance().setMensagem("Iniciando conexão...");
			
			EntityManager localEm = JPAUtil.getInstance().getLocalEntityManager();
			EntityManager serverEm = JPAUtil.getInstance().getServerEntityManager();

			MainFrame.getInstance().setMensagem("Conectado, iniciando tarefa...");

			EntityTransaction txLocal = localEm.getTransaction();
			EntityTransaction txServer = serverEm.getTransaction();

			txLocal.begin();
			txServer.begin();

			service.setEntityManagers(localEm, serverEm);
			log.debug("Running: " + service.getClass().getName());
			service.execute();

			txLocal.commit();
			txServer.commit();

			localEm.close();
			serverEm.close();

		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}

}
