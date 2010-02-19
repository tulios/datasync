package com.datasync.jpa;

import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {

	private static JPAUtil instance;

	private EntityManagerFactory emfLocal;
	private EntityManagerFactory emfServer;

	private JPAUtil(){
		Map<String, String> localConfig = Config.getInstance().toJPAMap(Config.LOCAL);
		if (localConfig != null){
			emfLocal = Persistence.createEntityManagerFactory("datasync-local", localConfig);
		}else{
			emfLocal = Persistence.createEntityManagerFactory("datasync-local");
		}

		Map<String, String> serverConfig = Config.getInstance().toJPAMap(Config.SERVER);
		if (serverConfig != null){
			emfServer = Persistence.createEntityManagerFactory("datasync-server", serverConfig);
		}else{
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
