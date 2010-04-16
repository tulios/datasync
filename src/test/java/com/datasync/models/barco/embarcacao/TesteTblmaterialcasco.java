package com.datasync.models.barco.embarcacao;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.embarcacao.Tblmaterialcasco;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblmaterialcasco extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblmaterialcasco());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblmaterialcasco t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblmaterialcasco t").getSingleResult();
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
        
        Tbltripulacao tripulacao = new Tbltripulacao();
        tripulacao.setIdformulario("1");
        tripulacao.setPossuiboias("sim");
        tripulacao.setQuantasboias(2);
        tripulacao.setPossuicoletes("sim");
        tripulacao.setQuantoscoletes(2);
        tripulacao.setPossuijanelas("sim");
        tripulacao.setQuantasjanelas(2);
        tripulacao.setPossuisafenas("sim");
        tripulacao.setProtecaomotor("sim");
        tripulacao.setPossuiguardacorpo("sim");
        tripulacao.setPossuibaterias("sim");
        tripulacao.setPossuicarregadorbateria("sim");
        tripulacao.setPossuipartidaeletrica("sim");
        getLocalEm().persist(tripulacao);
        getServerEm().persist(tripulacao);
        
        Tblmaterialcasco var = new Tblmaterialcasco();
        var.setIdtipocasco(1);
        var.setIdformulario("1");
        var.setQuaisoutros("quais");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblmaterialcasco t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblmaterialcasco t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
