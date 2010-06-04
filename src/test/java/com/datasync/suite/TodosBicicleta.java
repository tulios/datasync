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
import com.datasync.models.bicicleta.diretor.TesteTblcabecalhodiretor;
import com.datasync.models.bicicleta.diretor.TesteTblcomoalunosvaoescola;
import com.datasync.models.bicicleta.diretor.TesteTblguardabicicleta;
import com.datasync.models.bicicleta.diretor.TesteTblidentificacaodiretor;
import com.datasync.models.bicicleta.diretor.TesteTblidentificacaotransporte;
import com.datasync.models.bicicleta.diretor.TesteTblproblemastransito;
import com.datasync.models.bicicleta.posAluno.TesteTblidentificacaoposaluno;
import com.datasync.models.bicicleta.posAluno.TesteTblpercepcaoposaluno;
import com.datasync.models.bicicleta.posAluno.TesteTblpercepcaoposalunoatividade;
import com.datasync.models.bicicleta.posAluno.TesteTblpercepcaoposalunoempura;
import com.datasync.models.bicicleta.posAluno.TesteTblpercepcaoposalunosujou;
import com.datasync.models.bicicleta.responsavel.TesteTblcabecalhoresponsavel;
import com.datasync.models.bicicleta.responsavel.TesteTbldeslocamento;
import com.datasync.models.bicicleta.responsavel.TesteTblidentificacaoresponsavel;
import com.datasync.models.bicicleta.responsavel.TesteTblinformacoesbicicleta;
import com.datasync.models.bicicleta.responsavel.TesteTblprotecaocontrachuva;
import com.datasync.models.bicicleta.responsavel.TesteTblresponsavelproblemastransito;
import com.datasync.models.bicicleta.responsavel.TesteTblresponsavelproblemastransitoperspectiva;

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
	TesteTblinformacaonaobicicleta.class,
	
	//pos aluno
	TesteTblidentificacaoposaluno.class,
	TesteTblpercepcaoposaluno.class,
	TesteTblpercepcaoposalunoempura.class,
	TesteTblpercepcaoposalunosujou.class,
	TesteTblpercepcaoposalunoatividade.class,
	
	//responsavel
	TesteTblcabecalhoresponsavel.class,
	TesteTblinformacoesbicicleta.class,
	TesteTblidentificacaoresponsavel.class,
	TesteTblprotecaocontrachuva.class,
	TesteTbldeslocamento.class,
	TesteTblresponsavelproblemastransitoperspectiva.class,
	TesteTblresponsavelproblemastransito.class,
	
	//diretor
	TesteTblcabecalhodiretor.class,
	TesteTblidentificacaotransporte.class,
	TesteTblidentificacaodiretor.class,
	TesteTblproblemastransito.class,
	TesteTblguardabicicleta.class,
	TesteTblcomoalunosvaoescola.class
})
public class TodosBicicleta {
}
