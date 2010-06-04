package com.datasync.models.bicicleta.professor;

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

public class TesteTblprofessorproblemastransito extends TesteBicicleta {

    @Test
    public void verificaSincronismo() throws Exception{
        open();

        List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
        indexables.add(new Tblprofessorproblemastransito());

        Number local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblprofessorproblemastransito t").getSingleResult();
        assertEquals(0, local.intValue());

        Number server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblprofessorproblemastransito t").getSingleResult();
        assertEquals(0, server.intValue());

        Tblcabecalhoprofessor cabecalho = new Tblcabecalhoprofessor();
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
        
        Tblidentificacaoprofessortransporte id = new Tblidentificacaoprofessortransporte();
        id.setIdformulario("1");
        id.setUtilizamtransporteescolarpublico("1");
        id.setQuantosusamtransporte(1);
        id.setQuantosusambicicleta(1);
        id.setComoutilizambicicleta(1);
        id.setQuemutilizabicicleta(1);
        id.setQualvisaoamigos(1);
        id.setIdademinimabicicleta(1);
        id.setResponsavelcontrolaruso("1");
        id.setQuemresponsavelcontrolaruso("1");
        id.setExisteatividadebicicleta("1");
        id.setQualatividadebicicleta("1");
        id.setQuantidadefuncionariosutilizambicicleta(1);
        id.setDonobicicleta(1);
        id.setQuemdonobicicleta("1");
        id.setResponsavelmanutencao(1);
        id.setQuemresponsavelmanutencao("1");
        getLocalEm().persist(id);
        getServerEm().persist(id);
        
        Tblprofessorproblemastransito var = new Tblprofessorproblemastransito();
        var.setIdformulario("1");
        var.setIdtipoproblemastransito(1);
        var.setQuaisoutros("1");
        getLocalEm().persist(var);

        local = (Number) getLocalEm().createQuery("select count(t.idformulario) from Tblprofessorproblemastransito t").getSingleResult();
        assertEquals(1, local.intValue());

        IndexProcessor processor = new IndexProcessor();
        assertEquals(0, processor.getIdsList(var.getFullClassName()).size());

        close();

        ServiceRunner runner = new SyncServiceRunner();
        runner.run(new SyncDatabasesService(indexables));

        processor = new IndexProcessor();
        assertEquals(1, processor.getIdsList(var.getFullClassName()).size());

        open();
        server = (Number) getServerEm().createQuery("select count(t.idformulario) from Tblprofessorproblemastransito t").getSingleResult();
        assertEquals(1, server.intValue());
        close();
    }

}
