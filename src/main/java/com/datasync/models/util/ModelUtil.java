package com.datasync.models.util;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.aluno.Tblcaracterizacaofamiliaaluno;
import com.datasync.models.barco.aluno.Tblcaracterizacaofamiliaalunoauxilio;
import com.datasync.models.barco.aluno.Tblcaracterizacaofamiliaalunotrabalho;
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
import com.datasync.models.barco.embarcacao.Tblcabecalhoembarcacao;
import com.datasync.models.barco.embarcacao.Tblcaracterizacaoembarcacao;
import com.datasync.models.barco.embarcacao.Tblcombustivelembarcacao;
import com.datasync.models.barco.embarcacao.Tblconservacaoembarcacao;
import com.datasync.models.barco.embarcacao.Tbldimensaoembarcacao;
import com.datasync.models.barco.embarcacao.Tblidentificacaoembarcacao;
import com.datasync.models.barco.embarcacao.Tblimagensembarcacao;
import com.datasync.models.barco.embarcacao.Tblmaterialassento;
import com.datasync.models.barco.embarcacao.Tblmaterialcasco;
import com.datasync.models.barco.embarcacao.Tblmaterialteto;
import com.datasync.models.barco.embarcacao.Tblpropriedadeembarcacao;
import com.datasync.models.barco.embarcacao.Tblsinalizacaonoturna;
import com.datasync.models.barco.embarcacao.Tbltripulacao;
import com.datasync.models.barco.fad.TblCabecalhoDesempenho;
import com.datasync.models.barco.fad.TblComportamentoEstabilidade;
import com.datasync.models.barco.fad.TblDadosEntrevista;
import com.datasync.models.barco.fad.TblDadosEscola;
import com.datasync.models.barco.fad.TblDadosOperacionaisFinal;
import com.datasync.models.barco.fad.TblDadosOperacionaisInicial;
import com.datasync.models.barco.fad.TblDadosParada;
import com.datasync.models.barco.fad.TblDadosParadaQuantidade;
import com.datasync.models.barco.fad.TblEventosExternos;
import com.datasync.models.barco.fad.Tblembarquealuno;
import com.datasync.models.barco.fad.Tbleventosinternos;
import com.datasync.models.barco.fad.Tblimagens;
import com.datasync.models.barco.fad.Tblobstaculos;
import com.datasync.models.barco.municipio.Tblcabecalhomunicipio;
import com.datasync.models.barco.municipio.Tblitensmunicipio;
import com.datasync.models.barco.municipio.Tbloutrositensmunicipio;
import com.datasync.models.barco.municipio.Tblpostoabastecimento1;
import com.datasync.models.barco.municipio.Tblpostoabastecimento2;
import com.datasync.models.barco.municipio.Tblpostoabastecimento3;
import com.datasync.models.barco.municipio.Tblservicosemergenciaismunicipio;
import com.datasync.models.barco.pais.TblCaracterizacaoFamiliaAlunoParentes;
import com.datasync.models.barco.pais.TblCaracterizacaoFamiliaParentes;
import com.datasync.models.barco.pais.Tblcabecalhopais;
import com.datasync.models.barco.pais.Tblcaracterizacaofamiliapais;
import com.datasync.models.barco.pais.Tblcaracterizacaofamiliapaisauxilio;
import com.datasync.models.barco.pais.Tblcaracterizacaofamiliapaistrabalho;
import com.datasync.models.barco.pais.Tblidentificacaopais;
import com.datasync.models.barco.pais.Tblinformacaopais;
import com.datasync.models.barco.pais.Tblinformacaopaisalunonaoescola;
import com.datasync.models.barco.pais.Tblinformacaopaisbarcoatrasa;
import com.datasync.models.barco.pais.Tblinformacaopaisdonobarco;
import com.datasync.models.barco.pais.Tblinformacaopaisepocapior;
import com.datasync.models.barco.pais.Tblinformacaopaisescolhebarco;
import com.datasync.models.barco.pais.Tblinformacaopaisoutrotransporte;
import com.datasync.models.barco.pais.Tblinformacaopaisprovidencia;
import com.datasync.models.barco.pais.Tblinformacaopaissugestao;
import com.datasync.models.barco.pais.Tblinformacaopaistransportaoutro;
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
import com.datasync.models.bicicleta.aluno.Tblacidenteescola;
import com.datasync.models.bicicleta.aluno.Tblacompanhanteescola;
import com.datasync.models.bicicleta.aluno.Tblatividade;
import com.datasync.models.bicicleta.aluno.Tblcalcado;
import com.datasync.models.bicicleta.aluno.Tblconsertabicicleta;
import com.datasync.models.bicicleta.aluno.Tblcuidadobicicleta;
import com.datasync.models.bicicleta.aluno.Tbldefeitobicicleta;
import com.datasync.models.bicicleta.aluno.Tblequipamentoprotecao;
import com.datasync.models.bicicleta.aluno.Tblinformacaobicicleta;
import com.datasync.models.bicicleta.aluno.Tbllocalestacionamentocasa;
import com.datasync.models.bicicleta.aluno.Tbllocalestacionamentoembarcacao;
import com.datasync.models.bicicleta.aluno.Tbllocalestacionamentoescola;
import com.datasync.models.bicicleta.aluno.Tblmelhoria;
import com.datasync.models.bicicleta.aluno.Tblmotivoutilizacao;
import com.datasync.models.bicicleta.aluno.Tblobstaculotransito;
import com.datasync.models.bicicleta.aluno.Tbloutrotransporte;
import com.datasync.models.bicicleta.aluno.Tblpercepcaoalunobicicleta;
import com.datasync.models.bicicleta.aluno.Tblprotecaochuva;
import com.datasync.models.bicicleta.aluno.Tblprotecaosol;
import com.datasync.models.bicicleta.alunoSemBike.Tblcabecalhoalunonaoutilizabike;
import com.datasync.models.bicicleta.alunoSemBike.Tblidentificacaoalunonaoutilizabike;
import com.datasync.models.bicicleta.alunoSemBike.Tblinformacaonaobicicleta;
import com.datasync.models.bicicleta.alunoSemBike.Tblmotivonaoutilizacao;
import com.datasync.models.bicicleta.alunoSemBike.Tblobstaculotransitonaobicicleta;
import com.datasync.models.bicicleta.alunoSemBike.Tblprotecaochuvanaobicicleta;
import com.datasync.models.bicicleta.alunoSemBike.Tblprotecaosolnaobicicleta;
import com.datasync.models.bicicleta.alunoSemBike.Tbltransporteescolar;
import com.datasync.models.bicicleta.alunoSemBike.Tblvaiescola;
import com.datasync.models.bicicleta.diretor.Tblidentificacaotransporte;
import com.datasync.models.bicicleta.posAluno.Tblidentificacaoposaluno;
import com.datasync.models.bicicleta.posAluno.Tblpercepcaoposaluno;
import com.datasync.models.bicicleta.posAluno.Tblpercepcaoposalunoatividade;
import com.datasync.models.bicicleta.posAluno.Tblpercepcaoposalunoempura;
import com.datasync.models.bicicleta.posAluno.Tblpercepcaoposalunosujou;
import com.datasync.models.bicicleta.responsavel.Tblcabecalhoresponsavel;
import com.datasync.models.bicicleta.responsavel.Tbldeslocamento;
import com.datasync.models.bicicleta.responsavel.Tblidentificacaoresponsavel;
import com.datasync.models.bicicleta.responsavel.Tblinformacoesbicicleta;
import com.datasync.models.bicicleta.responsavel.Tblprotecaocontrachuva;
import com.datasync.models.bicicleta.responsavel.Tblresponsavelproblemastransito;
import com.datasync.models.bicicleta.responsavel.Tblresponsavelproblemastransitoperspectiva;
import com.datasync.models.custo.TblCabecalhoCondutor;
import com.datasync.models.custo.TblCabecalhoEmbarcacao;
import com.datasync.models.custo.TblCabecalhoMecanico;
import com.datasync.models.custo.TblCabecalhoMonitor;
import com.datasync.models.custo.TblIdCondutor;
import com.datasync.models.custo.TblIdEmbarcacao;
import com.datasync.models.custo.TblIdMecanico;
import com.datasync.models.custo.TblIdMonitor;
import com.datasync.models.custo.embarcado.Tblcabecalhoembarcada;
import com.datasync.models.custo.embarcado.Tblidentificacaomonitor;
import com.datasync.models.custo.embarcado.Tblidentificacaorota;
import com.datasync.models.custo.embarcado.Tblidentificacaoveiculo;
import com.datasync.models.custo.embarcado.Tblsobedesce;

