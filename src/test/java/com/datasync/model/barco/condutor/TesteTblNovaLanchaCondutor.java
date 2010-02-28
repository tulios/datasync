package com.datasync.model.barco.condutor;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.model.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.condutor.TblBarcoCabecalhoCondutor;
import com.datasync.models.barco.condutor.TblNovaLanchaCondutor;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class TesteTblNovaLanchaCondutor extends TesteBarco {

	@Test
	public void verificaSincronismo() throws Exception{
		open();
		
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblNovaLanchaCondutor());
    	
		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblNovaLanchaCondutor t").getSingleResult();
		assertEquals(0, local.intValue());
		
		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblNovaLanchaCondutor t").getSingleResult();
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
		getServerEm().persist(cab);
		
		TblNovaLanchaCondutor c = new TblNovaLanchaCondutor();
		c.setIdFormulario("1");
		c.setBarcoMelhorDesempenho(1);
		c.setPorqueBarcoMelhorDesempenho("Por que Sim");
		c.setUsariaLancha("Sim");
		c.setPorqueUsariaLancha("Por que sim");
		c.setSeguranca(1);
		c.setTamanho(2);
		c.setCapacidadePasssageiro(20);
		c.setPotenciaMotor(220);
		c.setEstabilidade(100);
		c.setAparencia(100);
		c.setProtecao(100);
		c.setTempoDeslocamento(20);
		c.setFrenagem(20);
		c.setPorqueFrenagem("Por que sim");
		c.setReverso(10);
		c.setPorqueReverso("Por que sim");
		c.setComandoFrente(1);
		c.setPorqueComandoFrente("Por que sim");
		c.setMotorPopa(100);
		c.setPorqueMotorPopa("Por que sim");
		c.setVibracao(100);
		c.setTempoAtracagem(20);
		c.setUtilizariaLanchaMEC("Sim");
		c.setPorqueUtilizariaLanchaMEC("Por que sim");
		c.setTrechoMaiorDificuldade("Sim");
		c.setPorqueTrechoMaiorDificuldade("Por que sim");
		c.setContratadoBarco("Sim");
		c.setPorqueContratadoBarco("Por que sim");
		c.setManutencaoNecessaria("Sim");
		c.setPorqueManutencaoNecessaria("Por que sim");
		c.setLanchaSegura("Sim");
		c.setPorqueLanchaSegura("Por que sim");
		c.setQualSolucao("Solu��o");
		getLocalEm().persist(c);
		
		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblNovaLanchaCondutor t").getSingleResult();
		assertEquals(1, local.intValue());
		
		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(c.getFullClassName()).size());
		
		close();
		
    	ServiceRunner runner = new ServiceRunner();
    	runner.run(new SyncLocalDatabaseService(indexables));
    	
    	processor = new IndexProcessor();
    	assertEquals(1, processor.getIdsList(c.getFullClassName()).size());
    	
    	open();
    	server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblNovaLanchaCondutor t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}
	
}
