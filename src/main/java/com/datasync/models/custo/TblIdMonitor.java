package com.datasync.models.custo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name="TblIdMonitor")
@SuppressWarnings("serial")
public class TblIdMonitor extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "Nome")
	private String nome;
	@Column(name = "Identidade")
	private String identidade;
	@Column(name = "IdentidadeUF", length = 2)
	private String identidadeUF;
	@Column(name = "DataNasc")
	private String dataNasc;
	@Column(name = "Escolaridade")
	private String escolaridade;
	@Column(name = "EstadoCivil")
	private String estadoCivil;
	@Column(name = "IdEmbarcacao")
	private String idEmbarcacao;
	@Column(name = "TempoExperiencia")
	private String tempoExperiencia;
	@Column(name = "Salario")
	private String salario;
	@Column(name = "Observacao")
	private String observacao;
	
	public TblIdMonitor(){
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

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getIdentidade() {
		return identidade;
	}

	public void setIdentidade(String identidade) {
		this.identidade = identidade;
	}

	public String getIdentidadeUF() {
		return identidadeUF;
	}

	public void setIdentidadeUF(String identidadeUF) {
		this.identidadeUF = identidadeUF;
	}

	public String getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(String dataNasc) {
		this.dataNasc = dataNasc;
	}

	public String getEscolaridade() {
		return escolaridade;
	}

	public void setEscolaridade(String escolaridade) {
		this.escolaridade = escolaridade;
	}

	public String getTempoExperiencia() {
		return tempoExperiencia;
	}

	public void setTempoExperiencia(String tempoExperiencia) {
		this.tempoExperiencia = tempoExperiencia;
	}

	public String getSalario() {
		return salario;
	}

	public void setSalario(String salario) {
		this.salario = salario;
	}

	public String getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getIdEmbarcacao() {
		return idEmbarcacao;
	}

	public void setIdEmbarcacao(String idEmbarcacao) {
		this.idEmbarcacao = idEmbarcacao;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

}
