package com.datasync.models.barco.prefeito;

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

public class TesteTblidentificacaoprefeito extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblidentificacaoprefeito());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaoprefeito t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaoprefeito t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoprefeito cabecalho = new Tblcabecalhoprefeito();
        cabecalho.setIdformulario("1");
        cabecalho.setPesquisador("Tulio");
        cabecalho.setIdmunicipio(1);
        cabecalho.setDatacoleta(new Timestamp(new Date().getTime()));
        cabecalho.setTempoinicio("1");
        cabecalho.setTempotermino("2");
        cabecalho.setObservacao("Uma observacao");
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);

        Tblcaracterizacaoprefeito carac = new Tblcaracterizacaoprefeito();
        carac.setIdformulario("1");
        carac.setTempomandatoano(1);
        carac.setTempomandatomeses(1);
        carac.setQuantidademandato(1);
        carac.setQuaisMandatos("Varios!");
        getLocalEm().persist(carac);
        getServerEm().persist(carac);
        
        Tblidentificacaoprefeito var = new Tblidentificacaoprefeito();
        var.setIdformulario("1");
        var.setIdtipoescolaridade(1);
        var.setTelefone1("1");
        var.setTelefone2("2");
        var.setEmail1("e1");
        var.setEmail2("e2");
        var.setSexo("M");
        var.setIdade(1);
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaoprefeito t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaoprefeito t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
