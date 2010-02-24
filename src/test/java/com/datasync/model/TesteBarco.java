package com.datasync.model;

import org.junit.Before;

import com.datasync.Teste;
import com.datasync.processor.IndexProcessor;

public class TesteBarco extends Teste{

	@Before
	public void zerarBanco(){
		open();
		clearBarco();
		insertDefaultData();
		close();
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
		
		//Tabelas Comuns
		
		localEm.createNativeQuery("delete from tblMunicipio").executeUpdate();
		serverEm.createNativeQuery("delete from tblMunicipio").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoEscolaridade").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoEscolaridade").executeUpdate();
	}
	
	private void insertDefaultData(){
		localEm.createNativeQuery("insert into tblMunicipio (IdMunicipio, NomeMunicipio, UF) values (1, 'Brasília', 'DF');").executeUpdate();
		serverEm.createNativeQuery("insert into tblMunicipio (IdMunicipio, NomeMunicipio, UF) values (1, 'Brasília', 'DF');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoEscolaridade values (1,'Ensino Fundamental 1ª série');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoEscolaridade values (1,'Ensino Fundamental 1ª série');").executeUpdate();
	}
	
}

















