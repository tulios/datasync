package com.datasync.models.barco.condutor;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteBarco;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblIdentificacaoCondutor extends TesteBarco {

	@Test
	public void verificaSincronismo() throws Exception{
		open();
		
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblBarcoCabecalhoCondutor());
		indexables.add(new TblIdentificacaoCondutor());
    	
		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblIdentificacaoCondutor t").getSingleResult();
		assertEquals(0, local.intValue());
		
		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblIdentificacaoCondutor t").getSingleResult();
		assertEquals(0, server.intValue());
		
		TblBarcoCabecalhoCondutor cab = new TblBarcoCabecalhoCondutor();
		cab.setIdFormulario("1");
		cab.setIdPesquisador(1);
		cab.setIdMunicipio(1);
		cab.setRota("100");
		cab.setData(new Timestamp(new Date().getTime()));
		cab.setHorarioInicio("10");
		cab.setHorarioTermino("10");
		getLocalEm().persist(cab);
		
		TblIdentificacaoCondutor i = new TblIdentificacaoCondutor();
		i.setIdFormulario("1");
		i.setComunidade("Comunidade");
		i.setSexo("M");
		i.setIdade(22);
		i.setIdTipoEscolaridade(1);
		i.setGrupo("grupo");
		i.setQuaisGrupos("Varios");
		getLocalEm().persist(i);
		
		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblIdentificacaoCondutor t").getSingleResult();
		assertEquals(1, local.intValue());
		
		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(i.getFullClassName()).size());
		
		close();
		
    	ServiceRunner runner = new SyncServiceRunner();
    	runner.run(new SyncDatabasesService(indexables));
    	
    	processor = new IndexProcessor();
    	assertEquals(1, processor.getIdsList(i.getFullClassName()).size());
    	
    	open();
    	server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblIdentificacaoCondutor t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}
	
}
