package com.datasync.models.barco.aluno;

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

public class TesteTblpostesteavaliacaolancha extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblpostesteavaliacaolancha());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpostesteavaliacaolancha t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpostesteavaliacaolancha t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoaluno cabecalho = new Tblcabecalhoaluno();
        cabecalho.setIdformulario("1");
        cabecalho.setPesquisador("Tulio");
        cabecalho.setDatacoleta(new Timestamp(new Date().getTime()));
        cabecalho.setIdinep(1);
        cabecalho.setIdmunicipio(1);
        cabecalho.setRota("rota");
        cabecalho.setIdrota(1);
        cabecalho.setTempoinicio("1");
        cabecalho.setTempotermino("2");
        cabecalho.setObservacao("Observacao!");
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);
        
        Tblcaracterizacaofamiliaaluno carac = new Tblcaracterizacaofamiliaaluno();
        carac.setIdformulario("1");
        carac.setTemfilhos("Sim");
        carac.setQuantidadefilhosidadeescolar(1);
        carac.setQuantidadecasaconjuge(1);
        carac.setQuantidadecasaprimos(1);
        carac.setQuantidadecasatio(1);
        carac.setCasaoutrosquem("Outro");
        carac.setQuantidadeFamilia(10);
        carac.setIdParentes(10);
        carac.setQuaisParentes("Varios");
        getLocalEm().persist(carac);
        getServerEm().persist(carac);
        
        Tblpostesteavaliacaolancha var = new Tblpostesteavaliacaolancha();
        var.setIdformulario("1");
        var.setSeguranca(1);
        var.setTamanho(1);
        var.setAparencia(1);
        var.setProtecaosolchuva(1);
        var.setTempoviagem(1);
        var.setObservacao("Observacao!");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpostesteavaliacaolancha t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpostesteavaliacaolancha t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
