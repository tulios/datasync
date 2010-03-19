package com.datasync.models.barco.pais;

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

public class TesteTblcaracterizacaofamiliapaistrabalho extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblcaracterizacaofamiliapaistrabalho());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcaracterizacaofamiliapaistrabalho t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcaracterizacaofamiliapaistrabalho t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhopais cabecalho = new Tblcabecalhopais();
		cabecalho.setIdformulario("1");
		cabecalho.setPesquisador("Tulio");
		cabecalho.setIdformularioaluno("1");
		cabecalho.setData(new Timestamp(new Date().getTime()));
		cabecalho.setIdmunicipio(1);
		cabecalho.setRota("Rota");
		cabecalho.setIdrota(1);
		cabecalho.setTempoinicio("1");
		cabecalho.setTempotermino("2");
		getLocalEm().persist(cabecalho);
		getServerEm().persist(cabecalho);         

		Tblcaracterizacaofamiliapais carac = new Tblcaracterizacaofamiliapais();
		carac.setIdformulario("1");
		carac.setOcupacaopai("Nao");
		carac.setOcupacaomae("Sim");
		carac.setQuantidadefilhos(1);
		carac.setQuantidadefilhosidadeescolar(1);
		carac.setQuantidadecasapais(1);
		carac.setQuantidadecasamãe(1);
		carac.setQuantidadecasafilhos(1);
		carac.setQuantidadecasanoragenro(1);
		carac.setQuantidadecasairmao(1);
		carac.setQuantidadecasaavos(1);
		carac.setQuantidadecasanetos(1);
		carac.setQuantidadeoutros(1);
		carac.setQuantidadecasaoutrosquais("1");
		carac.setQuantidadeajudamsustento(1);
		getLocalEm().persist(carac);
		getServerEm().persist(carac);
        
        Tblcaracterizacaofamiliapaistrabalho var = new Tblcaracterizacaofamiliapaistrabalho();
        var.setIdtipotrabalho(1);
        var.setIdformulario("1");
        var.setDescricaoajuda("Desc");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblcaracterizacaofamiliapaistrabalho t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new ServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblcaracterizacaofamiliapaistrabalho t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
