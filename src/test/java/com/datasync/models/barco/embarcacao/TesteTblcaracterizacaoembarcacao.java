package com.datasync.models.barco.embarcacao;

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

public class TesteTblcaracterizacaoembarcacao extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblcaracterizacaoembarcacao());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcaracterizacaoembarcacao t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcaracterizacaoembarcacao t").getSingleResult();
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
        
        Tblcaracterizacaoembarcacao var = new Tblcaracterizacaoembarcacao();
        var.setIdformulario("1");
        var.setTipopropulsao(1);
        var.setQuaisoutraspropulsao("outro");
        var.setQuantidademotores(1);
        var.setSabepotenciamotor1("não");
        var.setSabepotenciamotor2("não");
        var.setSabepotenciamotor3("não");
        var.setPotenciamotor1("100");
        var.setMarcamotor1("marca");
        var.setModelomotor1("modelo");
        var.setPotenciamotor2("100");
        var.setMarcamotor2("marca");
        var.setModelomotor2("modelo");
        var.setPotenciamotor3("100");
        var.setMarcamotor3("marca");
        var.setModelomotor3("modelo");
        var.setPossuireverso("não");
        var.setMarcareverso("marca");
        var.setRelacaoreverso("relacao");
        var.setComandomotor(1);
        var.setQuaisoutroscomandos("quais");
        var.setSabelitros1("não");
        var.setQuantidadelitros1("10");
        var.setSabelitros2("não");
        var.setQuantidadelitros2("10");
        var.setSabelitros3("não");
        var.setQuantidadelitros3("10");
        var.setPosicaocomando(1);
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcaracterizacaoembarcacao t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcaracterizacaoembarcacao t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
