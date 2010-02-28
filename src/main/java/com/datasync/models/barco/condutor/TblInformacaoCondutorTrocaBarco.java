package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorTrocaBarco")
@SuppressWarnings("serial")
public class TblInformacaoCondutorTrocaBarco extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoTrocaBarco")
	private int idTipoTrocaBarco;
	@Column(name = "RealizaTroca")
	private String realizaTroca;
	@Column(name = "QualOutro")
	private String qualOutro;
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoTrocaBarco();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoTrocaBarco";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoTrocaBarco() {
		return idTipoTrocaBarco;
	}

	public void setIdTipoTrocaBarco(int idTipoTrocaBarco) {
		this.idTipoTrocaBarco = idTipoTrocaBarco;
	}

	public String getRealizaTroca() {
		return realizaTroca;
	}

	public void setRealizaTroca(String realizaTroca) {
		this.realizaTroca = realizaTroca;
	}

	public String getQualOutro() {
		return qualOutro;
	}

	public void setQualOutro(String qualOutro) {
		this.qualOutro = qualOutro;
	}
    
}
