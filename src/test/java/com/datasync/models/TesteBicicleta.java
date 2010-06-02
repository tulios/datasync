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
				
		};
		
		for(String tabela : tabelas){
			localEm.createNativeQuery("delete from " + tabela).executeUpdate();
			serverEm.createNativeQuery("delete from " + tabela).executeUpdate();
		}
	}
	
	private void insertDefaultData(){
		String[] inserts = new String[]{
				"insert into tblMunicipio values (1, 'Brasília', 'DF');"
		};
	
		for (String insert : inserts){
			localEm.createNativeQuery(insert).executeUpdate();
			serverEm.createNativeQuery(insert).executeUpdate();
		}
	}

}
