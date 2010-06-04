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

public class TesteTblguardabicicleta extends TesteBicicleta {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblguardabicicleta());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblguardabicicleta t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblguardabicicleta t").getSingleResult();
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
        
        Tblidentificacaotransporte info = new Tblidentificacaotransporte();
        info.setIdformulario("1");
        info.setQuantidadealunoescola(1);
        info.setUtilizamtransporteescolarpublico("1");
        info.setQuantosusamtransporte(1);
        info.setQuantosusambicicleta(1);
        info.setComoutilizambicicleta(1);
        info.setQuemutilizabicicleta(1);
        info.setQualvisaoamigos(1);
        info.setIdademinimabicicleta(1);
        info.setResponsavelcontrolaruso("1");
        info.setQuemresponsavelcontrolaruso("1");
        info.setExisteatividadebicicleta("1");
        info.setQualatividadebicicleta("1");
        info.setQuantidadefuncionariosutilizambicicleta(1);
        info.setDonobicicleta(1);
        info.setQuemdonobicicleta("1");
        info.setResponsavelmanutencao(1);
        info.setQuemresponsavelmanutencao("1");
        getLocalEm().persist(info);
        getServerEm().persist(info);
        
        Tblguardabicicleta var = new Tblguardabicicleta();
        var.setIdformulario("1");
        var.setIdtipoondeguardabicicleta(1);
        var.setQuaisoutros("1");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblguardabicicleta t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblguardabicicleta t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
