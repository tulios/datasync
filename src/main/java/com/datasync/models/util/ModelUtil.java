package com.datasync.models.util;

import java.util.ArrayList;
import java.util.List;

import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.aluno.Tblcabecalhoaluno;
import com.datasync.models.barco.aluno.Tblcaracterizacaofamiliaaluno;
import com.datasync.models.barco.aluno.Tblcaracterizacaofamiliaalunoauxilio;
import com.datasync.models.barco.aluno.Tblcaracterizacaofamiliaalunotrabalho;
import com.datasync.models.barco.aluno.Tblidentificacaoaluno;
import com.datasync.models.barco.aluno.Tblpercepcaoalunomelhoria;
import com.datasync.models.barco.aluno.Tblpercepcaoalunorota;
import com.datasync.models.barco.aluno.Tblpercepcaoalunorotaajudabarqueiro;
import com.datasync.models.barco.aluno.Tblpercepcaoalunorotaepocapior;
import com.datasync.models.barco.aluno.Tblpercepcaoalunorotafazcaminhoescola;
import com.datasync.models.barco.aluno.Tblpercepcaoalunorotafazoutracoisa;
import com.datasync.models.barco.aluno.Tblpostestealuno;
import com.datasync.models.barco.aluno.Tblpostesteavaliacaolancha;
import com.datasync.models.barco.aluno.Tblpostestemolhaaluno;
import com.datasync.models.barco.condutor.TblBarcoCabecalhoCondutor;
import com.datasync.models.barco.condutor.TblCaracterizacaoCondutor;
import com.datasync.models.barco.condutor.TblIdentificacaoCondutor;
import com.datasync.models.barco.condutor.TblInformacaoCondutor;
import com.datasync.models.barco.condutor.TblInformacaoCondutorAvisoAluno;
import com.datasync.models.barco.condutor.TblInformacaoCondutorContrato;
import com.datasync.models.barco.condutor.TblInformacaoCondutorDonoBarco;
import com.datasync.models.barco.condutor.TblInformacaoCondutorEscolheBarco;
import com.datasync.models.barco.condutor.TblInformacaoCondutorEstrago;
import com.datasync.models.barco.condutor.TblInformacaoCondutorFrequencia;
import com.datasync.models.barco.condutor.TblInformacaoCondutorGuardaBarco;
import com.datasync.models.barco.condutor.TblInformacaoCondutorMotivoQuebra;
import com.datasync.models.barco.condutor.TblInformacaoCondutorOutroAcompanhante;
import com.datasync.models.barco.condutor.TblInformacaoCondutorPagaManutencao;
import com.datasync.models.barco.condutor.TblInformacaoCondutorPercursoTempo;
import com.datasync.models.barco.condutor.TblInformacaoCondutorQuandoManutencao;
import com.datasync.models.barco.condutor.TblInformacaoCondutorRealizaManutencao;
import com.datasync.models.barco.condutor.TblInformacaoCondutorRealizaReparo;
import com.datasync.models.barco.condutor.TblInformacaoCondutorServico;
import com.datasync.models.barco.condutor.TblInformacaoCondutorTrabalhaRota;
import com.datasync.models.barco.condutor.TblInformacaoCondutorTransportaOutro;
import com.datasync.models.barco.condutor.TblInformacaoCondutorTrocaBarco;
import com.datasync.models.barco.condutor.TblNovaLanchaCondutor;
import com.datasync.models.barco.diretor.Tblcabecalhodiretor;
import com.datasync.models.barco.diretor.Tblcaracterizacaodiretor;
import com.datasync.models.barco.diretor.Tblcaracterizacaodiretoroutraexperiencia;
import com.datasync.models.barco.diretor.Tblidentificacaodiretor;
import com.datasync.models.barco.diretor.Tblidentificacaoescola;
import com.datasync.models.barco.diretor.Tblidentificacaoescolaatendeturno;
import com.datasync.models.barco.diretor.Tblidentificacaoescolaplanejamentorota;
import com.datasync.models.barco.diretor.Tblinformacaoescolaresponsavelbarco;
import com.datasync.models.barco.diretor.Tblpercepcaodiretoralunoescola;
import com.datasync.models.barco.diretor.Tblpercepcaodiretoralunonaoescola;
import com.datasync.models.barco.diretor.Tblpercepcaodiretoralunoreclama;
import com.datasync.models.barco.diretor.Tblpercepcaodiretorrendimentoacademico;
import com.datasync.models.barco.prefeito.Tblcabecalhoprefeito;
import com.datasync.models.barco.prefeito.Tblcaracterizacaoprefeito;
import com.datasync.models.barco.prefeito.Tblidentificacaoprefeito;
import com.datasync.models.barco.prefeito.Tblinformacaoprefeito;
import com.datasync.models.barco.prefeito.Tblinformacaoprefeitoacordo;
import com.datasync.models.barco.prefeito.Tblinformacaoprefeitopublicoalvo;
import com.datasync.models.barco.prefeito.Tblinformacaoprefeitoreage;
import com.datasync.models.barco.prefeito.Tblinformacaoprefeitoresponsaveltransporescolar;
import com.datasync.models.barco.professor.Tblcabecalhoprofessor;
import com.datasync.models.barco.professor.Tblcaracterizacaoprofessor;
import com.datasync.models.barco.professor.Tblidentificacaoprofessor;
import com.datasync.models.barco.professor.Tblpercepcaoprofessoralunoescola;
import com.datasync.models.barco.professor.Tblpercepcaoprofessoralunonaoescola;
import com.datasync.models.barco.professor.Tblpercepcaoprofessoralunoreclama;
import com.datasync.models.barco.professor.Tblpercepcaoprofessoravisoaluno;
import com.datasync.models.barco.professor.Tblpercepcaoprofessorprovidencia;
import com.datasync.models.barco.secretario.Tblcabecalhosecretario;
import com.datasync.models.barco.secretario.Tblcaracterizacaosecretario;
import com.datasync.models.barco.secretario.Tblidentificacaosecretario;
import com.datasync.models.barco.secretario.Tblinformacaosecretarioacordo;
import com.datasync.models.barco.secretario.Tblinformacaosecretariocriterio;
import com.datasync.models.barco.secretario.Tblinformacaosecretariooutrotransporte;
import com.datasync.models.barco.secretario.Tblinformacaosecretarioreage;
import com.datasync.models.barco.secretario.Tblpercepcaosecretariodificuldade;
import com.datasync.models.barco.secretario.Tblpercepcaosecretariomotivobarqueiroterceirizado;
import com.datasync.models.custo.TblCabecalhoCondutor;
import com.datasync.models.custo.TblCabecalhoEmbarcacao;
import com.datasync.models.custo.TblCabecalhoMecanico;
import com.datasync.models.custo.TblCabecalhoMonitor;
import com.datasync.models.custo.TblIdCondutor;
import com.datasync.models.custo.TblIdEmbarcacao;
import com.datasync.models.custo.TblIdMecanico;
import com.datasync.models.custo.TblIdMonitor;

