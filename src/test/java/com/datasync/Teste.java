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
		open();

		clearCusto();

		serverEm.getTransaction().commit();
		localEm.getTransaction().commit();

		new IndexProcessor().getFile().delete();
	}  

	private void clearCusto(){
		localEm.createNativeQuery("delete from TblIdCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblIdCondutor").executeUpdate();
		
		localEm.createNativeQuery("delete from TblCabecalhoCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblCabecalhoCondutor").executeUpdate();

		localEm.createNativeQuery("delete from TblIdEmbarcacao").executeUpdate();
		serverEm.createNativeQuery("delete from TblIdEmbarcacao").executeUpdate();
		
		localEm.createNativeQuery("delete from TblCabecalhoEmbarcacao").executeUpdate();
		serverEm.createNativeQuery("delete from TblCabecalhoEmbarcacao").executeUpdate();

		localEm.createNativeQuery("delete from TblIdMecanico").executeUpdate();
		serverEm.createNativeQuery("delete from TblIdMecanico").executeUpdate();
		
		localEm.createNativeQuery("delete from TblCabecalhoMecanico").executeUpdate();
		serverEm.createNativeQuery("delete from TblCabecalhoMecanico").executeUpdate();

		localEm.createNativeQuery("delete from TblIdMonitor").executeUpdate();
		serverEm.createNativeQuery("delete from TblIdMonitor").executeUpdate();
		
		localEm.createNativeQuery("delete from TblCabecalhoMonitor").executeUpdate();
		serverEm.createNativeQuery("delete from TblCabecalhoMonitor").executeUpdate();
	}
}

















