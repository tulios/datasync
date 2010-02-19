package com.datasync.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {

	private static JPAUtil instance;

	private EntityManagerFactory emfLocal;
	private EntityManagerFactory emfServer;

	private JPAUtil(){
		if (Config.getInstance().isEnabled()){
			emfLocal = Persistence.createEntityManagerFactory("datasync-local", Config.getInstance().toLocalJPAMap());
			emfServer = Persistence.createEntityManagerFactory("datasync-server", Config.getInstance().toServerJPAMap());
			
		}else{
			emfLocal = Persistence.createEntityManagerFactory("datasync-local");
			emfServer = Persistence.createEntityManagerFactory("datasync-server");
		}
	}

	public static JPAUtil getInstance(){
		if (instance == null){
			instance = new JPAUtil();
		}
		return instance;
	}

	public EntityManager getLocalEntityManager(){
		return emfLocal.createEntityManager();
	}

	public EntityManager getServerEntityManager(){
		return emfServer.createEntityManager();
	}
}
