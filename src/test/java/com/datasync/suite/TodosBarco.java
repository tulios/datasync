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
	TesteTblInformacaoCondutorFrequencia.class
})
public class TodosBarco {
}