public class ModelUtil {

	public static final String CUSTO = "custo";
	public static final String BARCO = "barco";
	
	public static List<IndexableEntity> getIndexables(String packageName){
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();

		if (packageName.equalsIgnoreCase(CUSTO)){
			indexables.add(new TblCabecalhoCondutor());
			indexables.add(new TblIdCondutor());
			
			indexables.add(new TblCabecalhoEmbarcacao());
			indexables.add(new TblIdEmbarcacao());
			
			indexables.add(new TblCabecalhoMecanico());
			indexables.add(new TblIdMecanico());
			
			indexables.add(new TblCabecalhoMonitor());
			indexables.add(new TblIdMonitor());
			return indexables;
			
		}else if (packageName.equalsIgnoreCase(BARCO)){
			//Condutor
			indexables.add(new TblBarcoCabecalhoCondutor());
			indexables.add(new TblCaracterizacaoCondutor());
			indexables.add(new TblIdentificacaoCondutor());
			indexables.add(new TblInformacaoCondutor());
			indexables.add(new TblInformacaoCondutorAvisoAluno());
			indexables.add(new TblInformacaoCondutorContrato());
			indexables.add(new TblInformacaoCondutorDonoBarco());
			indexables.add(new TblInformacaoCondutorEscolheBarco());
			indexables.add(new TblInformacaoCondutorEstrago());
			indexables.add(new TblInformacaoCondutorFrequencia());
			indexables.add(new TblInformacaoCondutorGuardaBarco());
			indexables.add(new TblInformacaoCondutorMotivoQuebra());
			indexables.add(new TblInformacaoCondutorOutroAcompanhante());
			indexables.add(new TblInformacaoCondutorPagaManutencao());
			indexables.add(new TblInformacaoCondutorPercursoTempo());
			indexables.add(new TblInformacaoCondutorQuandoManutencao());
			indexables.add(new TblInformacaoCondutorRealizaManutencao());
			indexables.add(new TblInformacaoCondutorRealizaReparo());
			indexables.add(new TblInformacaoCondutorServico());
			indexables.add(new TblInformacaoCondutorTrabalhaRota());
			indexables.add(new TblInformacaoCondutorTransportaOutro());
			indexables.add(new TblInformacaoCondutorTrocaBarco());
			indexables.add(new TblNovaLanchaCondutor());
			
			//Aluno
			indexables.add(new Tblcabecalhoaluno());
			indexables.add(new Tblcaracterizacaofamiliaaluno());
			indexables.add(new Tblcaracterizacaofamiliaalunoauxilio());
			indexables.add(new Tblcaracterizacaofamiliaalunotrabalho());
			indexables.add(new Tblidentificacaoaluno());
			indexables.add(new Tblpercepcaoalunomelhoria());
			indexables.add(new Tblpercepcaoalunorota());
			indexables.add(new Tblpercepcaoalunorotaajudabarqueiro());
			indexables.add(new Tblpercepcaoalunorotaepocapior());
			indexables.add(new Tblpercepcaoalunorotafazcaminhoescola());
			indexables.add(new Tblpercepcaoalunorotafazoutracoisa());
			indexables.add(new Tblpostestealuno());
			indexables.add(new Tblpostesteavaliacaolancha());
			indexables.add(new Tblpostestemolhaaluno());
			
			//Professor
			indexables.add(new Tblcabecalhoprofessor());
			indexables.add(new Tblcaracterizacaoprofessor());
			indexables.add(new Tblidentificacaoprofessor());
			indexables.add(new Tblpercepcaoprofessoralunoescola());
			indexables.add(new Tblpercepcaoprofessoralunonaoescola());
			indexables.add(new Tblpercepcaoprofessoralunoreclama());
			indexables.add(new Tblpercepcaoprofessoravisoaluno());
			indexables.add(new Tblpercepcaoprofessorprovidencia());
			
			//Diretor
			indexables.add(new Tblcabecalhodiretor());
			indexables.add(new Tblcaracterizacaodiretor());
			indexables.add(new Tblcaracterizacaodiretoroutraexperiencia());
			indexables.add(new Tblidentificacaodiretor());
			indexables.add(new Tblidentificacaoescola());
			indexables.add(new Tblidentificacaoescolaatendeturno());
			indexables.add(new Tblidentificacaoescolaplanejamentorota());
			indexables.add(new Tblinformacaoescolaresponsavelbarco());
			indexables.add(new Tblpercepcaodiretoralunoescola());
			indexables.add(new Tblpercepcaodiretoralunonaoescola());
			indexables.add(new Tblpercepcaodiretoralunoreclama());
			indexables.add(new Tblpercepcaodiretorrendimentoacademico());
			
			//Prefeito
			indexables.add(new Tblcabecalhoprefeito());
			indexables.add(new Tblcaracterizacaoprefeito());
			indexables.add(new Tblidentificacaoprefeito());
			indexables.add(new Tblinformacaoprefeito());
			indexables.add(new Tblinformacaoprefeitoacordo());
			indexables.add(new Tblinformacaoprefeitopublicoalvo());
			indexables.add(new Tblinformacaoprefeitoreage());
			indexables.add(new Tblinformacaoprefeitoresponsaveltransporescolar());
			
			//Secretario
			indexables.add(new Tblcabecalhosecretario());
			indexables.add(new Tblcaracterizacaosecretario());
			indexables.add(new Tblidentificacaosecretario());
			indexables.add(new Tblinformacaosecretarioacordo());
			indexables.add(new Tblinformacaosecretariocriterio());
			indexables.add(new Tblinformacaosecretariooutrotransporte());
			indexables.add(new Tblinformacaosecretarioreage());
			indexables.add(new Tblpercepcaosecretariodificuldade());
			indexables.add(new Tblpercepcaosecretariomotivobarqueiroterceirizado());
		}
		
		return indexables;
	}
	
}
