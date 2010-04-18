package com.datasync.models.barco.municipio;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.municipio.Tblpostoabastecimento1;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblpostoabastecimento1 extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblpostoabastecimento1());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpostoabastecimento1 t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpostoabastecimento1 t").getSingleResult();
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
        
        Tblpostoabastecimento1 var = new Tblpostoabastecimento1();
        var.setIdformulario("1");
        var.setBandeira("str");
        var.setFlutuante("str");
        var.setGasolina("str");
        var.setAlcool("str");
        var.setDiesel("str");
        var.setOleo2tempos("str");
        var.setOleo4tempos("str");
        var.setFacilidadegasolina("str");
        var.setPorquefacilidadegasolina("str");
        var.setDeondevemgasolina("str");
        var.setFacilidadediesel("str");
        var.setPorquefacilidadediesel("str");
        var.setDeondevemdiesel("str");
        var.setFotoposto1("str");
        var.setFotoposto2("str");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpostoabastecimento1 t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpostoabastecimento1 t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
