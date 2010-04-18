package com.datasync.models.barco.embarcacao;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.embarcacao.Tblimagensembarcacao;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblimagensembarcacao extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblimagensembarcacao());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblimagensembarcacao t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblimagensembarcacao t").getSingleResult();
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

        Tblidentificacaoembarcacao identificacaoEmbarcacao = new Tblidentificacaoembarcacao();
        identificacaoEmbarcacao.setIdformulario("1");
        identificacaoEmbarcacao.setPossuiidentificacao("sim");
        identificacaoEmbarcacao.setNomeembarcacao("nome");
        identificacaoEmbarcacao.setAnoembarcacao(2000);
        identificacaoEmbarcacao.setTipoembarcacao(1);
        identificacaoEmbarcacao.setQuaisoutrostipos("quais");
        identificacaoEmbarcacao.setNomepopular("nome");
        identificacaoEmbarcacao.setPossuiinscricao("sim");
        identificacaoEmbarcacao.setPossuiregistro("sim");
        identificacaoEmbarcacao.setNumeroregistro("123");
        identificacaoEmbarcacao.setLocalregistro("local");
        identificacaoEmbarcacao.setAtividadeembarcacao("atividade");
        identificacaoEmbarcacao.setCapacidadepassageiros(10);
        identificacaoEmbarcacao.setCaladoleve("sim");
        identificacaoEmbarcacao.setCaladocarregado("sim");
        identificacaoEmbarcacao.setArqueacaoliquida("sim");
        identificacaoEmbarcacao.setArqueacaobruta("sim");
        identificacaoEmbarcacao.setPortebruto("porte");
        getLocalEm().persist(identificacaoEmbarcacao);
        
        Tblimagensembarcacao var = new Tblimagensembarcacao();
        var.setIdformulario("1");
        var.setVistafrontal("vista");
        var.setVistalateralesq("vista");
        var.setVistalateraldir("vista");
        var.setVistatraseira("vista");
        var.setCabinegeral("cabine");
        var.setCabineleme("cabine");
        var.setCabineassento("cabine");
        var.setCabinefiacao("cabine");
        var.setMotorfoto1("motor");
        var.setMotorfoto2("motor");
        var.setMotorfoto3("motor");
        var.setMotorfoto4("motor");
        var.setEntradafoto1("entrada");
        var.setEntradafoto2("entrada");
        var.setCoberturafoto1("cobertura");
        var.setCoberturafoto2("cobertura");
        var.setPisofoto1("piso");
        var.setPisofoto2("piso");
        var.setAssentofoto1("assento");
        var.setAssentofoto2("assento");
        var.setFiacaofoto1("fiacao");
        var.setFiacaofoto2("fiacao");
        var.setItensfoto1("itens");
        var.setItensfoto2("itens");
        var.setObservacao("obs");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblimagensembarcacao t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblimagensembarcacao t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
