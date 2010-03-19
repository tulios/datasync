package com.datasync.models.barco.condutor;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteBarco;
import com.datasync.models.barco.condutor.TblInformacaoCondutorFrequencia;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;

public class TesteTblInformacaoCondutorFrequencia extends TesteBarco {

	@Test
	public void verificaSincronismo() throws Exception{
		open();
		
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblInformacaoCondutorFrequencia());
    	
		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblInformacaoCondutorFrequencia t").getSingleResult();
		assertEquals(0, local.intValue());
		
		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblInformacaoCondutorFrequencia t").getSingleResult();
		assertEquals(0, server.intValue());
		
		TblInformacaoCondutorFrequencia i = new TblInformacaoCondutorFrequencia();
		i.setIdFormulario("1");
		i.setIdTipoFrequencia(1);
		i.setQuandoOutro("outro");
		getLocalEm().persist(i);
		
		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblInformacaoCondutorFrequencia t").getSingleResult();
		assertEquals(1, local.intValue());
		
		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(i.getFullClassName()).size());
		
		close();
		
    	ServiceRunner runner = new ServiceRunner();
    	runner.run(new SyncDatabasesService(indexables));
    	
    	processor = new IndexProcessor();
    	assertEquals(1, processor.getIdsList(i.getFullClassName()).size());
    	
    	open();
    	server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblInformacaoCondutorFrequencia t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}
	
}
