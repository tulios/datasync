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

public class TesteTblCaracterizacaoCondutor extends TesteBarco {

	@Test
	public void verificaSincronismo() throws Exception{
		open();
		
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblBarcoCabecalhoCondutor());
		indexables.add(new TblCaracterizacaoCondutor());
    	
		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCaracterizacaoCondutor t").getSingleResult();
		assertEquals(0, local.intValue());
		
		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCaracterizacaoCondutor t").getSingleResult();
		assertEquals(0, server.intValue());
		
		TblBarcoCabecalhoCondutor cab = new TblBarcoCabecalhoCondutor();
		cab.setIdFormulario("1");
		cab.setIdPesquisador("1");
		cab.setIdMunicipio(1);
		cab.setRota("100");
		cab.setData(new Timestamp(new Date().getTime()));
		cab.setHorarioInicio("10");
		cab.setHorarioTermino("10");
		getLocalEm().persist(cab);
		
		TblCaracterizacaoCondutor c = new TblCaracterizacaoCondutor();
		c.setIdFormulario("1");
		c.setTempoExperienciaCondutorAnos(5);
		c.setTempoExperienciaCondutorMeses(10);
		c.setTempoAtuacaoAnos(5);
		c.setTempoAtuacaoMeses(10);
		c.setPossuiHabilitacao("Sim");
		c.setTipoCategoria("1");
		c.setAnoRegistro(2009);
		c.setParticipacaoCurso("Sim");
		c.setPilotaBarcoMotorPopa("Sim");
		c.setQuantoHP(200.5);
		getLocalEm().persist(c);
		
		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCaracterizacaoCondutor t").getSingleResult();
		assertEquals(1, local.intValue());
		
		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(c.getFullClassName()).size());
		
		close();
		
    	ServiceRunner runner = new SyncServiceRunner();
    	runner.run(new SyncDatabasesService(indexables));
    	
    	processor = new IndexProcessor();
    	assertEquals(1, processor.getIdsList(c.getFullClassName()).size());
    	
    	open();
    	server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCaracterizacaoCondutor t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}
	
}
