package com.datasync.models.barco.pais;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteBarco;
import com.datasync.models.barco.aluno.Tblcabecalhoaluno;
import com.datasync.models.barco.aluno.Tblcaracterizacaofamiliaaluno;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblCaracterizacaoFamiliaAlunoParentes extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new TblCaracterizacaoFamiliaAlunoParentes());

        Number local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCaracterizacaoFamiliaAlunoParentes t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCaracterizacaoFamiliaAlunoParentes t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhopais cabecalho = new Tblcabecalhopais();
		cabecalho.setIdformulario("1");
		cabecalho.setPesquisador("Tulio");
		cabecalho.setIdformularioaluno("1");
		cabecalho.setData(new Timestamp(new Date().getTime()));
		cabecalho.setIdmunicipio(1);
		cabecalho.setRota("Rota");
		cabecalho.setIdrota(1);
		cabecalho.setTempoinicio("1");
		cabecalho.setTempotermino("2");
		getLocalEm().persist(cabecalho);
		getServerEm().persist(cabecalho);         

		Tblcaracterizacaofamiliapais carac = new Tblcaracterizacaofamiliapais();
		carac.setIdformulario("1");
		carac.setOcupacaopai("Nao");
		carac.setOcupacaomae("Sim");
		carac.setQuantidadefilhos(1);
		carac.setQuantidadefilhosidadeescolar(1);
        carac.setQuantidadeFamilia(5);
		carac.setQuantidadeajudamsustento(1);
		getLocalEm().persist(carac);
		getServerEm().persist(carac);
        
		Tblinformacaopais info = new Tblinformacaopais();
        info.setIdformulario("1");
        info.setTempoescola("1");
        info.setQualoutro("1");
        info.setProblemasoutraspessoas("1");
        info.setProblemasoutraspessoasporque("1");
        info.setProblemabarqueirovizinhanca("1");
        info.setProblemabarqueirovizinhancaporque("1");
        info.setBarconaobuscafilho("1");
        info.setBarconaobuscafilhofrequencia("1");
        info.setPorquebarconaobuscafilho("1");
        getLocalEm().persist(info);
        getServerEm().persist(info);
		
        Tblcabecalhoaluno cabecalhoaluno = new Tblcabecalhoaluno();
        cabecalhoaluno.setIdformulario("1");
        cabecalhoaluno.setPesquisador("Tulio");
        cabecalhoaluno.setDatacoleta(new Timestamp(new Date().getTime()));
        cabecalhoaluno.setIdinep(1);
        cabecalhoaluno.setIdmunicipio(1);
        cabecalhoaluno.setRota("rota");
        cabecalhoaluno.setIdrota(1);
        cabecalhoaluno.setTempoinicio("1");
        cabecalhoaluno.setTempotermino("2");
        cabecalhoaluno.setObservacao("Observacao!");
        getLocalEm().persist(cabecalhoaluno);
        getServerEm().persist(cabecalhoaluno);
        
        Tblcaracterizacaofamiliaaluno caracaluno = new Tblcaracterizacaofamiliaaluno();
        caracaluno.setIdformulario("1");
        caracaluno.setTemfilhos("Sim");
        caracaluno.setQuantidadefilhosidadeescolar(1);
        caracaluno.setQuantidadeFamilia(10);
        caracaluno.setQuantidadeFilhos(10);
        getLocalEm().persist(caracaluno);
        getServerEm().persist(caracaluno);
        
        TblCaracterizacaoFamiliaAlunoParentes parentes = new TblCaracterizacaoFamiliaAlunoParentes();
        parentes.setIdFormulario("1");
        parentes.setIdTipoParente(1);
        parentes.setQuaisParentes("varios");
        getLocalEm().persist(parentes);

        local = (Number) getLocalEm().createQuery("select count(t.idFormulario) from TblCaracterizacaoFamiliaAlunoParentes t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(parentes.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(parentes.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idFormulario) from TblCaracterizacaoFamiliaAlunoParentes t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}