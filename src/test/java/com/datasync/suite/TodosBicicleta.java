package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.models.bicicleta.aluno.TesteTblacidenteescola;
import com.datasync.models.bicicleta.aluno.TesteTblacompanhanteescola;
import com.datasync.models.bicicleta.aluno.TesteTblatividade;
import com.datasync.models.bicicleta.aluno.TesteTblcabecalhoaluno;
import com.datasync.models.bicicleta.aluno.TesteTblcalcado;
import com.datasync.models.bicicleta.aluno.TesteTblconsertabicicleta;
import com.datasync.models.bicicleta.aluno.TesteTblcuidadobicicleta;
import com.datasync.models.bicicleta.aluno.TesteTbldefeitobicicleta;
import com.datasync.models.bicicleta.aluno.TesteTblequipamentoprotecao;
import com.datasync.models.bicicleta.aluno.TesteTblidentificacaoaluno;
import com.datasync.models.bicicleta.aluno.TesteTbllocalestacionamentocasa;
import com.datasync.models.bicicleta.aluno.TesteTbllocalestacionamentoembarcacao;
import com.datasync.models.bicicleta.aluno.TesteTbllocalestacionamentoescola;
import com.datasync.models.bicicleta.aluno.TesteTblmelhoria;

@RunWith(value=Suite.class)
@SuiteClasses({ 
	TesteTblcabecalhoaluno.class,
	TesteTblatividade.class,
	TesteTblacidenteescola.class,
	TesteTblacompanhanteescola.class,
	TesteTbldefeitobicicleta.class,
	TesteTblmelhoria.class,
	TesteTblcalcado.class,
	TesteTblconsertabicicleta.class,
	TesteTblcuidadobicicleta.class,
	TesteTblequipamentoprotecao.class,
	TesteTblidentificacaoaluno.class,
	TesteTbllocalestacionamentocasa.class,
	TesteTbllocalestacionamentoembarcacao.class,
	TesteTbllocalestacionamentoescola.class
})
public class TodosBicicleta {
}
