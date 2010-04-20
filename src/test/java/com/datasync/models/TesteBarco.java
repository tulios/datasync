package com.datasync.models;

import org.junit.Before;

import com.datasync.Teste;
import com.datasync.processor.IndexProcessor;

public class TesteBarco extends Teste{

	@Before
	public void zerarBanco(){
		open();
		clearBarco();
		insertDefaultData();
		close();
		new IndexProcessor().getFile().delete();
	}  

	private void clearBarco(){
		String[] tabelas = new String[]{
				//Condutor
				"TblInformacaoCondutorTrocaBarco",
				"TblInformacaoCondutorTransportaOutro",
				"TblInformacaoCondutorTrabalhaRota",
				"TblInformacaoCondutorServico",
				"TblInformacaoCondutorRealizaReparo",
				"TblInformacaoCondutorRealizaManutencao",
				"TblInformacaoCondutorQuandoManutencao",
				"TblInformacaoCondutorPercursoTempo",
				"TblInformacaoCondutorPagaManutencao",
				"TblNovaLanchaCondutor",
				"TblInformacaoCondutorOutroAcompanhante",
				"TblInformacaoCondutorMotivoQuebra",
				"TblInformacaoCondutorGuardaBarco",
				"TblInformacaoCondutorEstrago",
				"TblInformacaoCondutorEscolheBarco",
				"TblInformacaoCondutorContrato",
				"TblInformacaoCondutorAvisoAluno",
				"TblInformacaoCondutorDonoBarco",
				"TblInformacaoCondutorFrequencia",
				"TblInformacaoCondutor",
				"TblIdentificacaoCondutor",
				"TblCaracterizacaoCondutor",
				"TblCabecalhoCondutor",

				//Pais
				"TblCaracterizacaoFamiliaAlunoParentes",
				"TblCaracterizacaoFamiliaParentes",
				"Tblinformacaopaistransportaoutro",
				"Tblinformacaopaissugestao", 
				"Tblinformacaopaisprovidencia",
				"Tblinformacaopaisoutrotransporte",
				"Tblinformacaopaisescolhebarco",
				"Tblinformacaopaisepocapior",
				"Tblinformacaopaisdonobarco",
				"Tblinformacaopaisbarcoatrasa",
				"Tblinformacaopaisalunonaoescola",
				"Tblinformacaopais",
				"Tblidentificacaopais",
				"Tblcaracterizacaofamiliapaistrabalho",
				"Tblcaracterizacaofamiliapaisauxilio",
				"Tblcaracterizacaofamiliapais",
				"Tblcabecalhopais",
				
				//Aluno
				"Tblpostestemolhaaluno",
				"Tblpostesteavaliacaolancha",
				"tblPostesteauno", //"tblPostestealuno",
				"Tblpercepcaoalunorotafazoutracoisa",
				"Tblpercepcaoalunorotafazcaminhoescola",
				"Tblpercepcaoalunorotaepocapior",
				"Tblpercepcaoalunorotaajudabarqueiro",
				"Tblpercepcaoalunorota",
				"Tblpercepcaoalunomelhoria",
				"Tblidentificacaoaluno",
				"Tblcaracterizacaofamiliaalunotrabalho",
				"Tblcaracterizacaofamiliaalunoauxilio",
				"Tblcaracterizacaofamiliaaluno",
				"TblCabecalhoAluno",
				
				//Professor
				"Tblpercepcaoprofessorprovidencia",
				"Tblpercepcaoprofessoravisoaluno",
				"Tblpercepcaoprofessoralunoreclama",
				"Tblpercepcaoprofessoralunonaoescola",
				"Tblpercepcaoprofessoralunoescola",
				"Tblidentificacaoprofessor",
				"Tblcaracterizacaoprofessor",
				"Tblcabecalhoprofessor",
				
				//Diretor
				"Tblpercepcaodiretorrendimentoacademico",
				"Tblpercepcaodiretoralunoreclama",
				"Tblpercepcaodiretoralunonaoescola",
				"Tblpercepcaodiretoralunoescola",
				"Tblinformacaoescolaresponsavelbarco",
				"Tblidentificacaoescolaplanejamentorota",
				"Tblidentificacaoescolaatendeturno",
				"Tblidentificacaoescola",
				"Tblidentificacaodiretor",
				"Tblcaracterizacaodiretoroutraexperiencia",
				"Tblcaracterizacaodiretor",
				"Tblcabecalhodiretor",
				
				//Prefeito
				"Tblinformacaoprefeitoresponsaveltransporescolar",
				"Tblinformacaoprefeitoreage",
				"Tblinformacaoprefeitopublicoalvo",
				"Tblinformacaoprefeitoacordo",
				"Tblinformacaoprefeito",
				"Tblidentificacaoprefeito",
				"Tblcaracterizacaoprefeito",
				"Tblcabecalhoprefeito",
				
				//Secretario
				"Tblpercepcaosecretariomotivobarqueiroterceirizado",
				"Tblpercepcaosecretariodificuldade",
				"Tblinformacaosecretarioreage",
				"Tblinformacaosecretariooutrotransporte",
				"Tblinformacaosecretariocriterio",
				"Tblinformacaosecretarioacordo",
				"Tblidentificacaosecretario",
				"Tblcaracterizacaosecretario",
				"Tblcabecalhosecretario",
				
				//Embarcacao
				"tblsinalizacaonoturna",
				"tblpropriedadeembarcacao",
				"tblmaterialteto",
				"tblmaterialcasco",
				"tblmaterialassento",
				"tblimagensembarcacao",
				"tbltripulacao",
				"tblidentificacaoembarcacao",
				"tbldimensaoembarcacao",
				"tblconservacaoembarcacao",
				"Tblcombustivelembarcacao",
				"Tblcaracterizacaoembarcacao",
				"Tblcabecalhoembarcacao",
				
				//Municipio
				"Tblserviçosemergenciaismunicipio",
				"tblpostoabastecimento3",
				"tblpostoabastecimento2",
				"tblpostoabastecimento1",
				"tbloutrositensmunicipio",
				"tblitensmunicipio",
				"tblcabecalhomunicipio",
				
				//fad
				"tblDadosOperacionaisFinal",
				"tblComportamentoEstabilidade",
				"tblEventosExternos",
				"tblDadosOperacionaisInicial",
				"tblDadosParada",
				"tblCabecalhoDesempenho",
				
				//Tabelas Comuns
				"tblEscola",
				"tblMunicipio",
				"tblTipoEscolaridade",
				"tblTipoFrequencia",
				"tblTipoDonoBarco",
				"tblTipoAvisoAluno",
				"tblTipoContrato",
				"tblTipoEscolheBarco",
				"tblTipoEstrago",
				"tblTipoGuardaBarco",
				"tblTipoMotivoQuebra",
				"tblTipoOutroAcompanhante",
				"tblTipoPagaManutencao",
				"tblTipoPercursoTempo",
				"tblTipoQuandoManutencao",
				"tblTipoRealizaManutencao",
				"tblTipoServico",
				"tblTipoNaoTrabalhaRota",
				"tblTipoTransportaOutro",
				"tblTipoTrocaBarco",
				"tblTipoAuxilio",
				"tblTipoTrabalho",
				"tblTipoMelhoria",
				"tblTipoAjuda",
				"tblTipoEpoca",
				"tblTipoFazCaminhoEscola",
				"tblTipoFazOutraCoisa",
				"tblTipoMolhaAluno",
				"tblTipoProvidenciaProfessor",
				"tblTipoOutraExperiencia",
				"TblTipoTurno",
				"TblTipoResposta",
				"TblTipoOutroTransporte",
				"TblTipoAlunoNaoEscola",
				"TblTipoReclamacao",
				"tblTipoAcordo",
				"tblTipoPublicoAlvo",
				"tblTipoReage",
				"tblTipoResponsavel",
				"tblTipoCriterio",
				"tblTipoDificuldade",
				"tblTipoMotivoBarqueiroTerceirizado",
				"tblTipoProvidenciaPai",
				"tbltiposugestao",
				"tbltipocombustivel",
				"tbltipoassento",
				"tbltipocasco",
				"tbltipoteto",
				"tbltipopropriedade",
				"tblTipoSinalizacaoNoturna",
				"tblTipoParentes",
				"tblTipoParada"
		};
		
		for(String tabela : tabelas){
			localEm.createNativeQuery("delete from " + tabela).executeUpdate();
			serverEm.createNativeQuery("delete from " + tabela).executeUpdate();
		}
	}
	
