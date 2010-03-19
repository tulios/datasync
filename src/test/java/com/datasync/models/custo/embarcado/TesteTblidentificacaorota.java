package com.datasync.models.custo.embarcado;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteCusto;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;

public class TesteTblidentificacaorota extends TesteCusto {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblidentificacaorota());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaorota t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaorota t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoembarcada cabecalho = new Tblcabecalhoembarcada();
        cabecalho.setIdformulario("1");
        cabecalho.setPesquisador("Tulio");
        cabecalho.setIdmunicipio(1);
        cabecalho.setTrechorota("1");
        cabecalho.setNomecondutor("1");
        cabecalho.setRg("1");
        cabecalho.setCondutorreserva("1");
        getLocalEm().persist(cabecalho);
        getServerEm().persist(cabecalho);
        
        Tblidentificacaorota ident = new Tblidentificacaorota();
        ident.setIdformulario("1");
        ident.setDatacoleta(new Timestamp(new Date().getTime()));
        ident.setTipotrecho(1);
        ident.setIniciogps("1");
        ident.setTerminogps("2");
        ident.setHorainicio("1");
        ident.setHoratermino("2");
        ident.setMedidorlitros(1.1);
        ident.setInicio("1");
        ident.setTermino("2");
        ident.setTurno(1);
        getLocalEm().persist(ident);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblidentificacaorota t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(ident.getFullClassName()).size());

        close();

        ServiceRunner runner = new ServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(ident.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblidentificacaorota t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
