package com.datasync.models.custo.embarcado;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteCusto;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class TesteTblidentificacaomonitor extends TesteCusto {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblidentificacaomonitor());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaomonitor t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaomonitor t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoembarcada cabecalho = new Tblcabecalhoembarcada();
        cabecalho.setIdformulario("1");
        cabecalho.setPesquisador("Tulio");
        cabecalho.setIdmunicipio(1);
        cabecalho.setTrechorota("1");
        cabecalho.setNomecondutor("1");
        cabecalho.setRg("1");
        cabecalho.setCondutorreserva("1");
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);
        
        Tblidentificacaomonitor var = new Tblidentificacaomonitor();
        var.setIdformulario("1");
        var.setPossuimonitor("1");
        var.setNome("1");
        var.setRg("1");
        var.setConsumoquantidade(1.1);
        var.setConsumounidade(1.1);
        var.setObservacao("1");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaomonitor t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new ServiceRunner();
        runner.run(new SyncLocalDatabaseService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaomonitor t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
