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
import com.datasync.models.bicicleta.aluno.TesteTblinformacaobicicleta;
import com.datasync.models.bicicleta.aluno.TesteTbllocalestacionamentocasa;
import com.datasync.models.bicicleta.aluno.TesteTbllocalestacionamentoembarcacao;
import com.datasync.models.bicicleta.aluno.TesteTbllocalestacionamentoescola;
import com.datasync.models.bicicleta.aluno.TesteTblmelhoria;
import com.datasync.models.bicicleta.aluno.TesteTblmotivoutilizacao;
import com.datasync.models.bicicleta.aluno.TesteTblobstaculotransito;
import com.datasync.models.bicicleta.aluno.TesteTbloutrotransporte;
import com.datasync.models.bicicleta.aluno.TesteTblpercepcaoalunobicicleta;
import com.datasync.models.bicicleta.aluno.TesteTblprotecaochuva;
import com.datasync.models.bicicleta.aluno.TesteTblprotecaosol;
import com.datasync.models.bicicleta.alunoSemBike.TesteTblcabecalhoalunonaoutilizabike;
import com.datasync.models.bicicleta.alunoSemBike.TesteTblidentificacaoalunonaoutilizabike;
import com.datasync.models.bicicleta.alunoSemBike.TesteTblinformacaonaobicicleta;
import com.datasync.models.bicicleta.alunoSemBike.TesteTblmotivonaoutilizacao;
import com.datasync.models.bicicleta.alunoSemBike.TesteTblobstaculotransitonaobicicleta;
import com.datasync.models.bicicleta.alunoSemBike.TesteTblprotecaochuvanaobicicleta;
import com.datasync.models.bicicleta.alunoSemBike.TesteTblprotecaosolnaobicicleta;
import com.datasync.models.bicicleta.alunoSemBike.TesteTbltransporteescolar;
import com.datasync.models.bicicleta.alunoSemBike.TesteTblvaiescola;

@RunWith(value=Suite.class)
@SuiteClasses({ 
	//aluno
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
	TesteTbllocalestacionamentoescola.class,
	TesteTblmotivoutilizacao.class,
	TesteTblobstaculotransito.class,
	TesteTbloutrotransporte.class,
	TesteTblprotecaochuva.class,
	TesteTblprotecaosol.class,
	TesteTblinformacaobicicleta.class,
	TesteTblpercepcaoalunobicicleta.class,
	
	//aluno sem bike
	TesteTblcabecalhoalunonaoutilizabike.class,
	TesteTblidentificacaoalunonaoutilizabike.class,
	TesteTblmotivonaoutilizacao.class,
	TesteTblobstaculotransitonaobicicleta.class,
	TesteTbltransporteescolar.class,
	TesteTblvaiescola.class,
	TesteTblprotecaosolnaobicicleta.class,
	TesteTblprotecaochuvanaobicicleta.class,
	TesteTblinformacaonaobicicleta.class
})
public class TodosBicicleta {
}
