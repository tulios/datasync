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
		localEm.createNativeQuery("delete from TblInformacaoCondutorTrocaBarco").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorTrocaBarco").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorTransportaOutro").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorTransportaOutro").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorTrabalhaRota").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorTrabalhaRota").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorServico").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorServico").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorRealizaReparo").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorRealizaReparo").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorRealizaManutencao").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorRealizaManutencao").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorQuandoManutencao").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorQuandoManutencao").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorPercursoTempo").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorPercursoTempo").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorPagaManutencao").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorPagaManutencao").executeUpdate();
		
		//Lancha
		localEm.createNativeQuery("delete from TblNovaLanchaCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblNovaLanchaCondutor").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorOutroAcompanhante").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorOutroAcompanhante").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorMotivoQuebra").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorMotivoQuebra").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorGuardaBarco").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorGuardaBarco").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorEstrago").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorEstrago").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorEscolheBarco").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorEscolheBarco").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorContrato").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorContrato").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorAvisoAluno").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorAvisoAluno").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorDonoBarco").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorDonoBarco").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutorFrequencia").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutorFrequencia").executeUpdate();
		
		localEm.createNativeQuery("delete from TblInformacaoCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblInformacaoCondutor").executeUpdate();
		
		localEm.createNativeQuery("delete from TblIdentificacaoCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblIdentificacaoCondutor").executeUpdate();
		
		localEm.createNativeQuery("delete from TblCaracterizacaoCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblCaracterizacaoCondutor").executeUpdate();
		
		localEm.createNativeQuery("delete from TblCabecalhoCondutor").executeUpdate();
		serverEm.createNativeQuery("delete from TblCabecalhoCondutor").executeUpdate();
		
		//Tabelas Comuns
		
		localEm.createNativeQuery("delete from tblMunicipio").executeUpdate();
		serverEm.createNativeQuery("delete from tblMunicipio").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoEscolaridade").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoEscolaridade").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoFrequencia").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoFrequencia").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoDonoBarco").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoDonoBarco").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoAvisoAluno").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoAvisoAluno").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoContrato").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoContrato").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoEscolheBarco").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoEscolheBarco").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoEstrago").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoEstrago").executeUpdate();

		localEm.createNativeQuery("delete from tblTipoGuardaBarco").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoGuardaBarco").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoMotivoQuebra").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoMotivoQuebra").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoOutroAcompanhante").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoOutroAcompanhante").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoPagaManutencao").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoPagaManutencao").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoPercursoTempo").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoPercursoTempo").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoQuandoManutencao").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoQuandoManutencao").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoRealizaManutencao").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoRealizaManutencao").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoServico").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoServico").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoNaoTrabalhaRota").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoNaoTrabalhaRota").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoTransportaOutro").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoTransportaOutro").executeUpdate();
		
		localEm.createNativeQuery("delete from tblTipoTrocaBarco").executeUpdate();
		serverEm.createNativeQuery("delete from tblTipoTrocaBarco").executeUpdate();
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

















