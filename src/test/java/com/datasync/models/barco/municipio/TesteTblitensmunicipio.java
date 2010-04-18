package com.datasync.models.barco.municipio;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.datasync.models.TesteBarco;
import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.municipio.Tblitensmunicipio;
import com.datasync.processor.IndexProcessor;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class TesteTblitensmunicipio extends TesteBarco {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblitensmunicipio());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblitensmunicipio t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblitensmunicipio t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhomunicipio cabecalhoMunicipio = new Tblcabecalhomunicipio();
        cabecalhoMunicipio.setIdformulario("1");
        cabecalhoMunicipio.setPesquisador("pesquisador");
        cabecalhoMunicipio.setData(new Timestamp(new Date().getTime()));
        cabecalhoMunicipio.setIdmunicipio(1);
        cabecalhoMunicipio.setHorainicial("10:00");
        cabecalhoMunicipio.setHorafinal("10:11");
        cabecalhoMunicipio.setObservacao("obs");
        getLocalEm().persist(cabecalhoMunicipio);
        getServerEm().persist(cabecalhoMunicipio);
        
        Tblitensmunicipio var = new Tblitensmunicipio();
        var.setIdformulario("1");
        var.setPossuibanco("sim");
        var.setQuantidadebanco(1);
        var.setFotobanco1("foto");
        var.setFotobanco2("foto");
        var.setPossuiloterica("sim");
        var.setQuantidadeloterica(1);
        var.setFotoloterica1("foto");
        var.setFotoloterica2("foto");
        var.setPossuicorreio("sim");
        var.setQuantidadecorreios(1);
        var.setFotocorreio1("foto");
        var.setFotocorreio2("foto");
        var.setPossuilojabarco("sim");
        var.setQuantidadelojabarco(1);
        var.setFotolojabarco1("foto");
        var.setFotolojabarco2("foto");
        var.setPossuilojamotor("sim");
        var.setQuantidadelojamotor(1);
        var.setFotolojamotor1("foto");
        var.setFotolojamotor2("foto");
        var.setPossuilojamanutencao("sim");
        var.setQuantidadelojamanutencao(1);
        var.setFotolojamanutencao1("foto");
        var.setFotolojamanutencao2("foto");
        var.setPossuilojapeças("sim");
        var.setQuantidadelojapeças(1);
        var.setFotolojapeças1("foto");
        var.setFotolojapeças2("foto");
        var.setPossuiretifica("sim");
        var.setQuantidaderetifica(1);
        var.setFotoretifica1("foto");
        var.setFotoretifica2("foto");
        var.setPossuioficina("sim");
        var.setQuantidadeoficina(1);
        var.setFotooficina1("foto");
        var.setFotooficina2("foto");
        var.setPossuiestaleiro("sim");
        var.setQuantidadeestaleiro(1);
        var.setFotoestaleiro1("foto");
        var.setFotoestaleiro2("foto");
        var.setPossuioficinaeletronicos("sim");
        var.setQuantidadeoficinaeletronicos(1);
        var.setFotooficinaeletronicos1("foto");
        var.setFotooficinaeletronicos2("foto");
        var.setPossuilojaferramentas("sim");
        var.setQuantidadelojaferramentas(1);
        var.setValoraluminio("100");
        var.setUnidadealuminio("100");
        var.setValoreletrodo("100");
        var.setFotolojaferramentas1("foto");
        var.setFotolojaferramentas2("foto");
        var.setPossuiassociacao("sim");
        var.setQuantidadeassociacao(1);
        var.setFotoassociacao1("foto");
        var.setFotoassociacao2("foto");
        var.setPossuivhf("sim");
        var.setQuantidadevhf(1);
        var.setFotovhf1("foto");
        var.setFotovhf2("foto");
        var.setPossuilanhouse("sim");
        var.setQuantidadelanhouse(1);
        var.setFotolanhouse1("foto");
        var.setFotolanhouse2("foto");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblitensmunicipio t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblitensmunicipio t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
