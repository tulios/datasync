package com.datasync.models;

import org.junit.Before;

import com.datasync.Teste;
import com.datasync.processor.IndexProcessor;

public class TesteBicicleta extends Teste {
	
	@Before
	public void zerarBanco(){
		open();
		clearBicicleta();
		insertDefaultData();
		close();
		new IndexProcessor().getFile().delete();
	}
	
	private void clearBicicleta(){
		String[] tabelas = new String[]{
			//aluno
			"tblAtividade",
			"tblCabecalhoAluno",
				
			//Tabelas comuns
			"tblEscola",
			"tblMunicipio",
			"tblTipoAtividade"
		};
		
		for(String tabela : tabelas){
			localEm.createNativeQuery("delete from " + tabela).executeUpdate();
			serverEm.createNativeQuery("delete from " + tabela).executeUpdate();
		}
	}
	
	private void insertDefaultData(){
		String[] inserts = new String[]{
				"insert into tblMunicipio values (1, 'Brasília', 'DF');",
				"insert into tblEscola values (1,'EMEF AURELIO BUARQUE',1);",
				"insert into tblTipoAtividade values (1, 'Atividade escolar extraclasse');"
		};
	
		for (String insert : inserts){
			localEm.createNativeQuery(insert).executeUpdate();
			serverEm.createNativeQuery(insert).executeUpdate();
		}
	}

}
