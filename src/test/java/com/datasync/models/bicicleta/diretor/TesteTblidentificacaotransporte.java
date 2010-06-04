package com.datasync.models.bicicleta.diretor;

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

public class TesteTblidentificacaotransporte extends TesteBicicleta {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblidentificacaotransporte());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaotransporte t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaotransporte t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhodiretor cabecalho = new Tblcabecalhodiretor();
        cabecalho.setIdformulario("1");
        cabecalho.setPesquisador("Tulio");
        cabecalho.setData(new Timestamp(new Date().getTime()));
        cabecalho.setIdmunicipio(1);
        cabecalho.setIdinep(1);
        cabecalho.setNomeescola("Escola");
        cabecalho.setLocalescola(1);
        cabecalho.setObservacao("1");
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);
        
        Tblidentificacaotransporte var = new Tblidentificacaotransporte();
        var.setIdformulario("1");
        var.setQuantidadealunoescola(1);
        var.setUtilizamtransporteescolarpublico("1");
        var.setQuantosusamtransporte(1);
        var.setQuantosusambicicleta(1);
        var.setComoutilizambicicleta(1);
        var.setQuemutilizabicicleta(1);
        var.setQualvisaoamigos(1);
        var.setIdademinimabicicleta(1);
        var.setResponsavelcontrolaruso("1");
        var.setQuemresponsavelcontrolaruso("1");
        var.setExisteatividadebicicleta("1");
        var.setQualatividadebicicleta("1");
        var.setQuantidadefuncionariosutilizambicicleta(1);
        var.setDonobicicleta(1);
        var.setQuemdonobicicleta("1");
        var.setResponsavelmanutencao(1);
        var.setQuemresponsavelmanutencao("1");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaotransporte t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaotransporte t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
