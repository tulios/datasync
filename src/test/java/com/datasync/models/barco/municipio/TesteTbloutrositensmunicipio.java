package com.datasync.models.barco.municipio;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.municipio.Tbloutrositensmunicipio;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTbloutrositensmunicipio extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tbloutrositensmunicipio());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tbloutrositensmunicipio t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tbloutrositensmunicipio t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhomunicipio cabecalhoMunicipio = new Tblcabecalhomunicipio();
        cabecalhoMunicipio.setIdformulario("1");
        cabecalhoMunicipio.setPesquisador("pesquisador");
        cabecalhoMunicipio.setData(new Timestamp(new Date().getTime()));
        cabecalhoMunicipio.setIdmunicipio(1);
        cabecalhoMunicipio.setHorainicial("10:00");
        cabecalhoMunicipio.setHorafinal("10:11");
        cabecalhoMunicipio.setObservacao("obs");
        getLocalEm().persist(cabecalhoMunicipio);
        getServerEm().persist(cabecalhoMunicipio);
        
        Tbloutrositensmunicipio var = new Tbloutrositensmunicipio();
        var.setIdformulario("1");
        var.setFoto1("str");
        var.setDescricao1("str");
        var.setFoto2("str");
        var.setDescricao2("str");
        var.setFoto3("str");
        var.setDescricao3("str");
        var.setFoto4("str");
        var.setDescricao4("str");
        var.setFoto5("str");
        var.setDescricao5("str");
        var.setFoto6("str");
        var.setDescricao6("str");
        var.setFoto7("str");
        var.setDescricao7("str");
        var.setFoto8("str");
        var.setDescricao8("str");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tbloutrositensmunicipio t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tbloutrositensmunicipio t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
