package com.datasync.models.barco.fad;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteBarco;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblescola extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new TblEscola());

        Number local = (Number) getLocalEm().createQuery("select count(t.idinep) from TblEscola t").getSingleResult();
        assertEquals(1, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idinep) from TblEscola t").getSingleResult();
        assertEquals(1, server.intValue());

        TblEscola var = new TblEscola();
        var.setIdinep(2);
        var.setNomeescola("nome");
        var.setIdmunicipio(1);
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idinep) from TblEscola t").getSingleResult();
        assertEquals(2, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(2, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idinep) from TblEscola t").getSingleResult();
        assertEquals(2, server.intValue());
        close();
    }

}
