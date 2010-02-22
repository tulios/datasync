package com.datasync;

import javax.persistence.EntityManager;

import com.datasync.jpa.JPAUtil;

public abstract class Teste {
	
	protected static EntityManager localEm;
	protected static EntityManager serverEm;

	static {
		localEm  = JPAUtil.getInstance().getLocalEntityManager();
		serverEm  = JPAUtil.getInstance().getServerEntityManager();
	}

	public static EntityManager getLocalEm() {
		return localEm;
	}

	public static EntityManager getServerEm() {
		return serverEm;
	}

	public void close(){
		getLocalEm().getTransaction().commit();
		getServerEm().getTransaction().commit();
		getLocalEm().close();
		getServerEm().close();
	}

	public void open(){
		if (!localEm.isOpen()){
			localEm = JPAUtil.getInstance().getLocalEntityManager();
		}
		getLocalEm().getTransaction().begin();

		if (!serverEm.isOpen()){
			serverEm = JPAUtil.getInstance().getServerEntityManager();
		}
		getServerEm().getTransaction().begin();
	}

	public abstract void zerarBanco();

}
