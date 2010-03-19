package com.datasync.models.barco.diretor;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.diretor.Tblidentificacaodiretor;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;

public class TesteTblidentificacaodiretor extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblidentificacaodiretor());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaodiretor t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaodiretor t").getSingleResult();
        assertEquals(0, server.intValue());
        
        Tblcabecalhodiretor cabecalho = new Tblcabecalhodiretor();
        cabecalho.setIdformulario("1");
        cabecalho.setPesquisador("Nome");
        cabecalho.setIdmunicipio(1);
        cabecalho.setIdinep(1);
        cabecalho.setDatacoleta(new Timestamp(new Date().getTime()));
        cabecalho.setFoto("foto");
        cabecalho.setRota("rota");
        cabecalho.setTempoinicio("1");
        cabecalho.setTempotermino("2");
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);
        
        Tblcaracterizacaodiretor caracterizacao = new Tblcaracterizacaodiretor();
        caracterizacao.setIdformulario("1");
        caracterizacao.setTempoexperienciaano(2010);
        caracterizacao.setTempoexperienciames(10);
        caracterizacao.setTempoatuacaoano(2010);
        caracterizacao.setTempoatuacaomes(10);
        caracterizacao.setQuantidadeescola(1);
        getLocalEm().persist(caracterizacao);
        getServerEm().persist(caracterizacao);
        
        Tblidentificacaodiretor var = new Tblidentificacaodiretor();
        var.setIdformulario("1");
        var.setIdtipoescolaridade(1);
        var.setComunidade("comunidade");
        var.setSexo("m");
        var.setIdade(20);
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaodiretor t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new ServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaodiretor t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
