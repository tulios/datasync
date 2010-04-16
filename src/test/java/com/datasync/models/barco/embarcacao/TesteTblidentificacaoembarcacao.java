package com.datasync.models.barco.embarcacao;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.embarcacao.Tblidentificacaoembarcacao;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblidentificacaoembarcacao extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblidentificacaoembarcacao());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaoembarcacao t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaoembarcacao t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoembarcacao cabecalho = new Tblcabecalhoembarcacao();
        cabecalho.setIdformulario("1");
        cabecalho.setPesquisador("Pesquisador");
        cabecalho.setData(new Timestamp(new Date().getTime()));
        cabecalho.setIdmunicipio(1);
        cabecalho.setIdrota(1);
        cabecalho.setRota("rota");
        cabecalho.setHorainicial("10:10");
        cabecalho.setHorafinal("11:10");
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);
        
        Tblidentificacaoembarcacao var = new Tblidentificacaoembarcacao();
        var.setIdformulario("1");
        var.setPossuiidentificacao("sim");
        var.setNomeembarcacao("nome");
        var.setAnoembarcacao(2000);
        var.setTipoembarcacao(1);
        var.setQuaisoutrostipos("quais");
        var.setNomepopular("nome");
        var.setPossuiinscricao("sim");
        var.setPossuiregistro("sim");
        var.setNumeroregistro("123");
        var.setLocalregistro("local");
        var.setAtividadeembarcacao("atividade");
        var.setCapacidadepassageiros(10);
        var.setCaladoleve("sim");
        var.setCaladocarregado("sim");
        var.setArqueacaoliquida("sim");
        var.setArqueacaobruta("sim");
        var.setPortebruto("porte");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaoembarcacao t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaoembarcacao t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
