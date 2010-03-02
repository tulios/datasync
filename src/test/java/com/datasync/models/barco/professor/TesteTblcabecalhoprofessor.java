package com.datasync.models.barco.professor;

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

public class TesteTblcabecalhoprofessor extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblcabecalhoprofessor());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcabecalhoprofessor t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcabecalhoprofessor t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoprofessor var = new Tblcabecalhoprofessor();
        var.setIdformulario("1");
        var.setPesquisador("Tulio");
        var.setIdformularioaluno("1");
        var.setDatacoleta(new Timestamp(new Date().getTime()));
        var.setIdmunicipio(1);
        var.setIdinep(1);//TODO: Ver isso aqui tblEscola
        var.setFotoescola("Foto");
        var.setRota("rota");
        var.setTempoinicio("1");
        var.setTempotermino("2");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcabecalhoprofessor t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new ServiceRunner();
        runner.run(new SyncLocalDatabaseService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcabecalhoprofessor t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
