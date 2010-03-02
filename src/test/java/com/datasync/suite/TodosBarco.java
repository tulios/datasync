package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.models.barco.aluno.TesteTblcabecalhoaluno;
import com.datasync.models.barco.aluno.TesteTblcaracterizacaofamiliaaluno;
import com.datasync.models.barco.aluno.TesteTblcaracterizacaofamiliaalunoauxilio;
import com.datasync.models.barco.condutor.TesteTblBarcoCabecalhoCondutor;
import com.datasync.models.barco.condutor.TesteTblCaracterizacaoCondutor;
import com.datasync.models.barco.condutor.TesteTblIdentificacaoCondutor;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutor;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorAvisoAluno;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorContrato;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorDonoBarco;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorEscolheBarco;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorEstrago;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorFrequencia;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorGuardaBarco;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorMotivoQuebra;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorOutroAcompanhante;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorPagaManutencao;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorPercursoTempo;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorQuandoManutencao;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorRealizaManutencao;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorRealizaReparo;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorServico;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorTrabalhaRota;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorTransportaOutro;
import com.datasync.models.barco.condutor.TesteTblInformacaoCondutorTrocaBarco;
import com.datasync.models.barco.condutor.TesteTblNovaLanchaCondutor;

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
	TesteTblInformacaoCondutorTransportaOutro.class,
	TesteTblInformacaoCondutorTrocaBarco.class,
	TesteTblNovaLanchaCondutor.class,
	
	//Aluno
	TesteTblcabecalhoaluno.class,
	TesteTblcaracterizacaofamiliaaluno.class,
	TesteTblcaracterizacaofamiliaalunoauxilio.class
	
	//Professor
	//Diretor
	//Prefeito
	//Secretario
})
public class TodosBarco {
}
