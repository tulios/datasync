package com.datasync.models.barco.professor;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteBarco;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class TesteTblidentificacaoprofessor extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblidentificacaoprofessor());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaoprofessor t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaoprofessor t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoprofessor cab = new Tblcabecalhoprofessor();
        cab.setIdformulario("1");
        cab.setPesquisador("Tulio");
        cab.setIdformularioaluno("Tulio");
        cab.setDatacoleta(new Timestamp(new Date().getTime()));
        cab.setIdmunicipio(1);
        cab.setIdinep(1);
        cab.setFotoescola("path");
        cab.setRota("Rota");
        cab.setTempoinicio("1");
        cab.setTempotermino("2"); 
  	    cab.setIdRota(1);
        getLocalEm().persist(cab);
        getServerEm().persist(cab);
        
        Tblcaracterizacaoprofessor carac = new Tblcaracterizacaoprofessor();
        carac.setIdformulario("1");
        carac.setTempoexperienciaano(1);
        carac.setTempoexperienciames(1);
        carac.setTempoatuacaoano(1);
        carac.setTempoatuacaomes(1);
        carac.setCursoextra("Sim");
        carac.setQualcursoextra("Outro");
        carac.setOutrafuncao("Sim");
        carac.setProfessoroutraescola("Sim");
        carac.setQuantasoutraescola(1);
        carac.setQualoutrasescolas("Outra");
        getLocalEm().persist(carac);
        getServerEm().persist(carac);
        
        Tblidentificacaoprofessor var = new Tblidentificacaoprofessor();
        var.setIdformulario("1");
        var.setIdtipoescolaridade(1);
        var.setSexo("M");
        var.setIdade(1);
        var.setComunidade("Comu");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaoprofessor t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new ServiceRunner();
        runner.run(new SyncLocalDatabaseService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaoprofessor t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
