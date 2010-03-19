package com.datasync.models.custo;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteCusto;
import com.datasync.models.custo.TblCabecalhoEmbarcacao;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;

public class TestTblCabecalhoEmbarcacao extends TesteCusto {

	@Test
	public void verificaSincronismo() throws Exception{
		open();

		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblCabecalhoEmbarcacao());

		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoEmbarcacao t").getSingleResult();
		assertEquals(0, local.intValue());

		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCabecalhoEmbarcacao t").getSingleResult();
		assertEquals(0, server.intValue());

		TblCabecalhoEmbarcacao e = new TblCabecalhoEmbarcacao();
		e.setIdFormulario("1");
		e.setPesquisador("T�lio");
		e.setMunicipio("Bras�lia");
		e.setUf("DF");
		e.setResponsavel("T�lio");
		e.setDataColeta("10-10-2010");
		getLocalEm().persist(e);

		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoEmbarcacao t").getSingleResult();
		assertEquals(1, local.intValue());

		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(e.getFullClassName()).size());

		close();

		ServiceRunner runner = new ServiceRunner();
		runner.run(new SyncDatabasesService(indexables));

		processor = new IndexProcessor();
		assertEquals(1, processor.getIdsList(e.getFullClassName()).size());

		open();
		server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCabecalhoEmbarcacao t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}

}
