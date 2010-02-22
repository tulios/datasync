package com.datasync.model;

import org.junit.Before;

import com.datasync.Teste;
import com.datasync.processor.IndexProcessor;

public class TesteCusto extends Teste{
	
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

















