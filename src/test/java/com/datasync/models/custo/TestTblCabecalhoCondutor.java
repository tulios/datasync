package com.datasync.models.custo;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteCusto;
import com.datasync.models.custo.TblCabecalhoCondutor;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class TestTblCabecalhoCondutor extends TesteCusto{

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
		c.setPesquisador("T�lio");
		c.setMunicipio("Bras�lia");
		c.setUf("DF");
		c.setResponsavel("T�lio");
		c.setDataColeta("10-10-2010");
		getLocalEm().persist(c);
		
		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoCondutor t").getSingleResult();
		assertEquals(1, local.intValue());
		
		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(c.getFullClassName()).size());
		
		close();
		
    	ServiceRunner runner = new ServiceRunner();
    	runner.run(new SyncLocalDatabaseService(indexables));
    	
    	processor = new IndexProcessor();
    	assertEquals(1, processor.getIdsList(c.getFullClassName()).size());
    	
    	open();
    	server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCabecalhoCondutor t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}
	
}










