package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.models.barco.aluno.TesteTblcabecalhoaluno;
import com.datasync.models.barco.aluno.TesteTblcaracterizacaofamiliaaluno;
import com.datasync.models.barco.aluno.TesteTblcaracterizacaofamiliaalunoauxilio;
import com.datasync.models.barco.aluno.TesteTblcaracterizacaofamiliaalunotrabalho;
import com.datasync.models.barco.aluno.TesteTblidentificacaoaluno;
import com.datasync.models.barco.aluno.TesteTblpercepcaoalunomelhoria;
import com.datasync.models.barco.aluno.TesteTblpercepcaoalunorota;
import com.datasync.models.barco.aluno.TesteTblpercepcaoalunorotaajudabarqueiro;
import com.datasync.models.barco.aluno.TesteTblpercepcaoalunorotaepocapior;
import com.datasync.models.barco.aluno.TesteTblpercepcaoalunorotafazcaminhoescola;
import com.datasync.models.barco.aluno.TesteTblpercepcaoalunorotafazoutracoisa;
import com.datasync.models.barco.aluno.TesteTblpostesteauno;
import com.datasync.models.barco.aluno.TesteTblpostesteavaliacaolancha;
import com.datasync.models.barco.aluno.TesteTblpostestemolhaaluno;
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
import com.datasync.models.barco.diretor.TesteTblcabecalhodiretor;
import com.datasync.models.barco.diretor.TesteTblcaracterizacaodiretor;
import com.datasync.models.barco.diretor.TesteTblcaracterizacaodiretoroutraexperiencia;
import com.datasync.models.barco.diretor.TesteTblidentificacaodiretor;
import com.datasync.models.barco.diretor.TesteTblidentificacaoescola;
import com.datasync.models.barco.diretor.TesteTblidentificacaoescolaatendeturno;
import com.datasync.models.barco.diretor.TesteTblidentificacaoescolaplanejamentorota;
import com.datasync.models.barco.diretor.TesteTblinformacaoescolaresponsavelbarco;
import com.datasync.models.barco.diretor.TesteTblpercepcaodiretoralunoescola;
import com.datasync.models.barco.diretor.TesteTblpercepcaodiretoralunonaoescola;
import com.datasync.models.barco.diretor.TesteTblpercepcaodiretoralunoreclama;
import com.datasync.models.barco.diretor.TesteTblpercepcaodiretorrendimentoacademico;
import com.datasync.models.barco.embarcacao.TesteTblcabecalhoembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblcaracterizacaoembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblcombustivelembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblconservacaoembarcacao;
import com.datasync.models.barco.embarcacao.TesteTbldimensaoembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblidentificacaoembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblimagensembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblmaterialassento;
import com.datasync.models.barco.embarcacao.TesteTblmaterialcasco;
import com.datasync.models.barco.embarcacao.TesteTblmaterialteto;
import com.datasync.models.barco.embarcacao.TesteTblpropriedadeembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblsinalizacaonoturna;
import com.datasync.models.barco.embarcacao.TesteTbltripulacao;
import com.datasync.models.barco.municipio.Tblserviçosemergenciaismunicipio;
import com.datasync.models.barco.municipio.TesteTblcabecalhomunicipio;
import com.datasync.models.barco.municipio.TesteTblitensmunicipio;
import com.datasync.models.barco.municipio.TesteTbloutrositensmunicipio;
import com.datasync.models.barco.municipio.TesteTblpostoabastecimento1;
import com.datasync.models.barco.municipio.TesteTblpostoabastecimento2;
import com.datasync.models.barco.municipio.TesteTblpostoabastecimento3;
import com.datasync.models.barco.pais.TesteTblcabecalhopais;
import com.datasync.models.barco.pais.TesteTblcaracterizacaofamiliapais;
import com.datasync.models.barco.pais.TesteTblcaracterizacaofamiliapaisauxilio;
import com.datasync.models.barco.pais.TesteTblcaracterizacaofamiliapaistrabalho;
import com.datasync.models.barco.pais.TesteTblidentificacaopais;
import com.datasync.models.barco.pais.TesteTblinformacaopais;
import com.datasync.models.barco.pais.TesteTblinformacaopaisalunonaoescola;
import com.datasync.models.barco.pais.TesteTblinformacaopaisbarcoatrasa;
import com.datasync.models.barco.pais.TesteTblinformacaopaisdonobarco;
import com.datasync.models.barco.pais.TesteTblinformacaopaisepocapior;
import com.datasync.models.barco.pais.TesteTblinformacaopaisescolhebarco;
import com.datasync.models.barco.pais.TesteTblinformacaopaisoutrotransporte;
import com.datasync.models.barco.pais.TesteTblinformacaopaisprovidencia;
import com.datasync.models.barco.pais.TesteTblinformacaopaissugestao;
import com.datasync.models.barco.pais.TesteTblinformacaopaistransportaoutro;
import com.datasync.models.barco.prefeito.TesteTblcabecalhoprefeito;
import com.datasync.models.barco.prefeito.TesteTblcaracterizacaoprefeito;
import com.datasync.models.barco.prefeito.TesteTblidentificacaoprefeito;
import com.datasync.models.barco.prefeito.TesteTblinformacaoprefeito;
import com.datasync.models.barco.prefeito.TesteTblinformacaoprefeitoacordo;
import com.datasync.models.barco.prefeito.TesteTblinformacaoprefeitopublicoalvo;
import com.datasync.models.barco.prefeito.TesteTblinformacaoprefeitoreage;
import com.datasync.models.barco.prefeito.TesteTblinformacaoprefeitoresponsaveltransporescolar;
import com.datasync.models.barco.professor.TesteTblcabecalhoprofessor;
import com.datasync.models.barco.professor.TesteTblcaracterizacaoprofessor;
import com.datasync.models.barco.professor.TesteTblidentificacaoprofessor;
import com.datasync.models.barco.professor.TesteTblpercepcaoprofessoralunoescola;
import com.datasync.models.barco.professor.TesteTblpercepcaoprofessoralunonaoescola;
import com.datasync.models.barco.professor.TesteTblpercepcaoprofessoralunoreclama;
import com.datasync.models.barco.professor.TesteTblpercepcaoprofessoravisoaluno;
import com.datasync.models.barco.professor.TesteTblpercepcaoprofessorprovidencia;
import com.datasync.models.barco.secretario.TesteTblcabecalhosecretario;
import com.datasync.models.barco.secretario.TesteTblcaracterizacaosecretario;
import com.datasync.models.barco.secretario.TesteTblidentificacaosecretario;
import com.datasync.models.barco.secretario.TesteTblinformacaosecretarioacordo;
import com.datasync.models.barco.secretario.TesteTblinformacaosecretariocriterio;
import com.datasync.models.barco.secretario.TesteTblinformacaosecretariooutrotransporte;
import com.datasync.models.barco.secretario.TesteTblinformacaosecretarioreage;
import com.datasync.models.barco.secretario.TesteTblpercepcaosecretariodificuldade;
import com.datasync.models.barco.secretario.TesteTblpercepcaosecretariomotivobarqueiroterceirizado;

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
	TesteTblcaracterizacaofamiliaalunoauxilio.class,
	TesteTblcaracterizacaofamiliaalunotrabalho.class,
	TesteTblidentificacaoaluno.class,
	TesteTblpercepcaoalunomelhoria.class,
	TesteTblpercepcaoalunorota.class,
	TesteTblpercepcaoalunorotaajudabarqueiro.class,
	TesteTblpercepcaoalunorotaepocapior.class,
	TesteTblpercepcaoalunorotafazcaminhoescola.class,
	TesteTblpercepcaoalunorotafazoutracoisa.class,
	TesteTblpostesteauno.class,
	TesteTblpostesteavaliacaolancha.class,
	TesteTblpostestemolhaaluno.class,
	
	//Professor
	TesteTblcabecalhoprofessor.class,
	TesteTblcaracterizacaoprofessor.class,
	TesteTblidentificacaoprofessor.class,
	TesteTblpercepcaoprofessoralunoescola.class,
	TesteTblpercepcaoprofessoralunonaoescola.class,
	TesteTblpercepcaoprofessoralunoreclama.class,
	TesteTblpercepcaoprofessoravisoaluno.class,
	TesteTblpercepcaoprofessorprovidencia.class,
	
	//Diretor
	TesteTblcabecalhodiretor.class,
	TesteTblcaracterizacaodiretor.class,
	TesteTblcaracterizacaodiretoroutraexperiencia.class,
	TesteTblidentificacaodiretor.class,
	TesteTblidentificacaoescola.class,
	TesteTblidentificacaoescolaatendeturno.class,
	TesteTblidentificacaoescolaplanejamentorota.class,
	TesteTblinformacaoescolaresponsavelbarco.class,
	TesteTblpercepcaodiretoralunoescola.class,
	TesteTblpercepcaodiretoralunonaoescola.class,
	TesteTblpercepcaodiretoralunoreclama.class,
	TesteTblpercepcaodiretorrendimentoacademico.class,
	
	//Prefeito
	TesteTblcabecalhoprefeito.class,
	TesteTblcaracterizacaoprefeito.class,
	TesteTblidentificacaoprefeito.class,
	TesteTblinformacaoprefeito.class,
	TesteTblinformacaoprefeitoacordo.class,
	TesteTblinformacaoprefeitopublicoalvo.class,
	TesteTblinformacaoprefeitoreage.class,
	TesteTblinformacaoprefeitoresponsaveltransporescolar.class,
	
	//Secretario
	TesteTblcabecalhosecretario.class,
	TesteTblcaracterizacaosecretario.class,
	TesteTblidentificacaosecretario.class,
	TesteTblinformacaosecretarioacordo.class,
	TesteTblinformacaosecretariocriterio.class,
	TesteTblinformacaosecretariooutrotransporte.class,
	TesteTblinformacaosecretarioreage.class,
	TesteTblpercepcaosecretariodificuldade.class,
	TesteTblpercepcaosecretariomotivobarqueiroterceirizado.class,
	
	//Pais
	TesteTblcabecalhopais.class,
	TesteTblcaracterizacaofamiliapais.class,
	TesteTblcaracterizacaofamiliapaisauxilio.class,
	TesteTblcaracterizacaofamiliapaistrabalho.class,
	TesteTblidentificacaopais.class,
	TesteTblinformacaopais.class,
	TesteTblinformacaopaisalunonaoescola.class,
	TesteTblinformacaopaisbarcoatrasa.class,
	TesteTblinformacaopaisdonobarco.class,
	TesteTblinformacaopaisepocapior.class,
	TesteTblinformacaopaisescolhebarco.class,
	TesteTblinformacaopaisoutrotransporte.class,
	TesteTblinformacaopaisprovidencia.class,
	TesteTblinformacaopaissugestao.class,
	TesteTblinformacaopaistransportaoutro.class,
	
	//Embarcacao
	TesteTblcabecalhoembarcacao.class,
	TesteTblcaracterizacaoembarcacao.class,
	TesteTblcombustivelembarcacao.class,
	TesteTblconservacaoembarcacao.class,
	TesteTbldimensaoembarcacao.class,
	TesteTblidentificacaoembarcacao.class,
	TesteTblimagensembarcacao.class,
	TesteTbltripulacao.class,
	TesteTblmaterialassento.class,
	TesteTblmaterialcasco.class,
	TesteTblmaterialteto.class,
	TesteTblpropriedadeembarcacao.class,
	TesteTblsinalizacaonoturna.class,
	
	//Municipio
	TesteTblcabecalhomunicipio.class,
	TesteTblitensmunicipio.class,
	TesteTbloutrositensmunicipio.class,
	TesteTblpostoabastecimento1.class,
	TesteTblpostoabastecimento2.class,
	TesteTblpostoabastecimento3.class,
	Tblserviçosemergenciaismunicipio.class
	
})
public class TodosBarco {
}
