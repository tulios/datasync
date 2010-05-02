package com.datasync.models.custo;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteBarco;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblCabecalhoCondutor extends TesteBarco{

	@Test
	public void verificaSincronismo() throws Exception{
		open();
		
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblCabecalhoCondutor());
    	
		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoCondutor t").getSingleResult();
		assertEquals(0, local.intValue());
		
		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCabecalhoCondutor t").getSingleResult();
		assertEquals(0, server.intValue());
		
		TblCabecalhoCondutor c = new TblCabecalhoCondutor();
		c.setIdFormulario("1");
		c.setPesquisador("Tulio");
		c.setMunicipio("Brasilia");
		c.setUf("DF");
		c.setResponsavel("Tulio");
		c.setDataColeta("10-10-2010");
		getLocalEm().persist(c);
		
		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoCondutor t").getSingleResult();
		assertEquals(1, local.intValue());
		
		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(c.getFullClassName()).size());
		
		close();
		
    	ServiceRunner runner = new SyncServiceRunner();
    	runner.run(new SyncDatabasesService(indexables));
    	
    	processor = new IndexProcessor();
    	assertEquals(1, processor.getIdsList(c.getFullClassName()).size());
    	
    	open();
    	server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCabecalhoCondutor t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}
	
}










