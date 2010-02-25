package com.datasync.model.barco;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.model.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.TblBarcoCabecalhoCondutor;
import com.datasync.models.barco.TblInformacaoCondutor;
import com.datasync.models.barco.TblInformacaoCondutorMotivoQuebra;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class TesteTblInformacaoCondutorMotivoQuebra extends TesteBarco {

	@Test
	public void verificaSincronismo() throws Exception{
		open();

		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblInformacaoCondutorMotivoQuebra());

		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblInformacaoCondutorMotivoQuebra t").getSingleResult();
		assertEquals(0, local.intValue());

		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblInformacaoCondutorMotivoQuebra t").getSingleResult();
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
		
		TblInformacaoCondutor i = new TblInformacaoCondutor();
		i.setIdFormulario("1");
		i.setQuantidadeRota(10);
		i.setTempoRotaLonga("19");
		i.setTempoRotaCurta("15");
		i.setNaoSabeTempo(true);
		i.setQuantidadeRotaAtendida(50);
		i.setQuaisRotasAtendidas("Varias");
		i.setDiferencaTempo("10");
		i.setQualDiferencaTempo("20");
		getLocalEm().persist(i);
		getServerEm().persist(i);
		
		TblInformacaoCondutorMotivoQuebra quebra = new TblInformacaoCondutorMotivoQuebra();
		quebra.setIdFormulario("1");
		quebra.setIdTipoMotivo(1);
		quebra.setQuaisOutros("Outros");
		getLocalEm().persist(quebra);

		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblInformacaoCondutorMotivoQuebra t").getSingleResult();
		assertEquals(1, local.intValue());

		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(quebra.getFullClassName()).size());

		close();

		ServiceRunner runner = new ServiceRunner();
		runner.run(new SyncLocalDatabaseService(indexables));

		processor = new IndexProcessor();
		assertEquals(1, processor.getIdsList(quebra.getFullClassName()).size());

		open();
		
		server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblInformacaoCondutorMotivoQuebra t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}
	
}
