package com.datasync.models.bicicleta.posAluno;

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

public class TesteTblpercepcaoposaluno extends TesteBicicleta {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblpercepcaoposaluno());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpercepcaoposaluno t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpercepcaoposaluno t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblidentificacaoposaluno ident = new Tblidentificacaoposaluno();
        ident.setIdformulario("1");
        ident.setPesquisador("Tulio");
        ident.setData(new Timestamp(new Date().getTime()));
        ident.setIdmunicipio(1);
        ident.setIdinep(1);
        ident.setNomeescola("Escola");
        ident.setIdaluno("1");
        getLocalEm().persist(ident);
        getServerEm().persist(ident);
        
        Tblpercepcaoposaluno var = new Tblpercepcaoposaluno();
        var.setIdformulario("1");
        var.setBicicletamelhor(1);
        var.setAparencia(1);
        var.setPorqueaparencia("1");
        var.setFrequencia(1);
        var.setProtecao("1");
        var.setPorqueprotecao("1");
        var.setCapacete(1);
        var.setSelim("1");
        var.setGuiar("1");
        var.setPorqueguiar("1");
        var.setPesada("1");
        var.setForcapedalar("1");
        var.setFreio("1");
        var.setSujou("1");
        var.setEmpurrar("1");
        var.setDuracaoteste(1);
        var.setImportantemarchas("1");
        var.setPorqueimportantemarchas("1");
        var.setObservacao("1");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpercepcaoposaluno t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpercepcaoposaluno t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
