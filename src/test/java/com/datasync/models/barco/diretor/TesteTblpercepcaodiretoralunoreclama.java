package com.datasync.models.barco.diretor;

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

public class TesteTblpercepcaodiretoralunoreclama extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblpercepcaodiretoralunoreclama());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpercepcaodiretoralunoreclama t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpercepcaodiretoralunoreclama t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhodiretor cabecalho = new Tblcabecalhodiretor();
        cabecalho.setIdformulario("1");
        cabecalho.setPesquisador("Nome");
        cabecalho.setIdmunicipio(1);
        cabecalho.setIdinep(1);
        cabecalho.setDatacoleta(new Timestamp(new Date().getTime()));
        cabecalho.setFoto("foto");
        cabecalho.setTempoinicio("1");
        cabecalho.setTempotermino("2");
        cabecalho.setObservacao("Observacao!");
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);
        
        Tblpercepcaodiretoralunoreclama var = new Tblpercepcaodiretoralunoreclama();
        var.setIdtiporeclamacao(1);
        var.setIdformulario("1");
        var.setAlunoreclama("sim");
        var.setQuaisoutros("quais outros");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpercepcaodiretoralunoreclama t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpercepcaodiretoralunoreclama t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
