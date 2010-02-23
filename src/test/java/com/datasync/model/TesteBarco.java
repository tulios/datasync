package com.datasync.model;

import org.junit.Before;

import com.datasync.Teste;
import com.datasync.processor.IndexProcessor;

public class TesteBarco extends Teste{

	@Before
	public void zerarBanco(){
		open();

		clearBarco();

		serverEm.getTransaction().commit();
		localEm.getTransaction().commit();

		new IndexProcessor().getFile().delete();
	}  

	private void clearBarco(){
		localEm.createNativeQuery("delete from TblInformacaoCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutor").executeUpdate();
		
		localEm.createNativeQuery("delete from TblIdentificacaoCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblIdentificacaoCondutor").executeUpdate();
		
		localEm.createNativeQuery("delete from TblCaracterizacaoCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblCaracterizacaoCondutor").executeUpdate();
		
		localEm.createNativeQuery("delete from TblCabecalhoCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblCabecalhoCondutor").executeUpdate();
	}
	
}
