package com.datasync.models.barco.fad;

import static org.junit.Assert.assertEquals;

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

public class TesteTblDadosParadaQuantidade extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new TblDadosParadaQuantidade());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from TblDadosParadaQuantidade t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from TblDadosParadaQuantidade t").getSingleResult();
        assertEquals(0, server.intValue());

        TblCabecalhoDesempenho cabecalho = new TblCabecalhoDesempenho();
		cabecalho.setIdFormulario("1");
		cabecalho.setCaracteristicaRota(1);
		cabecalho.setData(new Date());
		cabecalho.setIdMunicipio(1);
		cabecalho.setIdRota(1);
		cabecalho.setPesquisador("Tulio");
		cabecalho.setPotenciaMotor(20.1);
		cabecalho.setReferencia(1);
		cabecalho.setRota("rota");
		cabecalho.setTipoAvaliado(1);
		cabecalho.setTipoNaoAvaliado(1);
		getLocalEm().persist(cabecalho);
		getServerEm().persist(cabecalho);
        
        TblDadosParadaQuantidade var = new TblDadosParadaQuantidade();
        var.setIdformulario("1");
        var.setQuantidadetotalembarque(1);
        var.setQuantidadetotaldesembarque(1);
        var.setQuantidadedeficiente(1);
        var.setQuantidadecarona(1);
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from TblDadosParadaQuantidade t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from TblDadosParadaQuantidade t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
