package com.datasync.models.bicicleta.aluno;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteBicicleta;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblcabecalhoaluno extends TesteBicicleta {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblcabecalhoaluno());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from com.datasync.models.bicicleta.aluno.Tblcabecalhoaluno t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from com.datasync.models.bicicleta.aluno.Tblcabecalhoaluno t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoaluno var = new Tblcabecalhoaluno();
        var.setIdformulario("1");
        var.setIdinep(1);
        var.setNomeescola("escola");
        var.setIdmunicipio(1);
        var.setPesquisador("Tulio");
        var.setData(new Timestamp(new Date().getTime()));
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from com.datasync.models.bicicleta.aluno.Tblcabecalhoaluno t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from com.datasync.models.bicicleta.aluno.Tblcabecalhoaluno t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
