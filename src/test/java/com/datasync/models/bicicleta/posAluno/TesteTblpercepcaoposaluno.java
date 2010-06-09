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
        
        Tblpercepcaoposaluno perc = new Tblpercepcaoposaluno();
        perc.setIdformulario("1");
        perc.setBicicletamelhor(1);
        perc.setAparencia(1);
        perc.setPorqueaparencia("1");
        perc.setFrequencia(1);
        perc.setSelim("1");
        perc.setGuiar("1");
        perc.setPorqueguiar("1");
        perc.setPesada("1");
        perc.setForcapedalar("1");
        perc.setFreio("1");
        perc.setSujou("1");
        perc.setEmpurrar("1");
        perc.setDuracaoteste(1);
        perc.setImportantemarchas("1");
        perc.setPorqueimportantemarchas("1");
        perc.setObservacao("1");
        getLocalEm().persist(perc);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpercepcaoposaluno t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(perc.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(perc.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpercepcaoposaluno t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
