package com.datasync.model.custo;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.datasync.Teste;
import com.datasync.models.IndexableEntity;
import com.datasync.models.custo.TblCabecalhoCondutor;
import com.datasync.models.custo.TblIdCondutor;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class TestTblIdCondutor extends Teste {

	@Test
	public void verificaSincronismo() throws Exception{
		open();

		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblCabecalhoCondutor());
		indexables.add(new TblIdCondutor());

		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoCondutor t").getSingleResult();
		assertEquals(0, local.intValue());

		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblIdCondutor t").getSingleResult();
		assertEquals(0, server.intValue());

		TblCabecalhoCondutor c = new TblCabecalhoCondutor();
		c.setIdFormulario("1");
		c.setPesquisador("Tœlio");
		c.setMunicipio("Bras’lia");
		c.setUf("DF");
		c.setResponsavel("Tœlio");
		c.setDataColeta("10-10-2010");
		getLocalEm().persist(c);
		
		TblIdCondutor cId = new TblIdCondutor();
		cId.setIdFormulario("1");
		cId.setNome("Tœlio");
		cId.setIdentidade("12332112");
		cId.setIdentidadeUF("DF");
		cId.setDataNasc("15-12-1987");
		cId.setEscolaridade("Superior");
		cId.setEstadoCivil("Solteiro");
		cId.setNumeroEmbarcacao("10");
		cId.setHabilitacao("12345678900");
		cId.setCategoria("Categoria 1");
		cId.setTempoExperiencia("4 anos");
		cId.setSalario("6.500");
		cId.setCondutorReserva("123");
		getLocalEm().persist(cId);

		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoCondutor t").getSingleResult();
		assertEquals(1, local.intValue());
		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblIdCondutor t").getSingleResult();
		assertEquals(1, local.intValue());

		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(cId.getFullClassName()).size());

		close();

		ServiceRunner runner = new ServiceRunner();
		runner.run(new SyncLocalDatabaseService(indexables));

		assertEquals(1, processor.getIdsList(cId.getFullClassName()).size());

		open();
		server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCabecalhoCondutor t").getSingleResult();
		assertEquals(1, server.intValue());
		server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblIdCondutor t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}

}
