package com.datasync.models.barco.embarcacao;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.embarcacao.Tblcabecalhoembarcacao;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblcabecalhoembarcacao extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblcabecalhoembarcacao());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcabecalhoembarcacao t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcabecalhoembarcacao t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoembarcacao var = new Tblcabecalhoembarcacao();
        var.setIdformulario("1");
        var.setPesquisador("Pesquisador");
        var.setData(new Timestamp(new Date().getTime()));
        var.setIdmunicipio(1);
        var.setIdrota(1);
        var.setRota("rota");
        var.setHorainicial("10:10");
        var.setHorafinal("11:10");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcabecalhoembarcacao t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcabecalhoembarcacao t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}