	private void insertDefaultData(){
		String[] inserts = new String[]{
				"insert into tblMunicipio values (1, 'Brasília', 'DF');",
				"insert into tblTipoEscolaridade values (1,'Ensino Fundamental 1º série');",
				"insert into tblTipoFrequencia values (1,'Desc Frequencia');",
				"insert into tblTipoDonoBarco values (1,'Da Prefeitura');",
				"insert into tblTipoAvisoAluno values (1,'Faz nada');",
				"insert into tblTipoContrato values (1,'Não quis informar');",
				"insert into tblTipoEscolheBarco values (1,'A escola');",
				"insert into tblTipoEstrago values (1,'No casco');",
				"insert into tblTipoGuardaBarco values (1,'Na frente de casa');",
				"insert into tblTipoMotivoQuebra values (1,'Motor Banco de areia');",
				"insert into tblTipoOutroAcompanhante values (1,'Familiares');",
				"insert into tblTipoPagaManutencao values (1,'Condutor');",
				"insert into tblTipoPercursoTempo values (1, 'Descricao');",
				"insert into tblTipoQuandoManutencao values (1,'Nos finais de semana');",
				"insert into tblTipoRealizaManutencao values (1,'Condutor');",
				"insert into tblTipoServico values (1,'Calafeto');",
				"insert into tblTipoNaoTrabalhaRota values (1,'Não quis informar/Não sabe');",
				"insert into tblTipoTransportaOutro values (1,'Nada');",
				"insert into tblTipoTrocaBarco values (1, 'Descricao');",
				"insert into tblEscola values (1,'EMEF INDIGENA SAHU-APE',1);",
				"insert into tblTipoAuxilio values (1,'Não sabe/não quis informar');",
				"insert into tblTipoTrabalho values (1,'Plantação');",
				"insert into tblTipoMelhoria values (1,'Nada');",
				"insert into tblTipoAjuda values (1,'Não devo fazer nada');",
				"insert into tblTipoEpoca values (1,'Inverno/Cheia');",
				"insert into tblTipoFazCaminhoEscola values (1,'Não faz nada');",
				"insert into tblTipoFazOutraCoisa values (1,'Não faz nada');",
				"insert into tblTipoMolhaAluno values(1,'Correu');",
				"insert into tblTipoProvidenciaProfessor values (1,'Nenhuma');",
				"insert into tblTipoOutraExperiencia values (1,'Professor');",
				"insert into tblTipoTurno values (1,'Matutino');",
				"insert into tblTipoResposta values (1,'Não sabe/Não quis informar');",
				"insert into tblTipoOutroTransporte values (1,'Não vem');",
				"insert into tblTipoAlunoNaoEscola values (1,'Não resposta');",
				"insert into tblTipoReclamacao values (1,'Não resposta');",
				"insert into tblTipoAcordo values (1,'O FNDE/MEC repassa direto o dinheiro para o estado');",
				"insert into tblTipoPublicoAlvo values (1,'Passageiros');",
				"insert into tblTipoReage values (1,'Continua transportando os alunos');",
				"insert into tblTipoResponsavel values(1,'Prefeitura');",
				"insert into tblTipoCriterio values (1,'Menor tempo de viagem');",
				"insert into tblTipoDificuldade values (1,'Pontualidade');",
				"insert into tblTipoMotivoBarqueiroTerceirizado values (1,'Segurança na navegação');",
				"insert into tblTipoProvidenciaPai values (1,'Não faz nada');",
				"insert into tbltiposugestao values (1,'Ajuste de horário escolar');",
				"insert	into tblTipoCombustivel	values (1,'Gasolina')",
				"insert into tblTipoAssento	values (1,'Madeira')",
				"insert into tblTipoCasco values (1,'Madeira')",
				"insert into tblTipoTeto values	(1,'Madeira')",
				"insert into tblTipoPropriedade	values (1,'Própria')",
				"insert into tblTipoSinalizacaoNoturna values (1,'Não possui')",
				"insert into tblTipoParentes values (1, 'PAI')",
				"insert into tblTipoParada values (1, 'Parada1')"
		};
		
		for (String insert : inserts){
			localEm.createNativeQuery(insert).executeUpdate();
			serverEm.createNativeQuery(insert).executeUpdate();
		}
	}
	
}

















