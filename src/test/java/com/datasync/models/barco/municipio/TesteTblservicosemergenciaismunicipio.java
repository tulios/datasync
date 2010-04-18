package com.datasync.models.barco.municipio;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.municipio.Tblservicosemergenciaismunicipio;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblservicosemergenciaismunicipio extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblservicosemergenciaismunicipio());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblserviçosemergenciaismunicipio t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblserviçosemergenciaismunicipio t").getSingleResult();
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
        
        Tblservicosemergenciaismunicipio var = new Tblservicosemergenciaismunicipio();
        var.setIdformulario("1");
        var.setPossuibombeiro("str");
        var.setQuantidadebombeiro(1);
        var.setBombeiropossuibarco("str");
        var.setFotobombeiro1("str");
        var.setFotobombeiro2("str");
        var.setPossuihospital("str");
        var.setQuantidadehospital(1);
        var.setHospitalpossuibarco("str");
        var.setFotohospital1("str");
        var.setFotohospital2("str");
        var.setPossuipostosaude("str");
        var.setQuantidadepostosaude(1);
        var.setPostosaudepossuibarco("str");
        var.setFotopostosaude1("str");
        var.setFotopostosaude2("str");
        var.setPossuipostopolicial("str");
        var.setQuantidadepostopolicial(1);
        var.setPostopolicialpossuibarco("str");
        var.setFotopostopolicial1("str");
        var.setFotopostopolicial2("str");
        var.setPossuitelefoniacelular("str");
        var.setQuaistelefoniascelular("str");
        var.setPossuitelefoniafixa("str");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblserviçosemergenciaismunicipio t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblserviçosemergenciaismunicipio t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
