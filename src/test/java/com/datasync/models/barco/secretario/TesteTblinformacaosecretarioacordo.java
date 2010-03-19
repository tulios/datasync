package com.datasync.models.barco.secretario;

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

public class TesteTblinformacaosecretarioacordo extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblinformacaosecretarioacordo());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblinformacaosecretarioacordo t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblinformacaosecretarioacordo t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhosecretario cabecalho = new Tblcabecalhosecretario();
    	cabecalho.setIdformulario("1");
    	cabecalho.setPesquisador("Tulio");
    	cabecalho.setIdmunicipio(1);
    	cabecalho.setDatacoleta(new Timestamp(new Date().getTime()));
    	cabecalho.setRota("rota");
    	cabecalho.setIdrota(1);
    	cabecalho.setTempoinicio("1");
    	cabecalho.setTempotermino("1");
    	getLocalEm().persist(cabecalho);
    	getServerEm().persist(cabecalho);                     

    	Tblcaracterizacaosecretario carac = new Tblcaracterizacaosecretario();
    	carac.setIdformulario("1");
    	carac.setTempomandatoano(1);
    	carac.setTempomandatomeses(1);
    	carac.setQuantidademandato(1);
    	getLocalEm().persist(carac);
        
        Tblinformacaosecretarioacordo var = new Tblinformacaosecretarioacordo();
        var.setIdtipoacordo(1);
        var.setIdformulario("1");
        var.setRealizatransporteescolar("Sim");
        var.setQuaisoutros("Outro");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblinformacaosecretarioacordo t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblinformacaosecretarioacordo t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
