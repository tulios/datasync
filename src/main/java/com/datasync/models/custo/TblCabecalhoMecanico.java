package com.datasync.models.custo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblCabecalhoMecanico")
@SuppressWarnings("serial")
public class TblCabecalhoMecanico extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "Municipio")
	private String municipio;
	@Column(name = "UF", length = 2)
	private String uf;
	@Column(name = "Pesquisador")
	private String pesquisador;
	@Column(name = "DataColeta")
	private String dataColeta;
	@Column(name = "Responsavel")
	private String responsavel;

	public TblCabecalhoMecanico(){
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

	public String getMunicipio() {
		return municipio;
	}

	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public String getPesquisador() {
		return pesquisador;
	}

	public void setPesquisador(String pesquisador) {
		this.pesquisador = pesquisador;
	}

	public String getDataColeta() {
		return dataColeta;
	}

	public void setDataColeta(String dataColeta) {
		this.dataColeta = dataColeta;
	}

	public String getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}


}
