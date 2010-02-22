package com.datasync.model.custo;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.datasync.Teste;
import com.datasync.models.IndexableEntity;
import com.datasync.models.custo.TblCabecalhoMonitor;
import com.datasync.models.custo.TblIdMonitor;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class TestTblIdMonitor extends Teste {

	@Test
	public void verificaSincronismo() throws Exception{
		open();

		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblCabecalhoMonitor());
		indexables.add(new TblIdMonitor());

		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoMonitor t").getSingleResult();
		assertEquals(0, local.intValue());

		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblIdMonitor t").getSingleResult();
		assertEquals(0, server.intValue());
		
		TblCabecalhoMonitor m = new TblCabecalhoMonitor();
		m.setIdFormulario("1");
		m.setPesquisador("Tœlio");
		m.setMunicipio("Bras’lia");
		m.setUf("DF");
		m.setResponsavel("Tœlio");
		m.setDataColeta("10-10-2010");
		getLocalEm().persist(m);
		
		TblIdMonitor mId = new TblIdMonitor();
		mId.setIdFormulario("1");
		mId.setNome("Nome");
		mId.setIdentidade("123321");
		mId.setIdentidadeUF("DF");
		mId.setDataNasc("15-12-1987");
		mId.setEscolaridade("superior");
		mId.setEstadoCivil("Solteiro");
		mId.setIdEmbarcacao("10");
		mId.setTempoExperiencia("4 anos");
		mId.setSalario("6.500");
		getLocalEm().persist(mId);

		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoMonitor t").getSingleResult();
		assertEquals(1, local.intValue());
		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblIdMonitor t").getSingleResult();
		assertEquals(1, local.intValue());

		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(mId.getFullClassName()).size());

		close();

		ServiceRunner runner = new ServiceRunner();
		runner.run(new SyncLocalDatabaseService(indexables));

		processor = new IndexProcessor();
		assertEquals(1, processor.getIdsList(mId.getFullClassName()).size());

		open();
		server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCabecalhoMonitor t").getSingleResult();
		assertEquals(1, server.intValue());
		server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblIdMonitor t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}

}
