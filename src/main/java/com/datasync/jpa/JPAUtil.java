package com.datasync.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {

	private static JPAUtil instance;
	
	static {
		//Inicializando
		JPAUtil.getInstance();
	}
	
	private EntityManagerFactory emfLocal;
	private EntityManagerFactory emfServer;
	
	private JPAUtil(){
		emfLocal = Persistence.createEntityManagerFactory("datasync-local");
		emfServer = Persistence.createEntityManagerFactory("datasync-server");
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