public class ModelUtil {

	private static Logger log = Logger.getLogger(ModelUtil.class);
	
	public static final String CUSTO = "custo";
	public static final String BARCO = "barco";
	public static final String BICICLETA = "bicicleta";
											
	public static List<IndexableEntity> getIndexables(String packageName){
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();

		if (packageName.equalsIgnoreCase(CUSTO)){
			log.debug("Custo selecionado");
			registerCusto(indexables);
			
		} else if (packageName.equalsIgnoreCase(BARCO)){
			log.debug("barco selecionado");
			registerBarco(indexables);
			
		} else if (packageName.equalsIgnoreCase(BICICLETA)) {
			log.debug("Bicicleta selecionada");
			registerBicicleta(indexables);
		}
		
		log.debug(indexables.size() + " indexables registrados!");
		return indexables;
	}

	private static void registerBicicleta(List<IndexableEntity> indexables) {
		//aluno
		indexables.add(new com.datasync.models.bicicleta.aluno.Tblcabecalhoaluno());
		indexables.add(new Tblatividade());
		indexables.add(new Tblacidenteescola());
		indexables.add(new Tblacompanhanteescola());
		indexables.add(new Tbldefeitobicicleta());
		indexables.add(new Tblmelhoria());
		indexables.add(new Tblcalcado());
		indexables.add(new Tblconsertabicicleta());
		indexables.add(new Tblcuidadobicicleta());
		indexables.add(new Tblequipamentoprotecao());
		indexables.add(new com.datasync.models.bicicleta.aluno.Tblidentificacaoaluno());
		indexables.add(new Tbllocalestacionamentocasa());
		indexables.add(new Tbllocalestacionamentoembarcacao());
		indexables.add(new Tbllocalestacionamentoescola());
		indexables.add(new Tblmotivoutilizacao());
		indexables.add(new Tblobstaculotransito());
		indexables.add(new Tbloutrotransporte());
		indexables.add(new Tblprotecaochuva());
		indexables.add(new Tblprotecaosol());
		indexables.add(new Tblinformacaobicicleta());
		indexables.add(new Tblpercepcaoalunobicicleta());
		
		//aluno sem bike
		indexables.add(new Tblcabecalhoalunonaoutilizabike());
		indexables.add(new Tblidentificacaoalunonaoutilizabike());
		indexables.add(new Tblmotivonaoutilizacao());
		indexables.add(new Tblobstaculotransitonaobicicleta());
		indexables.add(new Tbltransporteescolar());
		indexables.add(new Tblvaiescola());
		indexables.add(new Tblprotecaosolnaobicicleta());
		indexables.add(new Tblprotecaochuvanaobicicleta());
		indexables.add(new Tblinformacaonaobicicleta());
		
		//pos aluno
		indexables.add(new Tblidentificacaoposaluno());
		indexables.add(new Tblpercepcaoposaluno());
		indexables.add(new Tblpercepcaoposalunoempura());
		indexables.add(new Tblpercepcaoposalunosujou());
		indexables.add(new Tblpercepcaoposalunoatividade());
		
		//responsavel
		indexables.add(new Tblcabecalhoresponsavel());
		indexables.add(new Tblinformacoesbicicleta());
		indexables.add(new Tblidentificacaoresponsavel());
		indexables.add(new Tblprotecaocontrachuva());
		indexables.add(new Tbldeslocamento());
		indexables.add(new Tblresponsavelproblemastransitoperspectiva());
		indexables.add(new Tblresponsavelproblemastransito());
		
		//diretor
		indexables.add(new com.datasync.models.bicicleta.diretor.Tblcabecalhodiretor());
		indexables.add(new Tblidentificacaotransporte());
	}
	
