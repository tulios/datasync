package com.datasync.models.barco.aluno;

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

public class TesteTblpercepcaoalunorotaepocapior extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblpercepcaoalunorotaepocapior());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpercepcaoalunorotaepocapior t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpercepcaoalunorotaepocapior t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoaluno cabecalho = new Tblcabecalhoaluno();
        cabecalho.setIdformulario("1");
        cabecalho.setPesquisador("Tulio");
        cabecalho.setDatacoleta(new Timestamp(new Date().getTime()));
        cabecalho.setIdinep(1);
        cabecalho.setIdmunicipio(1);
        cabecalho.setRota("rota");
        cabecalho.setIdrota(1);
        cabecalho.setTempoinicio("1");
        cabecalho.setTempotermino("2");
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);
        
        Tblcaracterizacaofamiliaaluno carac = new Tblcaracterizacaofamiliaaluno();
        carac.setIdformulario("1");
        carac.setTemfilhos("Sim");
        carac.setQuantidadefilhos(1);
        carac.setQuantidadefilhosidadeescolar(1);
        carac.setQuantidadecasapais(1);
        carac.setQuantidadecasamae(1);
        carac.setQuantidadecasafilhos(1);
        carac.setQuantidadecasaconjuge(1);
        carac.setQuantidadecasaprimos(1);
        carac.setQuantidadecasaavos(1);
        carac.setQuantidadecasairmao(1);
        carac.setQuantidadecasatio(1);
        carac.setQuantidadecasaoutrosquais("Outro");
        carac.setCasaoutrosquem("Outro");
        getLocalEm().persist(carac);
        getServerEm().persist(carac);
        
        Tblpercepcaoalunorotaepocapior var = new Tblpercepcaoalunorotaepocapior();
        var.setIdformulario("1");
        var.setIdtipoepoca(1);
        var.setQualoutro("Outro");
        var.setPorqueoutro("Outro");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblpercepcaoalunorotaepocapior t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new ServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblpercepcaoalunorotaepocapior t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
