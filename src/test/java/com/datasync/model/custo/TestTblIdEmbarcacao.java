package com.datasync.model.custo;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.datasync.Teste;
import com.datasync.models.IndexableEntity;
import com.datasync.models.custo.TblCabecalhoEmbarcacao;
import com.datasync.models.custo.TblIdEmbarcacao;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class TestTblIdEmbarcacao extends Teste {

	@Test
	public void verificaSincronismo() throws Exception{
		open();

		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
		indexables.add(new TblCabecalhoEmbarcacao());
		indexables.add(new TblIdEmbarcacao());

		Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoEmbarcacao t").getSingleResult();
		assertEquals(0, local.intValue());

		Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblIdEmbarcacao t").getSingleResult();
		assertEquals(0, server.intValue());

		TblCabecalhoEmbarcacao e = new TblCabecalhoEmbarcacao();
		e.setIdFormulario("1");
		e.setPesquisador("Tœlio");
		e.setMunicipio("Bras’lia");
		e.setUf("DF");
		e.setResponsavel("Tœlio");
		e.setDataColeta("10-10-2010");
		getLocalEm().persist(e);
		
		TblIdEmbarcacao eId = new TblIdEmbarcacao();
		eId.setIdFormulario("1");
		eId.setIdEmbarcacao("10");
		eId.setAlunosmatutino("10");
		eId.setAlunosnoturno("10");
		eId.setAlunosvespertino("10");
		eId.setAnofabricacao("2001");
		eId.setCapacidadeindicada("10");
		eId.setCapacidadeinformada("5");
		eId.setDataaquisicao("10-10-2001");
		eId.setEmbarcacaoreserva("10");
		eId.setMesletivochuva("01");
		eId.setMesletivoseca("02");
		eId.setNomeembarcacao("Nome Barco");
		eId.setPosicaomotor("1");
		eId.setPotenciamotor("20");
		eId.setPropriedadeembarcacao("Tœlio");
		eId.setPropriedadeoutros("Outros");
		eId.setQuantidaderota("10");
		eId.setQuantmotor("10");
		eId.setRotaod("10");
		eId.setRotaOD1("11");
		eId.setRotaOD2("12");
		eId.setSituacaoembarcacao("Boa");
		eId.setTempochuva("10");
		eId.setTemposeca("10");
		eId.setTipocombustivel("gasolina");
		eId.setTipoembarcacao("1");
		eId.setTipomaterial("madeira");
		eId.setUfembarcacao("DF");
		eId.setValorcusto("1000");
		eId.setValorembarcacao("5000");
		eId.setValorunidade("500");
		getLocalEm().persist(eId);

		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCabecalhoEmbarcacao t").getSingleResult();
		assertEquals(1, local.intValue());
		local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblIdEmbarcacao t").getSingleResult();
		assertEquals(1, local.intValue());

		IndexProcessor processor = new IndexProcessor();
		assertEquals(0, processor.getIdsList(eId.getFullClassName()).size());

		close();

		ServiceRunner runner = new ServiceRunner();
		runner.run(new SyncLocalDatabaseService(indexables));

		processor = new IndexProcessor();
		assertEquals(1, processor.getIdsList(eId.getFullClassName()).size());

		open();
		
		server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCabecalhoEmbarcacao t").getSingleResult();
		assertEquals(1, server.intValue());
		server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblIdEmbarcacao t").getSingleResult();
		assertEquals(1, server.intValue());
		close();
	}

}
