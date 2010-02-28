package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.model.barco.condutor.TesteTblBarcoCabecalhoCondutor;
import com.datasync.model.barco.condutor.TesteTblCaracterizacaoCondutor;
import com.datasync.model.barco.condutor.TesteTblIdentificacaoCondutor;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutor;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorAvisoAluno;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorContrato;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorDonoBarco;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorEscolheBarco;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorEstrago;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorFrequencia;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorGuardaBarco;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorMotivoQuebra;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorOutroAcompanhante;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorPagaManutencao;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorPercursoTempo;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorQuandoManutencao;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorRealizaManutencao;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorRealizaReparo;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorServico;
import com.datasync.model.barco.condutor.TesteTblInformacaoCondutorTrabalhaRota;
import com.datasync.model.barco.condutor.TesteTblNovaLanchaCondutor;

@RunWith(value=Suite.class)
@SuiteClasses({  
	//Condutor
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
	TesteTblInformacaoCondutorRealizaReparo.class,
	TesteTblInformacaoCondutorServico.class,
	TesteTblInformacaoCondutorTrabalhaRota.class,
	
	TesteTblNovaLanchaCondutor.class
})
public class TodosBarco {
}
