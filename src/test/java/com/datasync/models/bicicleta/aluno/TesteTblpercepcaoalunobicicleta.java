package com.datasync.models.bicicleta.aluno;

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

public class TesteTblpercepcaoalunobicicleta extends TesteBicicleta {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblpercepcaoalunobicicleta());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpercepcaoalunobicicleta t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpercepcaoalunobicicleta t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoaluno cabecalho = new Tblcabecalhoaluno();
        cabecalho.setIdformulario("1");
        cabecalho.setIdinep(1);
        cabecalho.setNomeescola("escola");
        cabecalho.setIdmunicipio(1);
        cabecalho.setPesquisador("Tulio");
        cabecalho.setData(new Timestamp(new Date().getTime()));
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);
        
        Tblpercepcaoalunobicicleta var = new Tblpercepcaoalunobicicleta();
        var.setIdformulario("1");
        var.setNivelsatisfacaobicicleta(1);
        var.setQualoutronivelsatisfacaobicicleta("1");
        var.setNivelsatisfacaoequipamento(1);
        var.setQualoutronivelsatisfacaoequipamento("1");
        var.setObservacaoformularioaluno("1");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpercepcaoalunobicicleta t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpercepcaoalunobicicleta t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}