package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.model.barco.TesteTblBarcoCabecalhoCondutor;
import com.datasync.model.barco.TesteTblCaracterizacaoCondutor;
import com.datasync.model.barco.TesteTblIdentificacaoCondutor;
import com.datasync.model.barco.TesteTblInformacaoCondutor;
import com.datasync.model.barco.TesteTblInformacaoCondutorAvisoAluno;
import com.datasync.model.barco.TesteTblInformacaoCondutorContrato;
import com.datasync.model.barco.TesteTblInformacaoCondutorDonoBarco;
import com.datasync.model.barco.TesteTblInformacaoCondutorEscolheBarco;
import com.datasync.model.barco.TesteTblInformacaoCondutorEstrago;
import com.datasync.model.barco.TesteTblInformacaoCondutorFrequencia;
import com.datasync.model.barco.TesteTblInformacaoCondutorGuardaBarco;
import com.datasync.model.barco.TesteTblInformacaoCondutorMotivoQuebra;
import com.datasync.model.barco.TesteTblInformacaoCondutorOutroAcompanhante;
import com.datasync.model.barco.TesteTblInformacaoCondutorPagaManutencao;
import com.datasync.model.barco.TesteTblInformacaoCondutorPercursoTempo;
import com.datasync.model.barco.TesteTblInformacaoCondutorQuandoManutencao;
import com.datasync.model.barco.TesteTblInformacaoCondutorRealizaManutencao;
import com.datasync.model.barco.TesteTblNovaLanchaCondutor;

@RunWith(value=Suite.class)
@SuiteClasses({  
	TesteTblBarcoCabecalhoCondutor.class,
	TesteTblCaracterizacaoCondutor.class,
	TesteTblIdentificacaoCondutor.class,
	TesteTblInformacaoCondutor.class,
	TesteTblInformacaoCondutorAvisoAluno.class,
	TesteTblInformacaoCondutorContrato.class,
	TesteTblInformacaoCondutorDonoBarco.class,
	TesteTblInformacaoCondutorEscolheBarco.class,
	TesteTblInformacaoCondutorEstrago.class,
	TesteTblInformacaoCondutorFrequencia.class,
	TesteTblInformacaoCondutorGuardaBarco.class,
	TesteTblInformacaoCondutorMotivoQuebra.class,
	TesteTblInformacaoCondutorOutroAcompanhante.class,
	TesteTblInformacaoCondutorPagaManutencao.class,
	TesteTblInformacaoCondutorPercursoTempo.class,
	TesteTblInformacaoCondutorQuandoManutencao.class,
	TesteTblInformacaoCondutorRealizaManutencao.class,
	
	TesteTblNovaLanchaCondutor.class
})
public class TodosBarco {
}
