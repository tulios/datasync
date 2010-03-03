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

				//Aluno
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
				
				//Diretor
				
				//Prefeito
				
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
				"tblTipoFazCaminhoEscola"
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
				"insert into tblTipoFazCaminhoEscola values (1,'Não faz nada');"
		};
		
		for (String insert : inserts){
			localEm.createNativeQuery(insert).executeUpdate();
			serverEm.createNativeQuery(insert).executeUpdate();
		}
	}
	
}

















