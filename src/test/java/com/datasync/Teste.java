package com.datasync;

import javax.persistence.EntityManager;

import org.junit.Before;

import com.datasync.jpa.JPAUtil;
import com.datasync.processor.IndexProcessor;

public class Teste {

	private static EntityManager localEm;
	private static EntityManager serverEm;
	
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
	
	@Before
	public void zerarBanco(){
		localEm.getTransaction().begin();
		serverEm.getTransaction().begin();
		
		localEm.createNativeQuery("truncate TblCabecalhoCondutor").executeUpdate();
		serverEm.createNativeQuery("truncate TblCabecalhoCondutor").executeUpdate();
		
		serverEm.getTransaction().commit();
		localEm.getTransaction().commit();
		
		new IndexProcessor().getFile().delete();
	}  
	
}

















