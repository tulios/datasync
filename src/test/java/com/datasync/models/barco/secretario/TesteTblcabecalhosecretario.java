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

public class TesteTblcabecalhosecretario extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblcabecalhosecretario());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcabecalhosecretario t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcabecalhosecretario t").getSingleResult();
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

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcabecalhosecretario t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(cabecalho.getFullClassName()).size());

        close();

        ServiceRunner runner = new ServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(cabecalho.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcabecalhosecretario t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}