package com.datasync.service.runner;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.datasync.jpa.JPAUtil;
import com.datasync.service.IService;
import com.datasync.ui.MainFrame;

public class ServiceRunner {

	public void run(IService service) throws Exception {
		MainFrame.getInstance().setMensagem("Iniciando conexão...");
		
		EntityManager localEm = JPAUtil.getInstance().getLocalEntityManager();
		EntityManager serverEm = JPAUtil.getInstance().getServerEntityManager();
		
		MainFrame.getInstance().setMensagem("Conectado, iniciando sincronização...");
		
		EntityTransaction txLocal = localEm.getTransaction();
		EntityTransaction txServer = serverEm.getTransaction();
		
		txLocal.begin();
		txServer.begin();

		try {
			service.setEntityManagers(localEm, serverEm);
			System.out.println("Running: " + service.getClass().getName());
			service.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}

		txLocal.commit();
		txServer.commit();
		
		localEm.close();
		serverEm.close();
	}

}
