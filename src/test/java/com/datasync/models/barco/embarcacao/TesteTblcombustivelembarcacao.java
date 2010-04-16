package com.datasync.models.barco.embarcacao;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.embarcacao.Tblcombustivelembarcacao;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblcombustivelembarcacao extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblcombustivelembarcacao());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcombustivelembarcacao t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcombustivelembarcacao t").getSingleResult();
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

        Tblcaracterizacaoembarcacao caracterizacaoEmbarcacao = new Tblcaracterizacaoembarcacao();
        caracterizacaoEmbarcacao.setIdformulario("1");
        caracterizacaoEmbarcacao.setTipopropulsao(1);
        caracterizacaoEmbarcacao.setQuaisoutraspropulsao("outro");
        caracterizacaoEmbarcacao.setQuantidademotores(1);
        caracterizacaoEmbarcacao.setSabepotenciamotor1("não");
        caracterizacaoEmbarcacao.setSabepotenciamotor2("não");
        caracterizacaoEmbarcacao.setSabepotenciamotor3("não");
        caracterizacaoEmbarcacao.setPotenciamotor1("100");
        caracterizacaoEmbarcacao.setMarcamotor1("marca");
        caracterizacaoEmbarcacao.setModelomotor1("modelo");
        caracterizacaoEmbarcacao.setPotenciamotor2("100");
        caracterizacaoEmbarcacao.setMarcamotor2("marca");
        caracterizacaoEmbarcacao.setModelomotor2("modelo");
        caracterizacaoEmbarcacao.setPotenciamotor3("100");
        caracterizacaoEmbarcacao.setMarcamotor3("marca");
        caracterizacaoEmbarcacao.setModelomotor3("modelo");
        caracterizacaoEmbarcacao.setPossuireverso("não");
        caracterizacaoEmbarcacao.setMarcareverso("marca");
        caracterizacaoEmbarcacao.setRelacaoreverso("relacao");
        caracterizacaoEmbarcacao.setComandomotor(1);
        caracterizacaoEmbarcacao.setQuaisoutroscomandos("quais");
        caracterizacaoEmbarcacao.setSabelitros1("não");
        caracterizacaoEmbarcacao.setQuantidadelitros1("10");
        caracterizacaoEmbarcacao.setSabelitros2("não");
        caracterizacaoEmbarcacao.setQuantidadelitros2("10");
        caracterizacaoEmbarcacao.setSabelitros3("não");
        caracterizacaoEmbarcacao.setQuantidadelitros3("10");
        caracterizacaoEmbarcacao.setPosicaocomando(1);
        getLocalEm().persist(caracterizacaoEmbarcacao);
        getServerEm().persist(caracterizacaoEmbarcacao);
        
        Tblcombustivelembarcacao var = new Tblcombustivelembarcacao();
        var.setIdformulario("1");
        var.setIdtipocombustivel(1);
        var.setQuaisoutros("quais");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcombustivelembarcacao t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcombustivelembarcacao t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
