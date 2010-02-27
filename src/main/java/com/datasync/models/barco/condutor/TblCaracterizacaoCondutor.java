package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoCondutor")
@SuppressWarnings("serial")
public class TblCaracterizacaoCondutor extends IndexableEntity{

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "TempoExperienciaCondutorAnos")
	private int tempoExperienciaCondutorAnos;
	@Column(name = "TempoExperienciaCondutorMeses")
	private int tempoExperienciaCondutorMeses;
	@Column(name = "TempoAtuacaoAnos")
	private int tempoAtuacaoAnos;
	@Column(name = "TempoAtuacaoMeses")
	private int tempoAtuacaoMeses;
	@Column(name = "PossuiHabilitacao", length = 3)
	private String possuiHabilitacao;
	@Column(name = "TipoCategoria")
	private String tipoCategoria;
	@Column(name = "AnoRegistro")
	private int anoRegistro;
	@Column(name = "ParticipacaoCurso", length = 3)
	private String participacaoCurso;
	@Column(name = "PilotaBarcoMotorPopa", length = 3)
	private String pilotaBarcoMotorPopa;
	@Column(name = "QuantoHP")
	private int quantoHP;

	public TblCaracterizacaoCondutor(){
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

	public int getTempoExperienciaCondutorAnos() {
		return tempoExperienciaCondutorAnos;
	}

	public void setTempoExperienciaCondutorAnos(int tempoExperienciaCondutorAnos) {
		this.tempoExperienciaCondutorAnos = tempoExperienciaCondutorAnos;
	}

	public int getTempoExperienciaCondutorMeses() {
		return tempoExperienciaCondutorMeses;
	}

	public void setTempoExperienciaCondutorMeses(int tempoExperienciaCondutorMeses) {
		this.tempoExperienciaCondutorMeses = tempoExperienciaCondutorMeses;
	}

	public int getTempoAtuacaoAnos() {
		return tempoAtuacaoAnos;
	}

	public void setTempoAtuacaoAnos(int tempoAtuacaoAnos) {
		this.tempoAtuacaoAnos = tempoAtuacaoAnos;
	}

	public int getTempoAtuacaoMeses() {
		return tempoAtuacaoMeses;
	}

	public void setTempoAtuacaoMeses(int tempoAtuacaoMeses) {
		this.tempoAtuacaoMeses = tempoAtuacaoMeses;
	}

	public String getPossuiHabilitacao() {
		return possuiHabilitacao;
	}

	public void setPossuiHabilitacao(String possuiHabilitacao) {
		this.possuiHabilitacao = possuiHabilitacao;
	}

	public String getTipoCategoria() {
		return tipoCategoria;
	}

	public void setTipoCategoria(String tipoCategoria) {
		this.tipoCategoria = tipoCategoria;
	}

	public int getAnoRegistro() {
		return anoRegistro;
	}

	public void setAnoRegistro(int anoRegistro) {
		this.anoRegistro = anoRegistro;
	}

	public String getParticipacaoCurso() {
		return participacaoCurso;
	}

	public void setParticipacaoCurso(String participacaoCurso) {
		this.participacaoCurso = participacaoCurso;
	}

	public String getPilotaBarcoMotorPopa() {
		return pilotaBarcoMotorPopa;
	}

	public void setPilotaBarcoMotorPopa(String pilotaBarcoMotorPopa) {
		this.pilotaBarcoMotorPopa = pilotaBarcoMotorPopa;
	}

	public int getQuantoHP() {
		return quantoHP;
	}

	public void setQuantoHP(int quantoHP) {
		this.quantoHP = quantoHP;
	}
	
}