	private static void registerBarco(List<IndexableEntity> indexables) {
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
		indexables.add(new com.datasync.models.barco.aluno.Tblcabecalhoaluno());
		indexables.add(new Tblcaracterizacaofamiliaaluno());
		indexables.add(new Tblcaracterizacaofamiliaalunoauxilio());
		indexables.add(new Tblcaracterizacaofamiliaalunotrabalho());
		indexables.add(new com.datasync.models.barco.aluno.Tblidentificacaoaluno());
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
		indexables.add(new com.datasync.models.barco.diretor.Tblcabecalhodiretor());
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
		
		//Pais
		indexables.add(new Tblcabecalhopais());
		indexables.add(new Tblcaracterizacaofamiliapais());
		indexables.add(new Tblcaracterizacaofamiliapaisauxilio());
		indexables.add(new Tblcaracterizacaofamiliapaistrabalho());
		indexables.add(new Tblidentificacaopais());
		indexables.add(new Tblinformacaopais());
		indexables.add(new Tblinformacaopaisalunonaoescola());
		indexables.add(new Tblinformacaopaisbarcoatrasa());
		indexables.add(new Tblinformacaopaisdonobarco());
		indexables.add(new Tblinformacaopaisepocapior());
		indexables.add(new Tblinformacaopaisescolhebarco());
		indexables.add(new Tblinformacaopaisoutrotransporte());
		indexables.add(new Tblinformacaopaisprovidencia());
		indexables.add(new Tblinformacaopaissugestao());
		indexables.add(new Tblinformacaopaistransportaoutro());
		indexables.add(new TblCaracterizacaoFamiliaParentes());//adicionado 15/04/2010
		indexables.add(new TblCaracterizacaoFamiliaAlunoParentes());//adicionado 18/04/2010
		
		//Embarcacao
		indexables.add(new Tblcabecalhoembarcacao());
		indexables.add(new Tblcaracterizacaoembarcacao());
		indexables.add(new Tblcombustivelembarcacao());
		indexables.add(new Tblconservacaoembarcacao());
		indexables.add(new Tbldimensaoembarcacao());
		indexables.add(new Tblidentificacaoembarcacao());
		indexables.add(new Tblimagensembarcacao());
		indexables.add(new Tbltripulacao());
		indexables.add(new Tblmaterialassento());
		indexables.add(new Tblmaterialcasco());
		indexables.add(new Tblmaterialteto());
		indexables.add(new Tblpropriedadeembarcacao());
		indexables.add(new Tblsinalizacaonoturna());
		
		//Municipios
		indexables.add(new Tblcabecalhomunicipio());
		indexables.add(new Tblitensmunicipio());
		indexables.add(new Tbloutrositensmunicipio());
		indexables.add(new Tblpostoabastecimento1());
		indexables.add(new Tblpostoabastecimento2());
		indexables.add(new Tblpostoabastecimento3());
		indexables.add(new Tblservicosemergenciaismunicipio());
		
		//fad
		indexables.add(new TblCabecalhoDesempenho());
		indexables.add(new TblDadosParada());
		indexables.add(new TblDadosOperacionaisInicial());
		indexables.add(new TblEventosExternos());
		indexables.add(new TblComportamentoEstabilidade());
		indexables.add(new TblDadosOperacionaisFinal());
		indexables.add(new TblDadosEscola());
		indexables.add(new TblDadosParadaQuantidade());
		indexables.add(new TblDadosEntrevista());
		indexables.add(new Tblimagens());
		indexables.add(new Tbleventosinternos());
		indexables.add(new Tblobstaculos());
		indexables.add(new Tblembarquealuno());
		//indexables.add(new TblEscola());
	}

	private static void registerCusto(List<IndexableEntity> indexables) {
		//Custo
		indexables.add(new TblCabecalhoCondutor());
		indexables.add(new TblIdCondutor());
		indexables.add(new TblCabecalhoEmbarcacao());
		indexables.add(new TblIdEmbarcacao());
		indexables.add(new TblCabecalhoMecanico());
		indexables.add(new TblIdMecanico());
		indexables.add(new TblCabecalhoMonitor());
		indexables.add(new TblIdMonitor());
		
		//Embarcado
		indexables.add(new Tblcabecalhoembarcada());
		indexables.add(new Tblidentificacaomonitor());
		indexables.add(new Tblidentificacaorota());
		indexables.add(new Tblidentificacaoveiculo());
		indexables.add(new Tblsobedesce());
	}
	
}
