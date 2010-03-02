package com.datasync.models.barco.condutor;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteBarco;
import com.datasync.models.barco.condutor.TblBarcoCabecalhoCondutor;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class TesteTblBarcoCabecalhoCondutor extends TesteBarco {

	@Test
	public void verificaSincronismo() throws Exception{
		open();
		
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblBarcoCabecalhoCondutor());
    	
		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblBarcoCabecalhoCondutor t").getSingleResult();
		assertEquals(0, local.intValue());
		
		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblBarcoCabecalhoCondutor t").getSingleResult();
		assertEquals(0, server.intValue());
		
		TblBarcoCabecalhoCondutor c = new TblBarcoCabecalhoCondutor();
		c.setIdFormulario("1");
		c.setIdPesquisador(1);
		c.setIdRota(1);
		c.setIdMunicipio(1);
		c.setRota("100");
		c.setData(new Timestamp(new Date().getTime()));
		c.setHorarioInicio("10");
		c.setHorarioTermino("10");
		getLocalEm().persist(c);
		
		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblBarcoCabecalhoCondutor t").getSingleResult();
		assertEquals(1, local.intValue());
		
		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(c.getFullClassName()).size());
		
		close();
		
    	ServiceRunner runner = new ServiceRunner();
    	runner.run(new SyncLocalDatabaseService(indexables));
    	
    	processor = new IndexProcessor();
    	assertEquals(1, processor.getIdsList(c.getFullClassName()).size());
    	
    	open();
    	server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblBarcoCabecalhoCondutor t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}
	
}
