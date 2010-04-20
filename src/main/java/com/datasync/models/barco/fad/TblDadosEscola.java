package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblDadosEscola")
@SuppressWarnings("serial")
public class TblDadosEscola extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoParada")
	private int idTipoParada;
	@Column(name = "CodigoParadaEscola")
	private String codigoParadaEscola;
	@Column(name = "CodigoINEP")
	private int codigoINEP;
	
	@Override
	public String getIdColumnName() {
		return "IdFormulario";
	}

	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoParada();
	}

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoParada() {
		return idTipoParada;
	}

	public void setIdTipoParada(int idTipoParada) {
		this.idTipoParada = idTipoParada;
	}

	public String getCodigoParadaEscola() {
		return codigoParadaEscola;
	}

	public void setCodigoParadaEscola(String codigoParadaEscola) {
		this.codigoParadaEscola = codigoParadaEscola;
	}

	public int getCodigoINEP() {
		return codigoINEP;
	}

	public void setCodigoINEP(int codigoINEP) {
		this.codigoINEP = codigoINEP;
	}
	
}
