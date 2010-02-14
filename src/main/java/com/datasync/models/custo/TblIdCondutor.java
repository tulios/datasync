package com.datasync.models.custo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblIdCondutor")
@SuppressWarnings("serial")
public class TblIdCondutor extends IndexableEntity {

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
	@Column(name = "NumeroEmbarcacao")
	private String numeroEmbarcacao;
	@Column(name = "Habilitacao")
	private String habilitacao;
	@Column(name = "Categoria")
	private String categoria;
	@Column(name = "TempoExperiencia")
	private String tempoExperiencia;
	@Column(name = "Salario")
	private String salario;
	@Column(name = "CondutorReserva", length = 3)
	private String condutorReserva;

	public TblIdCondutor(){
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

	public String getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getNumeroEmbarcacao() {
		return numeroEmbarcacao;
	}

	public void setNumeroEmbarcacao(String numeroEmbarcacao) {
		this.numeroEmbarcacao = numeroEmbarcacao;
	}

	public String getHabilitacao() {
		return habilitacao;
	}

	public void setHabilitacao(String habilitacao) {
		this.habilitacao = habilitacao;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
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

	public String getCondutorReserva() {
		return condutorReserva;
	}

	public void setCondutorReserva(String condutorReserva) {
		this.condutorReserva = condutorReserva;
	}

}
