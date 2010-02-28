package com.datasync.model;

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
				
				//Tabelas Comuns
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
				"tblTipoTrocaBarco"
		};
		
		for(String tabela : tabelas){
			localEm.createNativeQuery("delete from " + tabela).executeUpdate();
			serverEm.createNativeQuery("delete from " + tabela).executeUpdate();
		}
	}
	
	private void insertDefaultData(){
		localEm.createNativeQuery("insert into tblMunicipio (IdMunicipio, NomeMunicipio, UF) values (1, 'Brasília', 'DF');").executeUpdate();
		serverEm.createNativeQuery("insert into tblMunicipio (IdMunicipio, NomeMunicipio, UF) values (1, 'Brasília', 'DF');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoEscolaridade values (1,'Ensino Fundamental 1º série');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoEscolaridade values (1,'Ensino Fundamental 1º série');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoFrequencia values (1,'Desc Frequencia');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoFrequencia values (1,'Desc Frequencia');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoDonoBarco values (1,'Da Prefeitura');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoDonoBarco values (1,'Da Prefeitura');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoAvisoAluno values (1,'Faz nada');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoAvisoAluno values (1,'Faz nada');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoContrato values (1,'Não quis informar');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoContrato values (1,'Não quis informar');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoEscolheBarco values (1,'A escola');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoEscolheBarco values (1,'A escola');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoEstrago values (1,'No casco');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoEstrago values (1,'No casco');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoGuardaBarco values (1,'Na frente de casa');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoGuardaBarco values (1,'Na frente de casa');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoMotivoQuebra values (1,'Motor Banco de areia');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoMotivoQuebra values (1,'Motor Banco de areia');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoOutroAcompanhante values (1,'Familiares');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoOutroAcompanhante values (1,'Familiares');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoPagaManutencao values (1,'Condutor');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoPagaManutencao values (1,'Condutor');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoPercursoTempo values (1, 'Descricao');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoPercursoTempo values (1, 'Descricao');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoQuandoManutencao values (1,'Nos finais de semana');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoQuandoManutencao values (1,'Nos finais de semana');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoRealizaManutencao values (1,'Condutor');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoRealizaManutencao values (1,'Condutor');").executeUpdate();

		localEm.createNativeQuery("insert into tblTipoServico values (1,'Calafeto');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoServico values (1,'Calafeto');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoNaoTrabalhaRota values (1,'Não quis informar/Não sabe');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoNaoTrabalhaRota values (1,'Não quis informar/Não sabe');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoTransportaOutro values (1,'Nada');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoTransportaOutro values (1,'Nada');").executeUpdate();
		
		localEm.createNativeQuery("insert into tblTipoTrocaBarco values (1, 'Descricao');").executeUpdate();
		serverEm.createNativeQuery("insert into tblTipoTrocaBarco values (1, 'Descricao');").executeUpdate();
		
		//localEm.createNativeQuery("").executeUpdate();
		//serverEm.createNativeQuery("").executeUpdate();
	}
	
}

















