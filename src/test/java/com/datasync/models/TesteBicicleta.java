package com.datasync.models;

import org.junit.Before;

import com.datasync.Teste;
import com.datasync.processor.IndexProcessor;

public class TesteBicicleta extends Teste {
	
	@Before
	public void zerarBanco(){
		open();
		clearBicicleta();
		insertDefaultData();
		close();
		new IndexProcessor().getFile().delete();
	}
	
	private void clearBicicleta(){
		String[] tabelas = new String[]{
			//aluno
			"tblPercepcaoAlunoBicicleta",
			"tblInformacaoBicicleta",
			"tblProtecaoSol",
			"tblProtecaoChuva",
			"tblOutroTransporte",
			"tblObstaculoTransito",
			"tblMotivoUtilizacao",
			"tblLocalEstacionamentoEscola",
			"tblLocalEstacionamentoEmbarcacao",
			"tblLocalEstacionamentoCasa",
			"tblIdentificacaoAluno",
			"tblEquipamentoProtecao",
			"tblCuidadoBicicleta",
			"tblConsertaBicicleta",
			"tblCalcado",
			"tblMelhoria",
			"tblDefeitoBicicleta",
			"tblacompanhanteescola",	
			"tblacidenteescola",
			"tblAtividade",
			"tblCabecalhoAluno",
			
			//aluno sem bike
			"tblInformacaoNaoBicicleta",
			"tblProtecaoChuvaNaoBicicleta",
			"tblProtecaoSolNaoBicicleta",
			"tblVaiEscola",
			"tblTransporteEscolar",
			"tblObstaculoTransitoNaoBicicleta",
			"tblMotivoNaoUtilizacao",
			"tblIdentificacaoAlunoNaoUtilizaBike",
			"tblCabecalhoAlunoNaoUtilizaBike",
			
			//pos aluno
			"tblPercepcaoPosAlunoAtividade",
			"tblPercepcaoPosAlunoSujou",
			"tblPercepcaoPosAlunoEmpura",
			"tblPercepcaoPosAluno",
			"tblIdentificacaoPosAluno",
			
			//responsavel
			"tblInformacoesBicicleta",
			"tblCabecalhoResponsavel",
			
			//Tabelas comuns
			"tblEscola",
			"tblMunicipio",
			"tblTipoAtividade",
			"tblTipoAcidenteEscola",
			"tblTipoAcompanhanteEscola",
			"tblTipoBicicleta",
			"tblTipoCalcado",
			"tblTipoConsertaBicicleta",
			"tblTipoCuidadoBicicleta",
			"tblTipoEquipamentoProtecao",
			"tblTipoEscolaridade",
			"tblTipoLocalEstacionamento",
			"tblTipoMotivoUtilizacao",
			"tblTipoObstaculoTransito",
			"tblTipoOutroTransporte",
			"tblTipoProtecao",
			"tblTipoEmpurra",
			"tblTipoSujou"
		};
		
		for(String tabela : tabelas){
			localEm.createNativeQuery("delete from " + tabela).executeUpdate();
			serverEm.createNativeQuery("delete from " + tabela).executeUpdate();
		}
	}
	
	private void insertDefaultData(){
		String[] inserts = new String[]{
				"insert into tblMunicipio values (1, 'Brasília', 'DF');",
				"insert into tblEscola values (1,'EMEF AURELIO BUARQUE',1);",
				"insert into tblTipoAtividade values (1, 'Atividade escolar extraclasse');",
				"insert into tblTipoAcidenteEscola values (1, 'Atropelamento');",
				"insert into tblTipoAcompanhanteEscola values (1, 'colegas da escola');",
				"insert into tblTipoBicicleta values (1, 'marchas');",
				"insert into tblTipoCalcado values (1, 'nenhum');",
				"insert into tblTipoConsertaBicicleta values (1, 'Amigo');",
				"insert into tblTipoCuidadoBicicleta values (1, 'Calibra os pneus');",
				"insert into tblTipoEquipamentoProtecao values (1, 'capacete');",
				"insert into tblTipoEscolaridade values (1, 'Superior Completo');",
				"insert into tblTipoLocalEstacionamento values (1, 'Dentro de casa');",
				"insert into tblTipoMotivoUtilizacao values (1, 'É a única opção');",
				"insert into tblTipoObstaculoTransito values (1, 'chuva');",
				"insert into tblTipoOutroTransporte values (1, 'moto');",
				"insert into tblTipoProtecao values (1, 'capa de chuva');",
				"insert into tblTipoEmpurra values (1, 'Lamaçal');",
				"insert into tblTipoSujou values (1, 'pes');"
		};
	
		for (String insert : inserts){
			localEm.createNativeQuery(insert).executeUpdate();
			serverEm.createNativeQuery(insert).executeUpdate();
		}
	}

}
