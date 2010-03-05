package com.datasync.models;

import org.junit.Before;

import com.datasync.Teste;
import com.datasync.processor.IndexProcessor;

public class TesteCusto extends Teste{
	
	@Before
	public void zerarBanco(){
		open();

		clearCusto();
		insertDefaultData();
		
		serverEm.getTransaction().commit();
		localEm.getTransaction().commit();

		new IndexProcessor().getFile().delete();
	}  

	private void clearCusto(){
		String[] tabelas= new String[]{
				//Custo
				"TblIdCondutor",
				"TblCabecalhoCondutor",
				"TblIdEmbarcacao",
				"TblCabecalhoEmbarcacao",
				"TblIdMecanico",
				"TblCabecalhoMecanico",
				"TblIdMonitor",
				"TblCabecalhoMonitor",
				
				//Embarcado
				
				//Tipos Comuns
				"tblMunicipio"
		};
		
		for (String tabela : tabelas){
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

















