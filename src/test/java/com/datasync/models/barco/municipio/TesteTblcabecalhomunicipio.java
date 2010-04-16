package com.datasync.models.barco.municipio;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.municipio.Tblcabecalhomunicipio;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblcabecalhomunicipio extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblcabecalhomunicipio());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcabecalhomunicipio t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcabecalhomunicipio t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhomunicipio var = new Tblcabecalhomunicipio();
        var.setIdformulario("1");
        var.setPesquisador("pesquisador");
        var.setData(new Timestamp(new Date().getTime()));
        var.setIdmunicipio(1);
        var.setHorainicial("10:00");
        var.setHorafinal("10:11");
        var.setObservacao("obs");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcabecalhomunicipio t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcabecalhomunicipio t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
