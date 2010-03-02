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
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class TesteTblcabecalhoaluno extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblcabecalhoaluno());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcabecalhoaluno t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcabecalhoaluno t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoaluno var = new Tblcabecalhoaluno();
        var.setIdformulario("1");
        var.setPesquisador("Tulio");
        var.setDatacoleta(new Timestamp(new Date().getTime()));
        var.setIdinep(1);
        var.setIdmunicipio(1);
        var.setRota("rota");
        var.setIdrota(1);
        var.setTempoinicio("1");
        var.setTempotermino("2");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcabecalhoaluno t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new ServiceRunner();
        runner.run(new SyncLocalDatabaseService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcabecalhoaluno t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
