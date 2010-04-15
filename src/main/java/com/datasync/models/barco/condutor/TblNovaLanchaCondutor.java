package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblNovaLanchaCondutor")
@SuppressWarnings("serial")
public class TblNovaLanchaCondutor extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "BarcoMelhorDesempenho")
	private int barcoMelhorDesempenho;
	@Column(name = "PorqueBarcoMelhorDesempenho")
	private String porqueBarcoMelhorDesempenho;
	@Column(name = "UsariaLancha")
	private String usariaLancha;
	@Column(name = "PorqueUsariaLancha")
	private String porqueUsariaLancha;
	@Column(name = "Seguranca")
	private int seguranca;
	@Column(name = "Tamanho")
	private int tamanho;
	@Column(name = "CapacidadePassageiro")
	private int capacidadePasssageiro;
	@Column(name = "PotenciaMotor")
	private int potenciaMotor;
	@Column(name = "Estabilidade")
	private int estabilidade;
	@Column(name = "Aparencia")
	private int aparencia;
	@Column(name = "Protecao")
	private int protecao;
	@Column(name = "TempoDeslocamento")
	private int tempoDeslocamento;
	@Column(name = "Frenagem")
	private int frenagem;
	@Column(name = "PorqueFrenagem")
	private String porqueFrenagem;
	@Column(name = "Reverso")
	private int reverso;
	@Column(name = "PorqueReverso")
	private String porqueReverso;
	@Column(name = "ComandoFrente")
	private int comandoFrente;
	@Column(name = "PorqueComandoFrente")
	private String porqueComandoFrente;
	@Column(name = "MotorPopa")
	private int motorPopa;
	@Column(name = "PorqueMotorPopa")
	private String porqueMotorPopa;
	@Column(name = "Vibracao")
	private int vibracao;
	@Column(name = "TempoAtracagem")
	private int tempoAtracagem;
	@Column(name = "UtilizariaLanchaMEC")
	private String utilizariaLanchaMEC;
	@Column(name = "PorqueUtilizariaLanchaMEC")
	private String porqueUtilizariaLanchaMEC;
	@Column(name = "TrechoMaiorDificuldade")
	private String trechoMaiorDificuldade;
	@Column(name = "PorqueTrechoMaiorDificuldade")
	private String porqueTrechoMaiorDificuldade;
	@Column(name = "ContratadoBarco")
	private String contratadoBarco;
	@Column(name = "PorqueContratadoBarco")
	private String porqueContratadoBarco;
	@Column(name = "ManutencaoNecessaria")
	private String manutencaoNecessaria;
	@Column(name = "PorqueManutencaoNecessaria")
	private String porqueManutencaoNecessaria;
	@Column(name = "LanchaSegura")
	private String lanchaSegura;
	@Column(name = "PorqueLanchaSegura")
	private String porqueLanchaSegura;
	@Column(name = "QualSolucao")
	private String qualSolucao;
	@Column(name = "Observacao")
	private String observacao;
	
	public TblNovaLanchaCondutor(){
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}

	@Override
	public String getIndexId() {
		return getIdFormulario();
	}

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getBarcoMelhorDesempenho() {
		return barcoMelhorDesempenho;
	}

	public void setBarcoMelhorDesempenho(int barcoMelhorDesempenho) {
		this.barcoMelhorDesempenho = barcoMelhorDesempenho;
	}

	public String getPorqueBarcoMelhorDesempenho() {
		return porqueBarcoMelhorDesempenho;
	}

	public void setPorqueBarcoMelhorDesempenho(String porqueBarcoMelhorDesempenho) {
		this.porqueBarcoMelhorDesempenho = porqueBarcoMelhorDesempenho;
	}

	public String getUsariaLancha() {
		return usariaLancha;
	}

	public void setUsariaLancha(String usariaLancha) {
		this.usariaLancha = usariaLancha;
	}

	public String getPorqueUsariaLancha() {
		return porqueUsariaLancha;
	}

	public void setPorqueUsariaLancha(String porqueUsariaLancha) {
		this.porqueUsariaLancha = porqueUsariaLancha;
	}

	public int getSeguranca() {
		return seguranca;
	}

	public void setSeguranca(int seguranca) {
		this.seguranca = seguranca;
	}

	public int getTamanho() {
		return tamanho;
	}

	public void setTamanho(int tamanho) {
		this.tamanho = tamanho;
	}

	public int getCapacidadePasssageiro() {
		return capacidadePasssageiro;
	}

	public void setCapacidadePasssageiro(int capacidadePasssageiro) {
		this.capacidadePasssageiro = capacidadePasssageiro;
	}

	public int getPotenciaMotor() {
		return potenciaMotor;
	}

	public void setPotenciaMotor(int potenciaMotor) {
		this.potenciaMotor = potenciaMotor;
	}

	public int getEstabilidade() {
		return estabilidade;
	}

	public void setEstabilidade(int estabilidade) {
		this.estabilidade = estabilidade;
	}

	public int getAparencia() {
		return aparencia;
	}

	public void setAparencia(int aparencia) {
		this.aparencia = aparencia;
	}

	public int getProtecao() {
		return protecao;
	}

	public void setProtecao(int protecao) {
		this.protecao = protecao;
	}

	public int getTempoDeslocamento() {
		return tempoDeslocamento;
	}

	public void setTempoDeslocamento(int tempoDeslocamento) {
		this.tempoDeslocamento = tempoDeslocamento;
	}

	public int getFrenagem() {
		return frenagem;
	}

	public void setFrenagem(int frenagem) {
		this.frenagem = frenagem;
	}

	public String getPorqueFrenagem() {
		return porqueFrenagem;
	}

	public void setPorqueFrenagem(String porqueFrenagem) {
		this.porqueFrenagem = porqueFrenagem;
	}

	public int getReverso() {
		return reverso;
	}

	public void setReverso(int reverso) {
		this.reverso = reverso;
	}

	public String getPorqueReverso() {
		return porqueReverso;
	}

	public void setPorqueReverso(String porqueReverso) {
		this.porqueReverso = porqueReverso;
	}

	public int getComandoFrente() {
		return comandoFrente;
	}

	public void setComandoFrente(int comandoFrente) {
		this.comandoFrente = comandoFrente;
	}

	public String getPorqueComandoFrente() {
		return porqueComandoFrente;
	}

	public void setPorqueComandoFrente(String porqueComandoFrente) {
		this.porqueComandoFrente = porqueComandoFrente;
	}

	public int getMotorPopa() {
		return motorPopa;
	}

	public void setMotorPopa(int motorPopa) {
		this.motorPopa = motorPopa;
	}

	public String getPorqueMotorPopa() {
		return porqueMotorPopa;
	}

	public void setPorqueMotorPopa(String porqueMotorPopa) {
		this.porqueMotorPopa = porqueMotorPopa;
	}

	public int getVibracao() {
		return vibracao;
	}

	public void setVibracao(int vibracao) {
		this.vibracao = vibracao;
	}

	public int getTempoAtracagem() {
		return tempoAtracagem;
	}

	public void setTempoAtracagem(int tempoAtracagem) {
		this.tempoAtracagem = tempoAtracagem;
	}

	public String getUtilizariaLanchaMEC() {
		return utilizariaLanchaMEC;
	}

	public void setUtilizariaLanchaMEC(String utilizariaLanchaMEC) {
		this.utilizariaLanchaMEC = utilizariaLanchaMEC;
	}

	public String getPorqueUtilizariaLanchaMEC() {
		return porqueUtilizariaLanchaMEC;
	}

	public void setPorqueUtilizariaLanchaMEC(String porqueUtilizariaLanchaMEC) {
		this.porqueUtilizariaLanchaMEC = porqueUtilizariaLanchaMEC;
	}

	public String getTrechoMaiorDificuldade() {
		return trechoMaiorDificuldade;
	}

	public void setTrechoMaiorDificuldade(String trechoMaiorDificuldade) {
		this.trechoMaiorDificuldade = trechoMaiorDificuldade;
	}

	public String getPorqueTrechoMaiorDificuldade() {
		return porqueTrechoMaiorDificuldade;
	}

	public void setPorqueTrechoMaiorDificuldade(String porqueTrechoMaiorDificuldade) {
		this.porqueTrechoMaiorDificuldade = porqueTrechoMaiorDificuldade;
	}

	public String getContratadoBarco() {
		return contratadoBarco;
	}

	public void setContratadoBarco(String contratadoBarco) {
		this.contratadoBarco = contratadoBarco;
	}

	public String getPorqueContratadoBarco() {
		return porqueContratadoBarco;
	}

	public void setPorqueContratadoBarco(String porqueContratadoBarco) {
		this.porqueContratadoBarco = porqueContratadoBarco;
	}

	public String getManutencaoNecessaria() {
		return manutencaoNecessaria;
	}

	public void setManutencaoNecessaria(String manutencaoNecessaria) {
		this.manutencaoNecessaria = manutencaoNecessaria;
	}

	public String getPorqueManutencaoNecessaria() {
		return porqueManutencaoNecessaria;
	}

	public void setPorqueManutencaoNecessaria(String porqueManutencaoNecessaria) {
		this.porqueManutencaoNecessaria = porqueManutencaoNecessaria;
	}

	public String getLanchaSegura() {
		return lanchaSegura;
	}

	public void setLanchaSegura(String lanchaSegura) {
		this.lanchaSegura = lanchaSegura;
	}

	public String getPorqueLanchaSegura() {
		return porqueLanchaSegura;
	}

	public void setPorqueLanchaSegura(String porqueLanchaSegura) {
		this.porqueLanchaSegura = porqueLanchaSegura;
	}

	public String getQualSolucao() {
		return qualSolucao;
	}

	public void setQualSolucao(String qualSolucao) {
		this.qualSolucao = qualSolucao;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	
}

