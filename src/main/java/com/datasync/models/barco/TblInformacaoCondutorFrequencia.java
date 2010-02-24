package com.datasync.models.barco;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoCondutorFrequencia")
@SuppressWarnings("serial")
public class TblInformacaoCondutorFrequencia extends IndexableEntity {
	
	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoFrequencia")
	private int idTipoFrequencia;
	@Column(name = "QuandoOutro")
	private String quandoOutro;

	public TblInformacaoCondutorFrequencia(){
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

	public int getIdTipoFrequencia() {
		return idTipoFrequencia;
	}

	public void setIdTipoFrequencia(int idTipoFrequencia) {
		this.idTipoFrequencia = idTipoFrequencia;
	}

	public String getQuandoOutro() {
		return quandoOutro;
	}

	public void setQuandoOutro(String quandoOutro) {
		this.quandoOutro = quandoOutro;
	}
	
}
