package com.datasync.models.barco;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorGuardaBarco")
@SuppressWarnings("serial")
public class TblInformacaoCondutorGuardaBarco extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoGuardaBarco")
	private int idTipoGuardaBarco;
	@Column(name = "OndeOutro")
	private String ondeOutro;

	public TblInformacaoCondutorGuardaBarco() {
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoGuardaBarco();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoGuardaBarco";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoGuardaBarco() {
		return idTipoGuardaBarco;
	}

	public void setIdTipoGuardaBarco(int idTipoGuardaBarco) {
		this.idTipoGuardaBarco = idTipoGuardaBarco;
	}

	public String getOndeOutro() {
		return ondeOutro;
	}

	public void setOndeOutro(String ondeOutro) {
		this.ondeOutro = ondeOutro;
	}
    
}
