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
		localEm.createNativeQuery("delete from TblInformacaoCondutorDonoBarco").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorDonoBarco").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorFrequencia").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorFrequencia").executeUpdate();
		
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
		
		localEm.createNativeQuery("delete from tblTipoFrequencia").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoFrequencia").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoDonoBarco").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoDonoBarco").executeUpdate();
	}
	
	private void insertDefaultData(){
		localEm.createNativeQuery("insert into tblMunicipio (IdMunicipio, NomeMunicipio, UF) values (1, 'Brasília', 'DF');").executeUpdate();
		serverEm.createNativeQuery("insert into tblMunicipio (IdMunicipio, NomeMunicipio, UF) values (1, 'Brasília', 'DF');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoEscolaridade values (1,'Ensino Fundamental 1ª série');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoEscolaridade values (1,'Ensino Fundamental 1ª série');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoFrequencia values (1,'Desc Frequencia');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoFrequencia values (1,'Desc Frequencia');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoDonoBarco values (1,'Da Prefeitura');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoDonoBarco values (1,'Da Prefeitura');").executeUpdate();
		
		//localEm.createNativeQuery("").executeUpdate();
		//serverEm.createNativeQuery("").executeUpdate();
	}
	
}

















