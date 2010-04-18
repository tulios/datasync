package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoFamiliaParentes")
@SuppressWarnings("serial")
public class TblCaracterizacaoFamiliaParentes extends IndexableEntity {

    @Id
    @Column(name = "IdFormulario")
	private String idFormulario;
    @Column(name = "IdTipoParente")
	private int idTipoParente;
    @Column(name = "QuaisParentes")
	private String quaisParentes;
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}

    @Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoParente();
	}
	
	@Override
	public boolean isCompoundKey() {
		return true;
	}
	
	@Override
	public String getCompoundIdColumnName() {
		return "idTipoParente";
	}
	
	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoParente() {
		return idTipoParente;
	}

	public void setIdTipoParente(int idTipoParente) {
		this.idTipoParente = idTipoParente;
	}

	public String getQuaisParentes() {
		return quaisParentes;
	}

	public void setQuaisParentes(String quaisParentes) {
		this.quaisParentes = quaisParentes;
	}
	
}
