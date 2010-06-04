package com.datasync.models.bicicleta.responsavel;

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

public class TesteTblinformacoesbicicleta extends TesteBicicleta {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblinformacoesbicicleta());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblinformacoesbicicleta t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblinformacoesbicicleta t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoresponsavel cabecalho = new Tblcabecalhoresponsavel();
        cabecalho.setIdformulario("1");
        cabecalho.setPesquisador("Tulio");
        cabecalho.setData(new Timestamp(new Date().getTime()));
        cabecalho.setIdmunicipio(1);
        cabecalho.setCodigoaluno("1");
        cabecalho.setObservacao("1");
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);
        
        Tblinformacoesbicicleta var = new Tblinformacoesbicicleta();
        var.setIdformulario("1");
        var.setExistebicicletanaresidencia("1");
        var.setQuantasbicicletas(1);
        var.setQuantaspessoasutilizambicicletanacasa(1);
        var.setQuantaspessoasutilizambicicletairescola(1);
        var.setQuemforneceubicicleta(1);
        var.setLevacarona("1");
        var.setTransportacarga("1");
        var.setPodeserroubada("1");
        var.setIdademinima(1);
        var.setPodepagarmanutencao("1");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblinformacoesbicicleta t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblinformacoesbicicleta t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
