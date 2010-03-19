package com.datasync.models.custo;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteCusto;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TestTblCabecalhoMecanico extends TesteCusto {

	@Test
	public void verificaSincronismo() throws Exception{
		open();

		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblCabecalhoMecanico());

		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoMecanico t").getSingleResult();
		assertEquals(0, local.intValue());

		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCabecalhoMecanico t").getSingleResult();
		assertEquals(0, server.intValue());

		TblCabecalhoMecanico m = new TblCabecalhoMecanico();
		m.setIdFormulario("1");
		m.setPesquisador("T�lio");
		m.setMunicipio("Bras�lia");
		m.setUf("DF");
		m.setResponsavel("T�lio");
		m.setDataColeta("10-10-2010");
		getLocalEm().persist(m);

		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoMecanico t").getSingleResult();
		assertEquals(1, local.intValue());

		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(m.getFullClassName()).size());

		close();

		ServiceRunner runner = new SyncServiceRunner();
		runner.run(new SyncDatabasesService(indexables));

		processor = new IndexProcessor();
		assertEquals(1, processor.getIdsList(m.getFullClassName()).size());

		open();
		server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCabecalhoMecanico t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}

}
